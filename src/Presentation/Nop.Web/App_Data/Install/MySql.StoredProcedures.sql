CREATE DEFINER=`root`@`localhost` PROCEDURE `nop_splitstring_to_table`(
    in string VARCHAR(1000) CHARACTER SET utf8,
    in delim CHAR(1) CHARACTER SET utf8
)
BEGIN
    DROP TEMPORARY TABLE IF EXISTS nop_splitstring_to_table_TempTable;
    CREATE TEMPORARY TABLE nop_splitstring_to_table_TempTable
    (
        `data` varchar(256) CHARACTER SET utf8
    );
        
    set @start = 1;
    
    set @end = LOCATE(delim, string);
    
    WHILE @start < LENGTH(string) + 1 DO
        IF @end = 0 THEN
            SET @end = LENGTH(string) + 1;
        End IF;

        INSERT INTO nop_splitstring_to_table_TempTable (data) 
        VALUES(SUBSTRING(string, @start, @end - @start));
        SET @start = @end + 1;
        SET @end = LOCATE(delim, string, @start);
    END WHILE;
    
END;


CREATE PROCEDURE `nop_getnotnullnotempty`
(
    IN p1 LONGTEXT, 
    IN p2 LONGTEXT,
    OUT res LONGTEXT
)
BEGIN
    set res = p1;
    
    IF res IS NULL OR res = '' then
        set res = p2;
    END IF;
END;

CREATE PROCEDURE `nop_getprimarykey_indexname`
(
    IN table_name varchar(1000),
    OUT index_name varchar(1000)
)
BEGIN
    select CONSTRAINT_NAME into index_name from information_schema.table_constraints t
where t.TABLE_NAME = table_name AND CONSTRAINT_TYPE = 'PRIMARY KEY';
END;

CREATE PROCEDURE `ProductLoadAllPaged`(
	IN CategoryIds		LONGTEXT,	-- a list of category IDs (comma-separated list). e.g. 1,2,3
	IN ManufacturerId		int,
	IN StoreId			int,
	IN VendorId			int,
	IN WarehouseId		int,
	IN ProductTypeId		int, -- product type identifier, null - load all products
	IN VisibleIndividuallyOnly bool, 	-- 0 - load all products , 1 - "visible indivially" only
	IN MarkedAsNewOnly	bool, 	-- 0 - load all products , 1 - "marked as new" only
	IN ProductTagId		int,
	IN FeaturedProducts	bool,	-- 0 featured only , 1 not featured only, null - load all products
	IN PriceMin			decimal(18, 4),
	IN PriceMax			decimal(18, 4),
	IN Keywords			nvarchar(4000),
	IN SearchDescriptions bool, -- a value indicating whether to search by a specified "keyword" in product descriptions
	IN SearchSku			bool, -- a value indicating whether to search by a specified "keyword" in product SKU
	IN SearchProductTags  bool, -- a value indicating whether to search by a specified "keyword" in product tags
	IN UseFullTextSearch  bool,
	IN FullTextMode		int, -- 0 - using CONTAINS with <prefix_term>, 5 - using CONTAINS and OR with <prefix_term>, 10 - using CONTAINS and AND with <prefix_term>
	IN FilteredSpecs		longtext,	-- filter by specification attribute options (comma-separated list of IDs). e.g. 14,15,16
	IN LanguageId			int,
	IN OrderBy			int, -- 0 - position, 5 - Name: A to Z, 6 - Name: Z to A, 10 - Price: Low to High, 11 - Price: High to Low, 15 - creation date
	IN AllowedCustomerRoleIds	longtext,	-- a list of customer role IDs (comma-separated list) for which a product should be shown (if a subjet to ACL)
	IN PageIndex			int, 
	IN PageSize			int,
	IN ShowHidden			bool,
	IN OverridePublished	bool, -- null - process "Published" property according to "showHidden" parameter, true - load only "Published" products, false - load only "Unpublished" products
	IN LoadFilterableSpecificationAttributeOptionIds bool, -- a value indicating whether we should load the specification attribute option identifiers applied to loaded products (all pages)
	OUT FilterableSpecificationAttributeOptionIds longtext, -- the specification attribute option identifiers applied to loaded products (all pages). returned as a comma separated list of identifiers
	OUT TotalRecords		int
)
BEGIN
	
	if ManufacturerId is null then
        set ManufacturerId = 0;
    END IF;
	
	if StoreId is null then
        set StoreId = 0;
    END IF;
	
	if VendorId is null then
        set VendorId = 0;
    END IF;
	
	if WarehouseId is null then
        set WarehouseId = 0;
    END IF;
	
	if ProductTypeId is null then
        set ManufacturerId = 0;
    END IF;
	
	if VisibleIndividuallyOnly is null then
        set VisibleIndividuallyOnly = 0;
    END IF;
	
	if MarkedAsNewOnly is null then
        set MarkedAsNewOnly = 0;
    END IF;	
    
    if ProductTagId is null then
        set ProductTagId = 0;
    END IF;
    
    if SearchDescriptions is null then
        set SearchDescriptions = 0;
    END IF;
	
	if SearchSku is null then
        set SearchSku = 0;
    END IF;	
	
	if SearchProductTags is null then
        set SearchProductTags = 0;
    END IF;
    
    if UseFullTextSearch is null then
        set UseFullTextSearch = 0;
    END IF;
    
    if FullTextMode is null then
        set FullTextMode = 0;
    END IF;
    
    if LanguageId is null then
        set LanguageId = 0;
    END IF;
    
    if OrderBy is null then
        set OrderBy = 0;
    END IF;
    
    if PageIndex is null then
        set PageIndex = 0;
    END IF;
    
    if PageSize is null then
        set PageSize = 2147483644;
    END IF;
    
    if ShowHidden is null then
        set ShowHidden = 0;
    END IF;
    
    if LoadFilterableSpecificationAttributeOptionIds is null then
        set LoadFilterableSpecificationAttributeOptionIds = 0;
    END IF;
	
	/* Products that filtered by keywords */
	drop temporary table if exists KeywordProducts_TempTable;
	CREATE temporary TABLE KeywordProducts_TempTable
	(
		ProductId int NOT NULL
	) ENGINE = MEMORY;

	--  DECLARE
	--	@SearchKeywords bit,
	--	@sql nvarchar(max),
	--	@sql_orderby nvarchar(max)

	-- filter by keywords
	SET Keywords = coalesce(Keywords, '');
	SET Keywords = rtrim(ltrim(Keywords));
	IF Keywords != '' then
		SET @SearchKeywords = 1;
		
		IF UseFullTextSearch = 1 then
			-- remove wrong chars (' ")
			SET Keywords = REPLACE(Keywords, '''', '');
			SET Keywords = REPLACE(Keywords, '"', '');
			
			-- full-text search
			IF FullTextMode = 0 THEN
				-- 0 - using CONTAINS with <prefix_term>
				SET Keywords = concat(' ', Keywords, '* ');
			ELSE
				-- 5 - using CONTAINS and OR with <prefix_term>
				-- 10 - using CONTAINS and AND with <prefix_term>
				
				SET Keywords = REPLACE(Keywords, '''', '');
				SET Keywords = REPLACE(Keywords, '"', '');

				-- clean multiple spaces
				WHILE LOCATE('  ', Keywords) > 0 DO
					SET Keywords = REPLACE(Keywords, '  ', ' ');
				END WHILE;
				
				IF FullTextMode = 5 THEN -- 5 - using CONTAINS and OR with <prefix_term>
					SET @concat_term = '';
				ELSEIF FullTextMode = 10 THEN  -- 10 - using CONTAINS and AND with <prefix_term>
					SET @concat_term = '+';
				END IF;

				-- now let's build search string
				set @fulltext_keywords = N'';
		
				set @index = LOCATE(' ', Keywords);

				-- if index = 0, then only one field was passed
				IF @index = 0 then
					set @fulltext_keywords = CONCAT(' ', Keywords, '* ');
				ELSE		
					WHILE @index > 0 DO
						SET @fulltext_keywords = CONCAT(@fulltext_keywords, ' ', @concat_term, SUBSTRING(Keywords, 1, @index - 1), '*');
						SET Keywords = SUBSTRING(Keywords, @index + 1, LENGTH(Keywords) - @index);
						SET @index = LOCATE(' ', Keywords);
					END WHILE;
					
					-- add the last field
					IF LENGTH(@fulltext_keywords) > 0 THEN
						SET @fulltext_keywords = CONCAT(@fulltext_keywords, ' ', @concat_term, SUBSTRING(Keywords, 1, LENGTH(Keywords)), '*');
					END IF;
				
				END IF;
				
				SET Keywords = ltrim(rtrim(@fulltext_keywords));
		
			END IF;		
		ELSE
			-- usual search by PATINDEX
			SET Keywords = concat('%', Keywords, '%');
		END IF;
		-- PRINT @Keywords

		-- product name
		SET @sql = '
		INSERT INTO KeywordProducts_TempTable (`ProductId`)
		SELECT p.Id
		FROM Product p
		WHERE ';
		
		IF UseFullTextSearch = 1 THEN
			SET @sql = CONCAT(@sql, 'MATCH (p.`Name`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
		ELSE
			SET @sql = CONCAT(@sql, 'p.`Name` LIKE @TempKeywords ');
		END IF;

		-- localized product name
		SET @sql = CONCAT(@sql, '
		UNION
		SELECT lp.EntityId
		FROM LocalizedProperty lp
		WHERE 
			lp.LocaleKeyGroup = N''Product''
			AND lp.LanguageId = ', COALESCE(LanguageId, 0), '
			AND lp.LocaleKey = N''Name''');
		IF UseFullTextSearch = 1 THEN
			SET @sql = CONCAT(@sql, ' AND MATCH (lp.`LocaleValue`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
		ELSE
			SET @sql = CONCAT(@sql, ' AND lp.`LocaleValue` LIKE @TempKeywords ');
		END IF;
		

		-- product short description
		IF SearchDescriptions = 1 THEN
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT p.Id
			FROM Product p
			WHERE ');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, 'MATCH (p.`ShortDescription`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, 'p.`ShortDescription` LIKE @TempKeywords ');
			END IF;
		
			-- product full description
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT p.Id
			FROM Product p
			WHERE ');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, 'MATCH (p.`FullDescription`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, 'p.`FullDescription` LIKE @TempKeywords ');
			END IF;
			
			-- localized product short description
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT lp.EntityId
			FROM LocalizedProperty lp
			WHERE
				lp.LocaleKeyGroup = N''Product''
				AND lp.LanguageId = ', COALESCE(LanguageId, 0), '
				AND lp.LocaleKey = N''ShortDescription''');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, ' AND MATCH (lp.`LocaleValue`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, ' AND lp.`LocaleValue` LIKE @TempKeywords ');
			END IF;				

			-- localized product full description
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT lp.EntityId
			FROM LocalizedProperty lp
			WHERE
				lp.LocaleKeyGroup = N''Product''
				AND lp.LanguageId = ', COALESCE(LanguageId, 0), '
				AND lp.LocaleKey = N''FullDescription''');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, ' AND MATCH (lp.`LocaleValue`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, ' AND lp.`LocaleValue` LIKE @TempKeywords ');
			END IF;

		END IF;

		-- SKU
		IF SearchDescriptions = 1 THEN
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT p.Id
			FROM Product p
			WHERE ');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, 'MATCH (p.`Sku`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, 'p.`Sku` LIKE @TempKeywords ');
			END IF;
		END IF;
	
		

		IF @SearchProductTags = 1 THEN
			-- product tag
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT pptm.Product_Id
			FROM Product_ProductTag_Mapping pptm INNER JOIN ProductTag pt ON pt.Id = pptm.ProductTag_Id
			WHERE ');
			IF UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, 'MATCH (pt.`Name`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONCAT(@sql, 'pt.`Name` LIKE @TempKeywords ');
			END IF;
			
			-- localized product tag
			SET @sql = CONCAT(@sql, '
			UNION
			SELECT pptm.Product_Id
			FROM LocalizedProperty lp INNER JOIN Product_ProductTag_Mapping pptm ON lp.EntityId = pptm.ProductTag_Id
			WHERE
				lp.LocaleKeyGroup = N''ProductTag''
				AND lp.LanguageId = ', COALESCE(LanguageId, 0), '
				AND lp.LocaleKey = N''Name''');
			IF @UseFullTextSearch = 1 THEN
				SET @sql = CONCAT(@sql, ' AND MATCH (lp.`LocaleValue`) AGAINST (@TempKeywords IN BOOLEAN MODE) ');
			ELSE
				SET @sql = CONTACT(@sql, ' AND lp.`LocaleValue` LIKE @TempKeywords ');
			END IF;
		
		END IF;

		
		
		set @TempKeywords = Keywords;
		PREPARE stmt1 FROM @sql; 
		SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
		
		EXECUTE stmt1; -- USING @TempKeywords; 
		SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
		DEALLOCATE PREPARE stmt1;
		

	ELSE
		SET @SearchKeywords = 0;
	END IF;

	-- filter by category IDs
	SET CategoryIds = COALESCE(CategoryIds, '');
	Drop temporary table if exists FilteredCategoryIds_TempTable;
	CREATE temporary TABLE FilteredCategoryIds_TempTable
	(
		CategoryId int not null
	) ENGINE = MEMORY;
	
	call nop_splitstring_to_table(CategoryIds, ',');
	INSERT INTO FilteredCategoryIds_TempTable (CategoryId)
	SELECT (data + 0) FROM nop_splitstring_to_table_TempTable;
    
    SELECT COUNT(1) FROM FilteredCategoryIds_TempTable into @CategoryIdsCount;
	
	
	-- filter by customer role IDs (access control list)
	SET AllowedCustomerRoleIds = COALESCE(AllowedCustomerRoleIds, '');	
	Drop temporary table if exists FilteredCustomerRoleIds_TempTable;
	CREATE temporary TABLE FilteredCustomerRoleIds_TempTable
	(
		CustomerRoleId int not null
	) ENGINE = MEMORY;
    
    call nop_splitstring_to_table(AllowedCustomerRoleIds, ',');
	INSERT INTO FilteredCustomerRoleIds_TempTable (CustomerRoleId)
	SELECT (data + 0) FROM nop_splitstring_to_table_TempTable;	
    
    -- SELECT COUNT(1) FROM FilteredCustomerRoleIds_TempTable into @SpecAttributesCount;
	
	
	-- paging
	SET @RowsToReturn = PageSize * (PageIndex + 1);
	SET @PageLowerBound = PageSize * PageIndex;
	SET @PageUpperBound = @PageLowerBound + PageSize + 1;
	
	Drop temporary table if exists DisplayOrder_TempTable;
	CREATE temporary TABLE DisplayOrder_TempTable 
	(
		Id int NOT NULL AUTO_INCREMENT,
		ProductId int NOT NULL,
    PRIMARY KEY (`Id`)
	) ENGINE = MEMORY;
	
	SET @sql = '
	INSERT INTO DisplayOrder_TempTable (`ProductId`)
	SELECT p.Id
	FROM
		Product p';

	IF @CategoryIdsCount > 0 THEN
		SET @sql = CONCAT(@sql, '
		LEFT JOIN Product_Category_Mapping pcm
			ON p.Id = pcm.ProductId');
	END IF;
	
	IF ManufacturerId > 0 THEN
		SET @sql = CONCAT(@sql, '
		LEFT JOIN Product_Manufacturer_Mapping pmm
			ON p.Id = pmm.ProductId');
	END IF;
	
	IF COALESCE(ProductTagId, 0) != 0 THEN
		SET @sql = CONCAT(@sql, '
		LEFT JOIN Product_ProductTag_Mapping pptm
			ON p.Id = pptm.Product_Id');
	END IF;
	
	-- searching by keywords
	IF @SearchKeywords = 1 THEN
		SET @sql = CONCAT(@sql, '
		JOIN KeywordProducts_TempTable kp
			ON  p.Id = kp.ProductId');
	END IF;
	
	SET @sql = CONCAT(@sql, '
	WHERE
		p.Deleted = 0');
	
	-- filter by category
	IF @CategoryIdsCount > 0 THEN
		SET @sql = CONCAT(@sql, '
		AND pcm.CategoryId IN (SELECT CategoryId FROM FilteredCategoryIds_TempTable)');
		
		IF FeaturedProducts IS NOT NULL THEN
			SET @sql = CONCAT(@sql, '
		AND pcm.IsFeaturedProduct = ', FeaturedProducts);
		END IF;
	END IF;
	
	-- filter by manufacturer
	IF ManufacturerId > 0 THEN
		SET @sql = CONCAT(@sql, ' 
		AND pmm.ManufacturerId = ', ManufacturerId);
		
		IF FeaturedProducts IS NOT NULL THEN
			SET @sql = CONCAT(@sql, ' 
		AND pmm.IsFeaturedProduct = ', FeaturedProducts);
		END IF;
	END IF;
	
	-- filter by vendor
	IF VendorId > 0 THEN
		SET @sql = CONCAT(@sql, ' 
		AND p.VendorId = ', VendorId);
	END IF;
	
	-- filter by warehouse
	IF WarehouseId > 0 THEN
		-- we should also ensure that 'ManageInventoryMethodId' is set to 'ManageStock' (1)
		-- but we skip it in order to prevent hard-coded values (e.g. 1) and for better performance
		SET @sql = CONCAT(@sql, ' 
		AND  
			(
				(p.UseMultipleWarehouses = 0 AND
					p.WarehouseId = ', WarehouseId, ')
				OR
				(p.UseMultipleWarehouses > 0 AND
					EXISTS (SELECT 1 FROM ProductWarehouseInventory `pwi`
					WHERE `pwi`.WarehouseId = ', WarehouseId, ' AND `pwi`.ProductId = p.Id))
			)');
	END IF;
	
	-- filter by product type
	IF ProductTypeId is not null THEN
		SET @sql = CONCAT(@sql, '
		AND p.ProductTypeId = ', ProductTypeId);
	END IF;
	
	-- filter by "visible individually"
	IF VisibleIndividuallyOnly = 1 THEN
		SET @sql = CONCAT(@sql, '
		AND p.VisibleIndividually = 1');
	END IF;
	
	-- filter by "marked as new"
	IF MarkedAsNewOnly = 1 THEN
		SET @sql = CONCAT(@sql, '
		AND p.MarkAsNew = 1
		AND (utc_timestamp() BETWEEN COALESCE(p.MarkAsNewStartDateTimeUtc, STR_TO_DATE(''1-1-1900'', ''(%e-%c-%Y)'')) and COALESCE(p.MarkAsNewEndDateTimeUtc, STR_TO_DATE(''1-1-2999'', ''(%e-%c-%Y)'')))');
	END IF;
	
	-- filter by product tag
	IF COALESCE(ProductTagId, 0) != 0 THEN
		SET @sql = CONCAT(@sql, '
		AND pptm.ProductTag_Id = ', ProductTagId);
	END IF;
	
	-- "Published" property
	IF (OverridePublished is null) THEN
		-- process according to "showHidden"
		IF ShowHidden = 0 THEN
			SET @sql = CONCAT(@sql, '
			AND p.Published = 1');
		END IF;
	ELSEIF (OverridePublished = 1) THEN
		-- published only
		SET @sql = CONCAT(@sql, '
		AND p.Published = 1');
	ELSEIF (OverridePublished = 0) THEN
		-- unpublished only
		SET @sql = CONCAT(@sql, '
		AND p.Published = 0');
	END IF;
	
	-- show hidden
	IF ShowHidden = 0 THEN
		SET @sql = CONCAT(@sql, '
		AND p.Deleted = 0
		AND (utc_timestamp() BETWEEN COALESCE(p.AvailableStartDateTimeUtc, STR_TO_DATE(''(1-1-1900)'', ''(%e-%c-%Y)'')) and COALESCE(p.AvailableEndDateTimeUtc, STR_TO_DATE(''(1-1-2999)'', ''(%e-%c-%Y)'')))');
	END IF;
	
	-- min price
	IF PriceMin IS NOT NULL THEN
		SET @sql = CONCAT(@sql, '
		AND (
				(
					-- special price (specified price and valid date range)
					(p.SpecialPrice IS NOT NULL AND (utc_timestamp() BETWEEN COALESCE(p.SpecialPriceStartDateTimeUtc, STR_TO_DATE(''(1-1-1900)'', ''(%e-%c-%Y)'')) AND COALESCE(p.SpecialPriceEndDateTimeUtc, STR_TO_DATE(''(1-1-2999)'', ''(%e-%c-%Y)''))))
					AND
					(p.SpecialPrice >= ', PriceMin, ')
				)
				OR 
				(
					-- regular price (price isnt specified or date range isnt valid)
					(p.SpecialPrice IS NULL OR (utc_timestamp() NOT BETWEEN COALESCE(p.SpecialPriceStartDateTimeUtc, STR_TO_DATE(''(1-1-1900)'', ''(%e-%c-%Y)'')) AND COALESCE(p.SpecialPriceEndDateTimeUtc, STR_TO_DATE(''(1-1-2999)'', ''(%e-%c-%Y)''))))
					AND
					(p.Price >= ', PriceMin, ')
				)
			)');
	END IF;
	
	-- max price
	IF PriceMax IS NOT NULL THEN
		SET @sql = CONCAT(@sql, '
		AND (
				(
					-- special price (specified price and valid date range)
					(p.SpecialPrice IS NOT NULL AND (utc_timestamp() BETWEEN COALESCE(p.SpecialPriceStartDateTimeUtc, STR_TO_DATE(''(1-1-1900)'', ''(%e-%c-%Y)'')) AND COALESCE(p.SpecialPriceEndDateTimeUtc, STR_TO_DATE(''(1-1-2999)'', ''(%e-%c-%Y)''))))
					AND
					(p.SpecialPrice <= ', PriceMax, ')
				)
				OR 
				(
					-- regular price (price isnt specified or date range isnt valid)
					(p.SpecialPrice IS NULL OR (utc_timestamp() NOT BETWEEN COALESCE(pv.SpecialPriceStartDateTimeUtc, STR_TO_DATE(''(1-1-1900)'', ''(%e-%c-%Y)'')) AND COALESCE(p.SpecialPriceEndDateTimeUtc, STR_TO_DATE(''(1-1-2999)'', ''(%e-%c-%Y)''))))
					AND
					(p.Price <= ', PriceMax, ')
				)
			)');
	END IF;
	
	-- show hidden and ACL
	IF ShowHidden = 0 THEN
		SET @sql = CONCAT(@sql, '
		AND (p.SubjectToAcl = 0 OR EXISTS (
			SELECT 1 FROM FilteredCustomerRoleIds_TempTable `fcr`
			WHERE
				`fcr`.CustomerRoleId IN (
					SELECT `acl`.CustomerRoleId
					FROM `AclRecord` acl
					WHERE `acl`.EntityId = p.Id AND `acl`.EntityName = ''Product''
				)
			))');
	END IF;
	
	-- show hidden and filter by store
	IF StoreId > 0 THEN
		SET @sql = CONCAT(@sql, '
		AND (p.LimitedToStores = 0 OR EXISTS (
			SELECT 1 FROM `StoreMapping` sm
			WHERE `sm`.EntityId = p.Id AND `sm`.EntityName = ''Product'' and `sm`.StoreId=', StoreId, '
			))');
	END IF;
	
	-- filter by specification attribution options
	-- SET FilteredSpecs = COALESCE(FilteredSpecs, '');
	-- Drop temporary table if exists FilteredSpecs_TempTable;
	-- CREATE temporary TABLE FilteredSpecs_TempTable 
	-- (
	-- 	SpecificationAttributeOptionId int NOT NULL
	-- ) ENGINE = MEMORY;
	
	-- call nop_splitstring_to_table(FilteredSpecs, ',');
	-- INSERT INTO FilteredSpecs_TempTable (SpecificationAttributeOptionId)
	-- SELECT (data + 0) FROM nop_splitstring_to_table_TempTable;
	
	-- SELECT COUNT(1) FROM FilteredSpecs_TempTable INTO @SpecAttributesCount;
	
	-- IF @SpecAttributesCount > 0 THEN
		-- do it for each specified specification option
	-- 	DECLARE @SpecificationAttributeOptionId int
	-- 	DECLARE cur_SpecificationAttributeOption CURSOR FOR
	-- 	SELECT [SpecificationAttributeOptionId]
	-- 	FROM [#FilteredSpecs]
	-- 	OPEN cur_SpecificationAttributeOption
	-- 	FETCH NEXT FROM cur_SpecificationAttributeOption INTO @SpecificationAttributeOptionId
	-- 	WHILE @@FETCH_STATUS = 0
	-- 	BEGIN
	-- 		SET @sql = @sql + '
	-- 		AND p.Id in (select psam.ProductId from [Product_SpecificationAttribute_Mapping] psam with (NOLOCK) where psam.AllowFiltering = 1 and psam.SpecificationAttributeOptionId = ' + CAST(@SpecificationAttributeOptionId AS nvarchar(max)) + ')'
			-- fetch next identifier
	-- 		FETCH NEXT FROM cur_SpecificationAttributeOption INTO @SpecificationAttributeOptionId
	-- 	END
	-- 	CLOSE cur_SpecificationAttributeOption
	-- 	DEALLOCATE cur_SpecificationAttributeOption
	-- END IF;
	
	-- sorting
	SET @sql_orderby = '';	
	IF OrderBy = 5 THEN /* Name: A to Z */
		SET @sql_orderby = ' p.`Name` ASC';
	ELSEIF OrderBy = 6 THEN /* Name: Z to A */
		SET @sql_orderby = ' p.`Name` DESC';
	ELSEIF OrderBy = 10 THEN /* Price: Low to High */
		SET @sql_orderby = ' pv.`Price` ASC';
	ELSEIF OrderBy = 11 THEN /* Price: High to Low */
		SET @sql_orderby = ' pv.`Price` DESC';
	ELSEIF OrderBy = 15 THEN /* creation date */
		SET @sql_orderby = ' p.`CreatedOnUtc` DESC';
	ELSE /* default sorting, 0 (position) */
		-- category position (display order)
		IF @CategoryIdsCount > 0 THEN
			SET @sql_orderby = ' pcm.DisplayOrder ASC';
		END IF;
		-- manufacturer position (display order)
		IF ManufacturerId > 0 THEN
			IF LENGTH(@sql_orderby) > 0 THEN
				SET @sql_orderby = CONCAT(@sql_orderby, ', ');
			END IF;
      
			SET @sql_orderby = CONCAT(@sql_orderby, ' pmm.DisplayOrder ASC');
		END IF;
		-- name
		IF LENGTH(@sql_orderby) > 0 THEN
			SET @sql_orderby = CONCAT(@sql_orderby, ', ');
		END IF;
		SET @sql_orderby = CONCAT(@sql_orderby, ' p.`Name` ASC');
	END IF;

	SET @sql = CONCAT(@sql, '
	ORDER BY', @sql_orderby);
	
	PREPARE stmt2 FROM @sql; 
    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    EXECUTE stmt2; 
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    DEALLOCATE PREPARE stmt2;
     
	DROP Temporary TABLE FilteredCategoryIds_TempTable;
	-- DROP Temporary TABLE FilteredSpecs_TempTable;
	DROP Temporary TABLE FilteredCustomerRoleIds_TempTable;
	DROP Temporary TABLE KeywordProducts_TempTable;
	
	DROP Temporary TABLE if exists PageIndex_TempTable;
	CREATE Temporary TABLE PageIndex_TempTable 
	(
		IndexId int NOT NULL AUTO_INCREMENT,
		ProductId int NOT NULL,
    PRIMARY KEY (`IndexId`)
	) ENGINE = MEMORY;

	INSERT INTO PageIndex_TempTable (`ProductId`)
	SELECT ProductId
	FROM DisplayOrder_TempTable
	GROUP BY ProductId
	ORDER BY min(`Id`);

	-- total records
	SET TotalRecords = ROW_COUNT();
	
	DROP temporary TABLE DisplayOrder_TempTable;

	-- prepare filterable specification attribute option identifier (if requested)
	IF LoadFilterableSpecificationAttributeOptionIds = 1 THEN
		DROP Temporary TABLE if exists FilterableSpecs_TempTable;
		CREATE Temporary TABLE FilterableSpecs_TempTable 
		(
			SpecificationAttributeOptionId int NOT NULL
		) ENGINE = MEMORY;
        
		INSERT INTO FilterableSpecs_TempTable (`SpecificationAttributeOptionId`)
		SELECT DISTINCT `psam`.SpecificationAttributeOptionId
		FROM `Product_SpecificationAttribute_Mapping` `psam`
		WHERE `psam`.`AllowFiltering` = 1
		AND `psam`.`ProductId` IN (SELECT `pi`.ProductId FROM PageIndex_TempTable `pi`);
    
		-- build comma separated list of filterable identifiers
		SELECT GROUP_CONCAT(COALESCE(concat(FilterableSpecificationAttributeOptionIds, ',') , ''), SpecificationAttributeOptionId) into FilterableSpecificationAttributeOptionIds
		FROM FilterableSpecs_TempTable;

		DROP Temporary TABLE FilterableSpecs_TempTable;
 	END IF;
	
	set @sql = concat('
		SELECT
			p.*
		FROM
			PageIndex_TempTable pi
			INNER JOIN Product p on p.Id = pi.ProductId
		WHERE
			pi.IndexId > ', @PageLowerBound, ' AND 
			pi.IndexId < ', @PageUpperBound, '
		ORDER BY
			pi.IndexId
	  limit ', @RowsToReturn, ';');
	
    PREPARE stmt3 FROM @sql;
    EXECUTE stmt3;
    DEALLOCATE PREPARE stmt3;
    
	DROP Temporary TABLE PageIndex_TempTable;
	
END;


CREATE PROCEDURE `ProductTagCountLoadAll`
(
	IN PStoreId int
)
BEGIN
	
	SELECT pt.Id as `ProductTagId`, COUNT(p.Id) as `ProductCount`
	FROM ProductTag pt
	LEFT JOIN Product_ProductTag_Mapping pptm ON pt.`Id` = pptm.`ProductTag_Id`
	LEFT JOIN Product p ON pptm.`Product_Id` = p.`Id`
	WHERE
		p.`Deleted` = 0
		AND p.Published = 1
		AND (PStoreId = 0 or (p.LimitedToStores = 0 OR EXISTS (
			SELECT 1 FROM `StoreMapping` sm
			WHERE `sm`.EntityId = p.Id AND `sm`.EntityName = 'Product' and `sm`.StoreId=PStoreId
			)))
	GROUP BY pt.Id
	ORDER BY pt.Id;
END;


CREATE PROCEDURE `FullText_IsSupported`()
BEGIN	
    -- Since InnoDB under MySql 5.5 doesn't support fulltext indexing, just return 0.
	-- If your using InnoDB and MySql 5.6 or even MyIsam and MySql 5.5 then you should be able to return 1
	-- and uncomment the fulltext enable/disable procedures
    SELECT 0;
END;




CREATE PROCEDURE `FullText_Enable`()
BEGIN	
	
    -- These are remarked out because InnoDb doesn't support full text indexes with MySql 5.5 or earlier
    
    -- SELECT COUNT(1) INTO @IndexCount FROM information_schema.statistics 
--   WHERE table_name = 'Product' AND INDEX_NAME = 'IX_PRODUCT_FULLTEXT';
--   
--   if @IndexCount = 0 then
--     CREATE FULLTEXT INDEX `IX_PRODUCT_FULLTEXT` ON `product` ( `Name`, `ShortDescription`, `FullDescription` );
--   end if;	
--     
--     SELECT COUNT(1) INTO @IndexCount FROM information_schema.statistics 
--   WHERE table_name = 'ProductVariant' AND INDEX_NAME = 'IX_ProductVariant_FULLTEXT';
--   
--   if @IndexCount = 0 then
--     CREATE FULLTEXT INDEX `IX_ProductVariant_FULLTEXT` ON `ProductVariant` ( `Name`, `Description`, `SKU` );
--   end if;
-- 
-- SELECT COUNT(1) INTO @IndexCount FROM information_schema.statistics 
--   WHERE table_name = 'LocalizedProperty' AND INDEX_NAME = 'IX_LocalizedProperty_FULLTEXT';
--   
--   if @IndexCount = 0 then
--     CREATE FULLTEXT INDEX `IX_LocalizedProperty_FULLTEXT` ON `LocalizedProperty` ( `LocaleValue` );
--   end if;
END;


CREATE PROCEDURE `FullText_Disable`()
BEGIN	
	
    -- These are remarked out because InnoDb doesn't currently support full text indexes with MySql 5.5 or earlier
    
    -- SELECT COUNT(1) INTO @IndexCount FROM information_schema.statistics 
--   WHERE table_name = 'Product' AND INDEX_NAME = 'IX_PRODUCT_FULLTEXT';
--   
--   if @IndexCount > 0 then
--     DROP INDEX `IX_PRODUCT_FULLTEXT` ON `product`;
--   end if;	
--     
--     SELECT COUNT(1) INTO @IndexCount FROM information_schema.statistics 
--   WHERE table_name = 'ProductVariant' AND INDEX_NAME = 'IX_ProductVariant_FULLTEXT';
--   
--   if @IndexCount > 0 then
--     DROP INDEX `IX_ProductVariant_FULLTEXT` ON `ProductVariant`;
--   end if;
-- 
-- SELECT COUNT(1) INTO @IndexCount FROM information_schema.statistics 
--   WHERE table_name = 'LocalizedProperty' AND INDEX_NAME = 'IX_LocalizedProperty_FULLTEXT';
--   
--   if @IndexCount > 0 then
--     DROP INDEX `IX_LocalizedProperty_FULLTEXT` ON `LocalizedProperty`;
--   end if;
END;


CREATE PROCEDURE `LanguagePackImport`(
	IN LanguageId int,
	IN XmlPackage LONGTEXT
)
BEGIN
	IF (EXISTS(SELECT 1 FROM `Language` WHERE `Id` = LanguageId)) THEN
        
    drop temporary table if exists LocaleStringResource_TempTable;
	CREATE temporary TABLE LocaleStringResource_TempTable
	(
		LanguageId int NOT NULL,
				ResourceName varchar(200) NOT NULL,
				ResourceValue LONGTEXT NOT NULL
	);

set @i = 1;
select ExtractValue(@xml, 'count(//Language/LocaleResource/@Name)') into @count;
WHILE @i <= @count DO
    insert into LocaleStringResource_TempTable
    SELECT LanguageId, ExtractValue(@xml, '//Language/LocaleResource[$@i]/@Name'), ExtractValue(@xml, '//Language/LocaleResource[$@i]/Value[1]');
    SET @i = @i+1;
END WHILE;		       
        
        BEGIN
        DECLARE done INT DEFAULT FALSE;
        DECLARE ResourceName varchar(200);
		DECLARE ResourceValue LONGTEXT;
		DECLARE cur_localeresource CURSOR FOR
		SELECT LanguageID, LocaleStringResource_TempTable.ResourceName, LocaleStringResource_TempTable.ResourceValue
		FROM LocaleStringResource_TempTable;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
        
		OPEN cur_localeresource;
    
    read_loop: LOOP
    FETCH cur_localeresource INTO LanguageId, ResourceName, ResourceValue;
    IF done THEN
      LEAVE read_loop;
    END IF;
    
    -- select LanguageId, ResourceName, ResourceValue;
    
    IF (EXISTS (SELECT 1 FROM LocaleStringResource WHERE LocaleStringResource.LanguageID=LanguageId AND LocaleStringResource.ResourceName=ResourceName)) THEN
				UPDATE LocaleStringResource
				SET LocaleStringResource.ResourceValue=ResourceValue
				WHERE LocaleStringResource.LanguageID=LanguageId AND LocaleStringResource.ResourceName=ResourceName;
			ELSE 
				INSERT INTO LocaleStringResource
				(
					LocaleStringResource.LanguageId,
					LocaleStringResource.ResourceName,
					LocaleStringResource.ResourceValue
				)
				VALUES
				(
					LanguageId,
					ResourceName,
					ResourceValue
				);
			END IF;
  END LOOP;
  
  CLOSE cur_localeresource;
		-- DEALLOCATE cur_localeresource;
			END;		

		DROP temporary TABLE LocaleStringResource_TempTable;
	END IF;
END;


-- new stored procedure
CREATE PROCEDURE `DeleteGuests`
(
	IN OnlyWithoutShoppingCart bool,
	IN CreatedFromUtc datetime,
	IN CreatedToUtc datetime,
	OUT TotalRecordsDeleted int
)
BEGIN
	SET TotalRecordsDeleted = NULL;
	drop temporary table if exists tmp_guests;
	CREATE temporary TABLE tmp_guests
	(
		CustomerId int NOT NULL
	);
		
	INSERT INTO tmp_guests 
	SELECT `Id` FROM `Customer` c 
	WHERE
	-- created from
	((CreatedFromUtc is null) OR (c.`CreatedOnUtc` > CreatedFromUtc))
	AND
	-- created to
	((CreatedToUtc is null) OR (c.`CreatedOnUtc` < CreatedToUtc))
	AND
	-- shopping cart items
	((OnlyWithoutShoppingCart=0) OR (NOT EXISTS(SELECT 1 FROM `ShoppingCartItem` sci inner join `Customer` on sci.`CustomerId`=c.`Id`)))
	AND
	-- guests only
	(EXISTS(SELECT 1 FROM `Customer_CustomerRole_Mapping` ccrm inner join `Customer` on ccrm.`Customer_Id`=c.`Id` inner join `CustomerRole` cr on cr.`Id`=ccrm.`CustomerRole_Id` WHERE cr.`SystemName` = 'Guests'))
	AND
	-- no orders
	(NOT EXISTS(SELECT 1 FROM `Order` o inner join `Customer` on o.`CustomerId`=c.`Id`))
	AND
	-- no blog comments
	(NOT EXISTS(SELECT 1 FROM `BlogComment` bc inner join `Customer` on bc.`CustomerId`=c.`Id`))
	AND
	-- no news comments
	(NOT EXISTS(SELECT 1 FROM `NewsComment` nc  inner join `Customer` on nc.`CustomerId`=c.`Id`))
	AND
	-- no product reviews
	(NOT EXISTS(SELECT 1 FROM `ProductReview` pr inner join `Customer` on pr.`CustomerId`=c.`Id`))
	AND
	-- no product reviews helpfulness
	(NOT EXISTS(SELECT 1 FROM `ProductReviewHelpfulness` prh inner join `Customer` on prh.`CustomerId`=c.`Id`))
	AND
	-- no poll voting
	(NOT EXISTS(SELECT 1 FROM `PollVotingRecord` pvr inner join `Customer` on pvr.`CustomerId`=c.`Id`))
	AND
	-- no forum topics 
	(NOT EXISTS(SELECT 1 FROM `Forums_Topic` ft inner join `Customer` on ft.`CustomerId`=c.`Id`))
	AND
	-- no forum posts 
	(NOT EXISTS(SELECT 1 FROM `Forums_Post` fp inner join `Customer` on fp.`CustomerId`=c.`Id`))
	AND
	-- no system accounts
	(c.IsSystemAccount = 0);
	
	-- delete guests
	DELETE FROM `Customer`
	WHERE `Id` IN (SELECT `CustomerID` FROM tmp_guests);
	
	-- delete attributes
	DELETE FROM `GenericAttribute`
	WHERE (`EntityID` IN (SELECT `CustomerID` FROM tmp_guests))
	AND
	(`KeyGroup` = 'Customer');
	
	-- total records
	SELECT COUNT(1) FROM tmp_guests INTO TotalRecordsDeleted;
	
	DROP TABLE tmp_guests;
END;