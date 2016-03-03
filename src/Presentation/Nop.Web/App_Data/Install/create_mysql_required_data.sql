INSERT INTO `Store` (`Id`, `Name`, `Url`, `SslEnabled`, `SecureUrl`, `Hosts`, `DefaultLanguageId`, `DisplayOrder`, `CompanyName`, `CompanyAddress`, `CompanyPhoneNumber`, `CompanyVat`) VALUES (1, 'Your store name', 'http://www.yourstore.com/', 0, NULL, 'yourstore.com,www.yourstore.com', 0, 1, 'Your company name', 'your company country, state, zip, street, etc', '(123) 456-78901', NULL);


INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (1, 'Blog.BlogComment', NULL, '%Store.Name%. New blog comment.', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new blog comment has been created for blog post "%BlogComment.BlogPostTitle%".</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (2, 'Customer.BackInStock', NULL, '%Store.Name%. Back in stock notification', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Customer.FullName%, <br />Product <a target="_blank" href="%BackInStockSubscription.ProductUrl%">%BackInStockSubscription.ProductName%</a> is in stock.</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (3, 'Customer.EmailValidationMessage', NULL, '%Store.Name%. Email validation', '<a href="%Store.URL%">%Store.Name%</a>  <br />  <br />  To activate your account <a href="%Customer.AccountActivationURL%">click here</a>.     <br />  <br />  %Store.Name%', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (4, 'Customer.NewPM', NULL, '%Store.Name%. You have received a new private message', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />You have received a new private message.</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (5, 'Customer.PasswordRecovery', NULL, '%Store.Name%. Password recovery', '<a href="%Store.URL%">%Store.Name%</a>  <br />  <br />  To change your password <a href="%Customer.PasswordRecoveryURL%">click here</a>.     <br />  <br />  %Store.Name%', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (6, 'Customer.WelcomeMessage', NULL, 'Welcome to %Store.Name%', 'We welcome you to <a href="%Store.URL%"> %Store.Name%</a>.<br /><br />You can now take part in the various services we have to offer you. Some of these services include:<br /><br />Permanent Cart - Any products added to your online cart remain there until you remove them, or check them out.<br />Address Book - We can now deliver your products to another address other than yours! This is perfect to send birthday gifts direct to the birthday-person themselves.<br />Order History - View your history of purchases that you have made with us.<br />Products Reviews - Share your opinions on products with our other customers.<br /><br />For help with any of our online services, please email the store-owner: <a href="mailto:%Store.Email%">%Store.Email%</a>.<br /><br />Note: This email address was provided on our registration page. If you own the email and did not register on our site, please send an email to <a href="mailto:%Store.Email%">%Store.Email%</a>.', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (7, 'Forums.NewForumPost', NULL, '%Store.Name%. New Post Notification.', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new post has been created in the topic <a href="%Forums.TopicURL%">"%Forums.TopicName%"</a> at <a href="%Forums.ForumURL%">"%Forums.ForumName%"</a> forum.<br /><br />Click <a href="%Forums.TopicURL%">here</a> for more info.<br /><br />Post author: %Forums.PostAuthor%<br />Post body: %Forums.PostBody%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (8, 'Forums.NewForumTopic', NULL, '%Store.Name%. New Topic Notification.', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new topic <a href="%Forums.TopicURL%">"%Forums.TopicName%"</a> has been created at <a href="%Forums.ForumURL%">"%Forums.ForumName%"</a> forum.<br /><br />Click <a href="%Forums.TopicURL%">here</a> for more info.</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (9, 'GiftCard.Notification', NULL, '%GiftCard.SenderName% has sent you a gift card for %Store.Name%', '<p>You have received a gift card for %Store.Name%</p><p>Dear %GiftCard.RecipientName%, <br /><br />%GiftCard.SenderName% (%GiftCard.SenderEmail%) has sent you a %GiftCard.Amount% gift cart for <a href="%Store.URL%"> %Store.Name%</a></p><p>You gift card code is %GiftCard.CouponCode%</p><p>%GiftCard.Message%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (10, 'NewCustomer.Notification', NULL, '%Store.Name%. New customer registration', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new customer registered with your store. Below are the customer''s details:<br />Full name: %Customer.FullName%<br />Email: %Customer.Email%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (11, 'NewReturnRequest.StoreOwnerNotification', NULL, '%Store.Name%. New return request.', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% has just submitted a new return request. Details are below:<br />Request ID: %ReturnRequest.ID%<br />Product: %ReturnRequest.Product.Quantity% x Product: %ReturnRequest.Product.Name%<br />Reason for return: %ReturnRequest.Reason%<br />Requested action: %ReturnRequest.RequestedAction%<br />Customer comments:<br />%ReturnRequest.CustomerComment%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (12, 'News.NewsComment', NULL, '%Store.Name%. New news comment.', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new news comment has been created for news "%NewsComment.NewsTitle%".</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (13, 'NewsLetterSubscription.ActivationMessage', NULL, '%Store.Name%. Subscription activation message.', '<p><a href="%NewsLetterSubscription.ActivationUrl%">Click here to confirm your subscription to our list.</a></p><p>If you received this email by mistake, simply delete it.</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (14, 'NewsLetterSubscription.DeactivationMessage', NULL, '%Store.Name%. Subscription deactivation message.', '<p><a href="%NewsLetterSubscription.DeactivationUrl%">Click here to unsubscribe from our newsletter.</a></p><p>If you received this email by mistake, simply delete it.</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (15, 'NewVATSubmitted.StoreOwnerNotification', NULL, '%Store.Name%. New VAT number is submitted.', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% (%Customer.Email%) has just submitted a new VAT number. Details are below:<br />VAT number: %Customer.VatNumber%<br />VAT number status: %Customer.VatNumberStatus%<br />Received name: %VatValidationResult.Name%<br />Received address: %VatValidationResult.Address%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (16, 'OrderCancelled.CustomerNotification', NULL, '%Store.Name%. Your order cancelled', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Your order has been cancelled. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a target="_blank" href="%Order.OrderURLForCustomer%">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (17, 'OrderCompleted.CustomerNotification', NULL, '%Store.Name%. Your order completed', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Your order has been completed. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a target="_blank" href="%Order.OrderURLForCustomer%">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (18, 'ShipmentDelivered.CustomerNotification', NULL, 'Your order from %Store.Name% has been delivered.', '<p><a href="%Store.URL%"> %Store.Name%</a> <br /> <br /> Hello %Order.CustomerFullName%, <br /> Good news! You order has been delivered. <br /> Order Number: %Order.OrderNumber%<br /> Order Details: <a href="%Order.OrderURLForCustomer%" target="_blank">%Order.OrderURLForCustomer%</a><br /> Date Ordered: %Order.CreatedOn%<br /> <br /> <br /> <br /> Billing Address<br /> %Order.BillingFirstName% %Order.BillingLastName%<br /> %Order.BillingAddress1%<br /> %Order.BillingCity% %Order.BillingZipPostalCode%<br /> %Order.BillingStateProvince% %Order.BillingCountry%<br /> <br /> <br /> <br /> Shipping Address<br /> %Order.ShippingFirstName% %Order.ShippingLastName%<br /> %Order.ShippingAddress1%<br /> %Order.ShippingCity% %Order.ShippingZipPostalCode%<br /> %Order.ShippingStateProvince% %Order.ShippingCountry%<br /> <br /> Shipping Method: %Order.ShippingMethod% <br /> <br /> Delivered Products: <br /> <br /> %Shipment.Product(s)%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (19, 'OrderPlaced.CustomerNotification', NULL, 'Order receipt from %Store.Name%.', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Thanks for buying from <a href="%Store.URL%">%Store.Name%</a>. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a target="_blank" href="%Order.OrderURLForCustomer%">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (20, 'OrderPlaced.StoreOwnerNotification', NULL, '%Store.Name%. Purchase Receipt for Order #%Order.OrderNumber%', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Order.CustomerFullName% (%Order.CustomerEmail%) has just placed an order from your store. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (21, 'ShipmentSent.CustomerNotification', NULL, 'Your order from %Store.Name% has been shipped.', '<p><a href="%Store.URL%"> %Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%!, <br />Good news! You order has been shipped. <br />Order Number: %Order.OrderNumber%<br />Order Details: <a href="%Order.OrderURLForCustomer%" target="_blank">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod% <br /> <br /> Shipped Products: <br /> <br /> %Shipment.Product(s)%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (22, 'Product.ProductReview', NULL, '%Store.Name%. New product review.', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />A new product review has been written for product "%ProductReview.ProductName%".</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (23, 'QuantityBelow.StoreOwnerNotification', NULL, '%Store.Name%. Quantity below notification. %Product.Name%', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Product.Name% (ID: %Product.ID%) low quantity. <br /><br />Quantity: %Product.StockQuantity%<br /></p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (24, 'QuantityBelow.AttributeCombination.StoreOwnerNotification', NULL, '%Store.Name%. Quantity below notification. %Product.Name%', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Product.Name% (ID: %Product.ID%) low quantity. <br />%AttributeCombination.Formatted%<br />Quantity: %AttributeCombination.StockQuantity%<br /></p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (25, 'ReturnRequestStatusChanged.CustomerNotification', NULL, '%Store.Name%. Return request status was changed.', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Customer.FullName%,<br />Your return request #%ReturnRequest.ID% status has been changed.</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (26, 'Service.EmailAFriend', NULL, '%Store.Name%. Referred Item', '<p><a href="%Store.URL%"> %Store.Name%</a> <br /><br />%EmailAFriend.Email% was shopping on %Store.Name% and wanted to share the following item with you. <br /><br /><b><a target="_blank" href="%Product.ProductURLForCustomer%">%Product.Name%</a></b> <br />%Product.ShortDescription% <br /><br />For more info click <a target="_blank" href="%Product.ProductURLForCustomer%">here</a> <br /><br /><br />%EmailAFriend.PersonalMessage%<br /><br />%Store.Name%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (27, 'Wishlist.EmailAFriend', NULL, '%Store.Name%. Wishlist', '<p><a href="%Store.URL%"> %Store.Name%</a> <br /><br />%Wishlist.Email% was shopping on %Store.Name% and wanted to share a wishlist with you. <br /><br /><br />For more info click <a target="_blank" href="%Wishlist.URLForCustomer%">here</a> <br /><br /><br />%Wishlist.PersonalMessage%<br /><br />%Store.Name%</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (28, 'Customer.NewOrderNote', NULL, '%Store.Name%. New order note has been added', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Customer.FullName%, <br />New order note has been added to your account:<br />"%Order.NewNoteText%".<br /><a target="_blank" href="%Order.OrderURLForCustomer%">%Order.OrderURLForCustomer%</a></p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (29, 'RecurringPaymentCancelled.StoreOwnerNotification', NULL, '%Store.Name%. Recurring payment cancelled', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% (%Customer.Email%) has just cancelled a recurring payment ID=%RecurringPayment.ID%.</p>', 1, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (30, 'OrderPlaced.VendorNotification', NULL, '%Store.Name%. Order placed', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% (%Customer.Email%) has just placed an order. <br /><br />Order Number: %Order.OrderNumber%<br />Date Ordered: %Order.CreatedOn%<br /><br />%Order.Product(s)%</p>', 0, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (31, 'OrderRefunded.CustomerNotification', NULL, '%Store.Name%. Order #%Order.OrderNumber% refunded', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Thanks for buying from <a href="%Store.URL%">%Store.Name%</a>. Order #%Order.OrderNumber% has been has been refunded. Please allow 7-14 days for the refund to be reflected in your account.<br /><br />Amount refunded: %Order.AmountRefunded%<br /><br />Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a href="%Order.OrderURLForCustomer%" target="_blank">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 0, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (32, 'OrderRefunded.StoreOwnerNotification', NULL, '%Store.Name%. Order #%Order.OrderNumber% refunded', '%Store.Name%. Order #%Order.OrderNumber% refunded'', ''<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Order #%Order.OrderNumber% has been just refunded<br /><br />Amount refunded: %Order.AmountRefunded%<br /><br />Date Ordered: %Order.CreatedOn%</p>', 0, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (33, 'OrderPaid.StoreOwnerNotification', NULL, '%Store.Name%. Order #%Order.OrderNumber% paid', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Order #%Order.OrderNumber% has been just paid<br />Date Ordered: %Order.CreatedOn%</p>', 0, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (34, 'OrderPaid.CustomerNotification', NULL, '%Store.Name%. Order #%Order.OrderNumber% paid', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Hello %Order.CustomerFullName%, <br />Thanks for buying from <a href="%Store.URL%">%Store.Name%</a>. Order #%Order.OrderNumber% has been just paid. Below is the summary of the order. <br /><br />Order Number: %Order.OrderNumber%<br />Order Details: <a href="%Order.OrderURLForCustomer%" target="_blank">%Order.OrderURLForCustomer%</a><br />Date Ordered: %Order.CreatedOn%<br /><br /><br /><br />Billing Address<br />%Order.BillingFirstName% %Order.BillingLastName%<br />%Order.BillingAddress1%<br />%Order.BillingCity% %Order.BillingZipPostalCode%<br />%Order.BillingStateProvince% %Order.BillingCountry%<br /><br /><br /><br />Shipping Address<br />%Order.ShippingFirstName% %Order.ShippingLastName%<br />%Order.ShippingAddress1%<br />%Order.ShippingCity% %Order.ShippingZipPostalCode%<br />%Order.ShippingStateProvince% %Order.ShippingCountry%<br /><br />Shipping Method: %Order.ShippingMethod%<br /><br />%Order.Product(s)%</p>', 0, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (35, 'OrderPaid.VendorNotification', NULL, '%Store.Name%. Order #%Order.OrderNumber% paid', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />Order #%Order.OrderNumber% has been just paid. <br /><br />Order Number: %Order.OrderNumber%<br />Date Ordered: %Order.CreatedOn%<br /><br />%Order.Product(s)%</p>', 0, 0, 1, 0);
INSERT INTO `MessageTemplate` (`Id`, `Name`, `BccEmailAddresses`, `Subject`, `Body`, `IsActive`, `AttachedDownloadId`, `EmailAccountId`, `LimitedToStores`) VALUES (36, 'VendorAccountApply.StoreOwnerNotification', NULL, '%Store.Name%. New vendor account submitted.', '<p><a href="%Store.URL%">%Store.Name%</a> <br /><br />%Customer.FullName% (%Customer.Email%) has just submitted for a vendor account. Details are below:<br />Vendor name: %Vendor.Name%<br />Vendor email: %Vendor.Email%<br /><br />You can activate it in admin area.</p>', 1, 0, 1, 0);



INSERT INTO `ManufacturerTemplate` (`Id`, `Name`, `ViewPath`, `DisplayOrder`) VALUES (1, 'Products in Grid or Lines', 'ManufacturerTemplate.ProductsInGridOrLines', 1);


INSERT INTO `ProductTemplate` (`Id`, `Name`, `ViewPath`, `DisplayOrder`) VALUES (1, 'Simple product', 'ProductTemplate.Simple', 10);
INSERT INTO `ProductTemplate` (`Id`, `Name`, `ViewPath`, `DisplayOrder`) VALUES (2, 'Grouped product (with variants)', 'ProductTemplate.Grouped', 100);


INSERT INTO `CategoryTemplate` (`Id`, `Name`, `ViewPath`, `DisplayOrder`) VALUES (1, 'Products in Grid or Lines', 'CategoryTemplate.ProductsInGridOrLines', 1);



INSERT INTO `TopicTemplate` (`Id`, `Name`, `ViewPath`, `DisplayOrder`) VALUES (1, 'Default template', 'TopicDetails', 1);



INSERT INTO `MeasureWeight` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (1, 'ounce(s)', 'ounce', CAST(16.00000000 AS Decimal(18, 8)), 1);
INSERT INTO `MeasureWeight` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (2, 'lb(s)', 'lb', CAST(1.00000000 AS Decimal(18, 8)), 2);
INSERT INTO `MeasureWeight` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (3, 'kg(s)', 'kg', CAST(0.45359237 AS Decimal(18, 8)), 3);
INSERT INTO `MeasureWeight` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (4, 'gram(s)', 'grams', CAST(453.59237000 AS Decimal(18, 8)), 4);



INSERT INTO `MeasureDimension` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (1, 'inch(es)', 'inches', CAST(1.00000000 AS Decimal(18, 8)), 1);
INSERT INTO `MeasureDimension` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (2, 'feet', 'feet', CAST(0.08333333 AS Decimal(18, 8)), 2);
INSERT INTO `MeasureDimension` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (3, 'meter(s)', 'meters', CAST(0.02540000 AS Decimal(18, 8)), 3);
INSERT INTO `MeasureDimension` (`Id`, `Name`, `SystemKeyword`, `Ratio`, `DisplayOrder`) VALUES (4, 'millimetre(s)', 'millimetres', CAST(25.40000000 AS Decimal(18, 8)), 4);



INSERT INTO `Language` (`Id`, `Name`, `LanguageCulture`, `UniqueSeoCode`, `FlagImageFileName`, `Rtl`, `LimitedToStores`, `DefaultCurrencyId`, `Published`, `DisplayOrder`) VALUES (1, 'English', 'en-US', 'en', 'us.png', 0, 0, 0, 1, 1);


INSERT INTO `EmailAccount` (`Id`, `Email`, `DisplayName`, `Host`, `Port`, `Username`, `Password`, `EnableSsl`, `UseDefaultCredentials`) VALUES (1, 'test@mail.com', 'Store name', 'smtp.mail.com', 25, '123', '123', 0, 0);


INSERT INTO `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (1, 'US Dollar', 'USD', CAST(1.0000 AS Decimal(18, 4)), 'en-US', '', 0, 1, 1, NOW(), NOW());
INSERT INTO `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (2, 'Australian Dollar', 'AUD', CAST(1.1400 AS Decimal(18, 4)), 'en-AU', '', 0, 0, 2, NOW(), NOW());
INSERT INTO `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (3, 'British Pound', 'GBP', CAST(0.6200 AS Decimal(18, 4)), 'en-GB', '', 0, 0, 3, NOW(), NOW());
INSERT INTO `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (4, 'Canadian Dollar', 'CAD', CAST(1.1200 AS Decimal(18, 4)), 'en-CA', '', 0, 0, 4, NOW(), NOW());
INSERT INTO `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (5, 'Chinese Yuan Renminbi', 'CNY', CAST(6.1100 AS Decimal(18, 4)), 'zh-C', '', 0, 0, 5, NOW(), NOW());
INSERT INTO `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (6, 'Euro', 'EUR', CAST(0.7900 AS Decimal(18, 4)), '', '€0.00', 0, 1, 6, NOW(), NOW());
INSERT INTO `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (7, 'Hong Kong Dollar', 'HKD', CAST(7.7500 AS Decimal(18, 4)), 'zh-HK', '', 0, 0, 7, NOW(), NOW());
INSERT INTO `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (8, 'Japanese Yen', 'JPY', CAST(109.2700 AS Decimal(18, 4)), 'ja-JP', '', 0, 0, 8, NOW(), NOW());
INSERT INTO `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (9, 'Russian Rouble', 'RUB', CAST(43.5100 AS Decimal(18, 4)), 'ru-RU', '', 0, 0, 9, NOW(), NOW());
INSERT INTO `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (10, 'Swedish Krona', 'SEK', CAST(7.3900 AS Decimal(18, 4)), 'sv-SE', '', 0, 0, 10, NOW(), NOW());
INSERT INTO `Currency` (`Id`, `Name`, `CurrencyCode`, `Rate`, `DisplayLocale`, `CustomFormatting`, `LimitedToStores`, `Published`, `DisplayOrder`, `CreatedOnUtc`, `UpdatedOnUtc`) VALUES (11, 'Romanian Leu', 'RO', CAST(3.5200 AS Decimal(18, 4)), 'ro-RO', '', 0, 0, 11, NOW(), NOW());


INSERT INTO `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `SubjectToAcl`, `LimitedToStores`) VALUES (1, 'AboutUs', 0, 0, 1, 0, 0, 20, 0, 0, NULL, 'About us', '<p>Put your &quot;About Us&quot; information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0);
INSERT INTO `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `SubjectToAcl`, `LimitedToStores`) VALUES (2, 'CheckoutAsGuestOrRegister', 0, 0, 0, 0, 0, 1, 0, 0, NULL, '', '<p><strong>Register and save time!</strong><br />Register with us for future convenience:</p><ul><li>Fast and easy check out</li><li>Easy access to your order history and status</li></ul>', 1, NULL, NULL, NULL, 0, 0);
INSERT INTO `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `SubjectToAcl`, `LimitedToStores`) VALUES (3, 'ConditionsOfUse', 0, 0, 1, 0, 0, 15, 0, 0, NULL, 'Conditions of Use', '<p>Put your conditions of use information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0);
INSERT INTO `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `SubjectToAcl`, `LimitedToStores`) VALUES (4, 'ContactUs', 0, 0, 0, 0, 0, 1, 0, 0, NULL, '', '<p>Put your contact information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0);
INSERT INTO `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `SubjectToAcl`, `LimitedToStores`) VALUES (5, 'ForumWelcomeMessage', 0, 0, 0, 0, 0, 1, 0, 0, NULL, 'Forums', '<p>Put your welcome message here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0)
INSERT INTO `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `SubjectToAcl`, `LimitedToStores`) VALUES (6, 'HomePageText', 0, 0, 0, 0, 0, 1, 0, 0, NULL, 'Welcome to our store', '<p>Online shopping is the process consumers go through to purchase products or services over the Internet. You can edit this in the admin site.</p><p>If you have questions, see the <a href="http://www.nopcommerce.com/documentation.aspx">Documentation</a>, or post in the <a href="http://www.nopcommerce.com/boards/">Forums</a> at <a href="http://www.nopcommerce.com">nopCommerce.com</a></p>', 1, NULL, NULL, NULL, 0, 0);
INSERT INTO `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `SubjectToAcl`, `LimitedToStores`) VALUES (7, 'LoginRegistrationInfo', 0, 0, 0, 0, 0, 1, 0, 0, NULL, 'About login / registration', '<p>Put your login / registration information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0);
INSERT INTO `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `SubjectToAcl`, `LimitedToStores`) VALUES (8, 'PrivacyInfo', 0, 0, 1, 0, 0, 10, 0, 0, NULL, 'Privacy notice', '<p>Put your privacy policy information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0);
INSERT INTO `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `SubjectToAcl`, `LimitedToStores`) VALUES (9, 'PageNotFound', 0, 0, 0, 0, 0, 1, 0, 0, NULL, '', '<p><strong>The page you requested was not found, and we have a fine guess why.</strong></p><ul><li>If you typed the URL directly, please make sure the spelling is correct.</li><li>The page no longer exists. In this case, we profusely apologize for the inconvenience and for any damage this may cause.</li></ul>', 1, NULL, NULL, NULL, 0, 0);
INSERT INTO `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `SubjectToAcl`, `LimitedToStores`) VALUES (10, 'ShippingInfo', 0, 0, 1, 0, 0, 5, 0, 0, NULL, 'Shipping & returns', '<p>Put your shipping &amp; returns information here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0);
INSERT INTO `Topic` (`Id`, `SystemName`, `IncludeInSitemap`, `IncludeInTopMenu`, `IncludeInFooterColumn1`, `IncludeInFooterColumn2`, `IncludeInFooterColumn3`, `DisplayOrder`, `AccessibleWhenStoreClosed`, `IsPasswordProtected`, `Password`, `Title`, `Body`, `TopicTemplateId`, `MetaKeywords`, `MetaDescription`, `MetaTitle`, `SubjectToAcl`, `LimitedToStores`) VALUES (11, 'ApplyVendor', 0, 0, 0, 0, 0, 1, 0, 0, NULL, '', '<p>Put your apply vendor instructions here. You can edit this in the admin site.</p>', 1, NULL, NULL, NULL, 0, 0);



INSERT INTO `TaxCategory` (`Id`, `Name`, `DisplayOrder`) VALUES (1, 'Books', 1);
INSERT INTO `TaxCategory` (`Id`, `Name`, `DisplayOrder`) VALUES (2, 'Electronics & Software', 5);
INSERT INTO `TaxCategory` (`Id`, `Name`, `DisplayOrder`) VALUES (3, 'Downloadable Products', 10);
INSERT INTO `TaxCategory` (`Id`, `Name`, `DisplayOrder`) VALUES (4, 'Jewelry', 15);
INSERT INTO `TaxCategory` (`Id`, `Name`, `DisplayOrder`) VALUES (5, 'Apparel', 20);



INSERT INTO `ShippingMethod` (`Id`, `Name`, `Description`, `DisplayOrder`) VALUES (1, 'Ground', 'Compared to other shipping methods, ground shipping is carried out closer to the earth', 1);
INSERT INTO `ShippingMethod` (`Id`, `Name`, `Description`, `DisplayOrder`) VALUES (2, 'Next Day Air', 'The one day air shipping', 3);
INSERT INTO `ShippingMethod` (`Id`, `Name`, `Description`, `DisplayOrder`) VALUES (3, '2nd Day Air', 'The two day air shipping', 3);


INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (1, 'United States', 1, 1, 'US', 'USA', 840, 0, 1, 1, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (2, 'Canada', 1, 1, 'CA', 'CA', 124, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (3, 'Argentina', 1, 1, 'AR', 'ARG', 32, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (4, 'Armenia', 1, 1, 'AM', 'ARM', 51, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (5, 'Aruba', 1, 1, 'AW', 'ABW', 533, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (6, 'Australia', 1, 1, 'AU', 'AUS', 36, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (7, 'Austria', 1, 1, 'AT', 'AUT', 40, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (8, 'Azerbaijan', 1, 1, 'AZ', 'AZE', 31, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (9, 'Bahamas', 1, 1, 'BS', 'BHS', 44, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (10, 'Bangladesh', 1, 1, 'BD', 'BGD', 50, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (11, 'Belarus', 1, 1, 'BY', 'BLR', 112, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (12, 'Belgium', 1, 1, 'BE', 'BEL', 56, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (13, 'Belize', 1, 1, 'BZ', 'BLZ', 84, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (14, 'Bermuda', 1, 1, 'BM', 'BMU', 60, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (15, 'Bolivia', 1, 1, 'BO', 'BOL', 68, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (16, 'Bosnia and Herzegowina', 1, 1, 'BA', 'BIH', 70, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (17, 'Brazil', 1, 1, 'BR', 'BRA', 76, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (18, 'Bulgaria', 1, 1, 'BG', 'BGR', 100, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (19, 'Cayman Islands', 1, 1, 'KY', 'CYM', 136, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (20, 'Chile', 1, 1, 'CL', 'CHL', 152, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (21, 'China', 1, 1, 'C', 'CH', 156, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (22, 'Colombia', 1, 1, 'CO', 'COL', 170, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (23, 'Costa Rica', 1, 1, 'CR', 'CRI', 188, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (24, 'Croatia', 1, 1, 'HR', 'HRV', 191, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (25, 'Cuba', 1, 1, 'CU', 'CUB', 192, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (26, 'Cyprus', 1, 1, 'CY', 'CYP', 196, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (27, 'Czech Republic', 1, 1, 'CZ', 'CZE', 203, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (28, 'Denmark', 1, 1, 'DK', 'DNK', 208, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (29, 'Dominican Republic', 1, 1, 'DO', 'DOM', 214, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (30, 'Ecuador', 1, 1, 'EC', 'ECU', 218, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (31, 'Egypt', 1, 1, 'EG', 'EGY', 818, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (32, 'Finland', 1, 1, 'FI', 'FI', 246, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (33, 'France', 1, 1, 'FR', 'FRA', 250, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (34, 'Georgia', 1, 1, 'GE', 'GEO', 268, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (35, 'Germany', 1, 1, 'DE', 'DEU', 276, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (36, 'Gibraltar', 1, 1, 'GI', 'GIB', 292, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (37, 'Greece', 1, 1, 'GR', 'GRC', 300, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (38, 'Guatemala', 1, 1, 'GT', 'GTM', 320, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (39, 'Hong Kong', 1, 1, 'HK', 'HKG', 344, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (40, 'Hungary', 1, 1, 'HU', 'HU', 348, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (41, 'India', 1, 1, 'I', 'IND', 356, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (42, 'Indonesia', 1, 1, 'ID', 'ID', 360, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (43, 'Ireland', 1, 1, 'IE', 'IRL', 372, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (44, 'Israel', 1, 1, 'IL', 'ISR', 376, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (45, 'Italy', 1, 1, 'IT', 'ITA', 380, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (46, 'Jamaica', 1, 1, 'JM', 'JAM', 388, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (47, 'Japan', 1, 1, 'JP', 'JP', 392, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (48, 'Jordan', 1, 1, 'JO', 'JOR', 400, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (49, 'Kazakhstan', 1, 1, 'KZ', 'KAZ', 398, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (50, 'Korea, Democratic People''s Republic of', 1, 1, 'KP', 'PRK', 408, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (51, 'Kuwait', 1, 1, 'KW', 'KWT', 414, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (52, 'Malaysia', 1, 1, 'MY', 'MYS', 458, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (53, 'Mexico', 1, 1, 'MX', 'MEX', 484, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (54, 'Netherlands', 1, 1, 'NL', 'NLD', 528, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (55, 'New Zealand', 1, 1, 'NZ', 'NZL', 554, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (56, 'Norway', 1, 1, 'NO', 'NOR', 578, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (57, 'Pakistan', 1, 1, 'PK', 'PAK', 586, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (58, 'Paraguay', 1, 1, 'PY', 'PRY', 600, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (59, 'Peru', 1, 1, 'PE', 'PER', 604, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (60, 'Philippines', 1, 1, 'PH', 'PHL', 608, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (61, 'Poland', 1, 1, 'PL', 'POL', 616, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (62, 'Portugal', 1, 1, 'PT', 'PRT', 620, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (63, 'Puerto Rico', 1, 1, 'PR', 'PRI', 630, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (64, 'Qatar', 1, 1, 'QA', 'QAT', 634, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (65, 'Romania', 1, 1, 'RO', 'ROM', 642, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (66, 'Russia', 1, 1, 'RU', 'RUS', 643, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (67, 'Saudi Arabia', 1, 1, 'SA', 'SAU', 682, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (68, 'Singapore', 1, 1, 'SG', 'SGP', 702, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (69, 'Slovakia (Slovak Republic)', 1, 1, 'SK', 'SVK', 703, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (70, 'Slovenia', 1, 1, 'SI', 'SV', 705, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (71, 'South Africa', 1, 1, 'ZA', 'ZAF', 710, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (72, 'Spain', 1, 1, 'ES', 'ESP', 724, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (73, 'Sweden', 1, 1, 'SE', 'SWE', 752, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (74, 'Switzerland', 1, 1, 'CH', 'CHE', 756, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (75, 'Taiwan', 1, 1, 'TW', 'TW', 158, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (76, 'Thailand', 1, 1, 'TH', 'THA', 764, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (77, 'Turkey', 1, 1, 'TR', 'TUR', 792, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (78, 'Ukraine', 1, 1, 'UA', 'UKR', 804, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (79, 'United Arab Emirates', 1, 1, 'AE', 'ARE', 784, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (80, 'United Kingdom', 1, 1, 'GB', 'GBR', 826, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (81, 'United States minor outlying islands', 1, 1, 'UM', 'UMI', 581, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (82, 'Uruguay', 1, 1, 'UY', 'URY', 858, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (83, 'Uzbekistan', 1, 1, 'UZ', 'UZB', 860, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (84, 'Venezuela', 1, 1, 'VE', 'VE', 862, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (85, 'Serbia', 1, 1, 'RS', 'SRB', 688, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (86, 'Afghanistan', 1, 1, 'AF', 'AFG', 4, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (87, 'Albania', 1, 1, 'AL', 'ALB', 8, 0, 1, 100, 0;
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (88, 'Algeria', 1, 1, 'DZ', 'DZA', 12, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (89, 'American Samoa', 1, 1, 'AS', 'ASM', 16, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (90, 'Andorra', 1, 1, 'AD', 'AND', 20, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (91, 'Angola', 1, 1, 'AO', 'AGO', 24, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (92, 'Anguilla', 1, 1, 'AI', 'AIA', 660, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (93, 'Antarctica', 1, 1, 'AQ', 'ATA', 10, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (94, 'Antigua and Barbuda', 1, 1, 'AG', 'ATG', 28, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (95, 'Bahrain', 1, 1, 'BH', 'BHR', 48, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (96, 'Barbados', 1, 1, 'BB', 'BRB', 52, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (97, 'Benin', 1, 1, 'BJ', 'BE', 204, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (98, 'Bhutan', 1, 1, 'BT', 'BT', 64, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (99, 'Botswana', 1, 1, 'BW', 'BWA', 72, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (100, 'Bouvet Island', 1, 1, 'BV', 'BVT', 74, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (101, 'British Indian Ocean Territory', 1, 1, 'IO', 'IOT', 86, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (102, 'Brunei Darussalam', 1, 1, 'B', 'BR', 96, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (103, 'Burkina Faso', 1, 1, 'BF', 'BFA', 854, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (104, 'Burundi', 1, 1, 'BI', 'BDI', 108, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (105, 'Cambodia', 1, 1, 'KH', 'KHM', 116, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (106, 'Cameroon', 1, 1, 'CM', 'CMR', 120, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (107, 'Cape Verde', 1, 1, 'CV', 'CPV', 132, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (108, 'Central African Republic', 1, 1, 'CF', 'CAF', 140, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (109, 'Chad', 1, 1, 'TD', 'TCD', 148, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (110, 'Christmas Island', 1, 1, 'CX', 'CXR', 162, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (111, 'Cocos (Keeling) Islands', 1, 1, 'CC', 'CCK', 166, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (112, 'Comoros', 1, 1, 'KM', 'COM', 174, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (113, 'Congo', 1, 1, 'CG', 'COG', 178, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (114, 'Cook Islands', 1, 1, 'CK', 'COK', 184, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (115, 'Cote D''Ivoire', 1, 1, 'CI', 'CIV', 384, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (116, 'Djibouti', 1, 1, 'DJ', 'DJI', 262, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (117, 'Dominica', 1, 1, 'DM', 'DMA', 212, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (118, 'El Salvador', 1, 1, 'SV', 'SLV', 222, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (119, 'Equatorial Guinea', 1, 1, 'GQ', 'GNQ', 226, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (120, 'Eritrea', 1, 1, 'ER', 'ERI', 232, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (121, 'Estonia', 1, 1, 'EE', 'EST', 233, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (122, 'Ethiopia', 1, 1, 'ET', 'ETH', 231, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (123, 'Falkland Islands (Malvinas)', 1, 1, 'FK', 'FLK', 238, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (124, 'Faroe Islands', 1, 1, 'FO', 'FRO', 234, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (125, 'Fiji', 1, 1, 'FJ', 'FJI', 242, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (126, 'French Guiana', 1, 1, 'GF', 'GUF', 254, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (127, 'French Polynesia', 1, 1, 'PF', 'PYF', 258, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (128, 'French Southern Territories', 1, 1, 'TF', 'ATF', 260, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (129, 'Gabon', 1, 1, 'GA', 'GAB', 266, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (130, 'Gambia', 1, 1, 'GM', 'GMB', 270, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (131, 'Ghana', 1, 1, 'GH', 'GHA', 288, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (132, 'Greenland', 1, 1, 'GL', 'GRL', 304, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (133, 'Grenada', 1, 1, 'GD', 'GRD', 308, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (134, 'Guadeloupe', 1, 1, 'GP', 'GLP', 312, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (135, 'Guam', 1, 1, 'GU', 'GUM', 316, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (136, 'Guinea', 1, 1, 'G', 'GI', 324, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (137, 'Guinea-bissau', 1, 1, 'GW', 'GNB', 624, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (138, 'Guyana', 1, 1, 'GY', 'GUY', 328, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (139, 'Haiti', 1, 1, 'HT', 'HTI', 332, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (140, 'Heard and Mc Donald Islands', 1, 1, 'HM', 'HMD', 334, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (141, 'Honduras', 1, 1, 'H', 'HND', 340, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (142, 'Iceland', 1, 1, 'IS', 'ISL', 352, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (143, 'Iran (Islamic Republic of)', 1, 1, 'IR', 'IR', 364, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (144, 'Iraq', 1, 1, 'IQ', 'IRQ', 368, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (145, 'Kenya', 1, 1, 'KE', 'KE', 404, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (146, 'Kiribati', 1, 1, 'KI', 'KIR', 296, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (147, 'Korea', 1, 1, 'KR', 'KOR', 410, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (148, 'Kyrgyzstan', 1, 1, 'KG', 'KGZ', 417, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (149, 'Lao People''s Democratic Republic', 1, 1, 'LA', 'LAO', 418, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (150, 'Latvia', 1, 1, 'LV', 'LVA', 428, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (151, 'Lebanon', 1, 1, 'LB', 'LB', 422, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (152, 'Lesotho', 1, 1, 'LS', 'LSO', 426, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (153, 'Liberia', 1, 1, 'LR', 'LBR', 430, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (154, 'Libyan Arab Jamahiriya', 1, 1, 'LY', 'LBY', 434, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (155, 'Liechtenstein', 1, 1, 'LI', 'LIE', 438, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (156, 'Lithuania', 1, 1, 'LT', 'LTU', 440, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (157, 'Luxembourg', 1, 1, 'LU', 'LUX', 442, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (158, 'Macau', 1, 1, 'MO', 'MAC', 446, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (159, 'Macedonia', 1, 1, 'MK', 'MKD', 807, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (160, 'Madagascar', 1, 1, 'MG', 'MDG', 450, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (161, 'Malawi', 1, 1, 'MW', 'MWI', 454, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (162, 'Maldives', 1, 1, 'MV', 'MDV', 462, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (163, 'Mali', 1, 1, 'ML', 'MLI', 466, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (164, 'Malta', 1, 1, 'MT', 'MLT', 470, 1, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (165, 'Marshall Islands', 1, 1, 'MH', 'MHL', 584, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (166, 'Martinique', 1, 1, 'MQ', 'MTQ', 474, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (167, 'Mauritania', 1, 1, 'MR', 'MRT', 478, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (168, 'Mauritius', 1, 1, 'MU', 'MUS', 480, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (169, 'Mayotte', 1, 1, 'YT', 'MYT', 175, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (170, 'Micronesia', 1, 1, 'FM', 'FSM', 583, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (171, 'Moldova', 1, 1, 'MD', 'MDA', 498, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (172, 'Monaco', 1, 1, 'MC', 'MCO', 492, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (173, 'Mongolia', 1, 1, 'M', 'MNG', 496, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (174, 'Montenegro', 1, 1, 'ME', 'MNE', 499, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (175, 'Montserrat', 1, 1, 'MS', 'MSR', 500, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (176, 'Morocco', 1, 1, 'MA', 'MAR', 504, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (177, 'Mozambique', 1, 1, 'MZ', 'MOZ', 508, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (178, 'Myanmar', 1, 1, 'MM', 'MMR', 104, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (179, 'Namibia', 1, 1, 'NA', 'NAM', 516, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (180, 'Nauru', 1, 1, 'NR', 'NRU', 520, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (181, 'Nepal', 1, 1, 'NP', 'NPL', 524, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (182, 'Netherlands Antilles', 1, 1, 'A', 'ANT', 530, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (183, 'New Caledonia', 1, 1, 'NC', 'NCL', 540, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (184, 'Nicaragua', 1, 1, 'NI', 'NIC', 558, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (185, 'Niger', 1, 1, 'NE', 'NER', 562, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (186, 'Nigeria', 1, 1, 'NG', 'NGA', 566, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (187, 'Niue', 1, 1, 'NU', 'NIU', 570, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (188, 'Norfolk Island', 1, 1, 'NF', 'NFK', 574, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (189, 'Northern Mariana Islands', 1, 1, 'MP', 'MNP', 580, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (190, 'Oman', 1, 1, 'OM', 'OM', 512, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (191, 'Palau', 1, 1, 'PW', 'PLW', 585, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (192, 'Panama', 1, 1, 'PA', 'PA', 591, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (193, 'Papua New Guinea', 1, 1, 'PG', 'PNG', 598, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (194, 'Pitcairn', 1, 1, 'P', 'PC', 612, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (195, 'Reunion', 1, 1, 'RE', 'REU', 638, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (196, 'Rwanda', 1, 1, 'RW', 'RWA', 646, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (197, 'Saint Kitts and Nevis', 1, 1, 'K', 'KNA', 659, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (198, 'Saint Lucia', 1, 1, 'LC', 'LCA', 662, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (199, 'Saint Vincent and the Grenadines', 1, 1, 'VC', 'VCT', 670, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (200, 'Samoa', 1, 1, 'WS', 'WSM', 882, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (201, 'San Marino', 1, 1, 'SM', 'SMR', 674, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (202, 'Sao Tome and Principe', 1, 1, 'ST', 'STP', 678, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (203, 'Senegal', 1, 1, 'S', 'SE', 686, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (204, 'Seychelles', 1, 1, 'SC', 'SYC', 690, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (205, 'Sierra Leone', 1, 1, 'SL', 'SLE', 694, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (206, 'Solomon Islands', 1, 1, 'SB', 'SLB', 90, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (207, 'Somalia', 1, 1, 'SO', 'SOM', 706, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (208, 'South Georgia & South Sandwich Islands', 1, 1, 'GS', 'SGS', 239, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (209, 'Sri Lanka', 1, 1, 'LK', 'LKA', 144, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (210, 'St. Helena', 1, 1, 'SH', 'SH', 654, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (211, 'St. Pierre and Miquelon', 1, 1, 'PM', 'SPM', 666, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (212, 'Sudan', 1, 1, 'SD', 'SD', 736, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (213, 'Suriname', 1, 1, 'SR', 'SUR', 740, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (214, 'Svalbard and Jan Mayen Islands', 1, 1, 'SJ', 'SJM', 744, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (215, 'Swaziland', 1, 1, 'SZ', 'SWZ', 748, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (216, 'Syrian Arab Republic', 1, 1, 'SY', 'SYR', 760, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (217, 'Tajikistan', 1, 1, 'TJ', 'TJK', 762, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (218, 'Tanzania', 1, 1, 'TZ', 'TZA', 834, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (219, 'Togo', 1, 1, 'TG', 'TGO', 768, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (220, 'Tokelau', 1, 1, 'TK', 'TKL', 772, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (221, 'Tonga', 1, 1, 'TO', 'TO', 776, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (222, 'Trinidad and Tobago', 1, 1, 'TT', 'TTO', 780, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (223, 'Tunisia', 1, 1, 'T', 'TU', 788, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (224, 'Turkmenistan', 1, 1, 'TM', 'TKM', 795, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (225, 'Turks and Caicos Islands', 1, 1, 'TC', 'TCA', 796, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (226, 'Tuvalu', 1, 1, 'TV', 'TUV', 798, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (227, 'Uganda', 1, 1, 'UG', 'UGA', 800, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (228, 'Vanuatu', 1, 1, 'VU', 'VUT', 548, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (229, 'Vatican City State (Holy See)', 1, 1, 'VA', 'VAT', 336, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (230, 'Viet Nam', 1, 1, 'V', 'VNM', 704, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (231, 'Virgin Islands (British)', 1, 1, 'VG', 'VGB', 92, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (232, 'Virgin Islands (U.S.)', 1, 1, 'VI', 'VIR', 850, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (233, 'Wallis and Futuna Islands', 1, 1, 'WF', 'WLF', 876, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (234, 'Western Sahara', 1, 1, 'EH', 'ESH', 732, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (235, 'Yemen', 1, 1, 'YE', 'YEM', 887, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (236, 'Zambia', 1, 1, 'ZM', 'ZMB', 894, 0, 1, 100, 0);
INSERT INTO `Country` (`Id`, `Name`, `AllowsBilling`, `AllowsShipping`, `TwoLetterIsoCode`, `ThreeLetterIsoCode`, `NumericIsoCode`, `SubjectToVat`, `Published`, `DisplayOrder`, `LimitedToStores`) VALUES (237, 'Zimbabwe', 1, 1, 'ZW', 'ZWE', 716, 0, 1, 100, 0);




INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (1, 1, 'AA (Armed Forces Americas)', 'AA', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (2, 1, 'AE (Armed Forces Europe)', 'AE', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (3, 1, 'Alabama', 'AL', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (4, 1, 'Alaska', 'AK', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (5, 1, 'American Samoa', 'AS', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (6, 1, 'AP (Armed Forces Pacific)', 'AP', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (7, 1, 'Arizona', 'AZ', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (8, 1, 'Arkansas', 'AR', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (9, 1, 'California', 'CA', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (10, 1, 'Colorado', 'CO', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (11, 1, 'Connecticut', 'CT', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (12, 1, 'Delaware', 'DE', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (13, 1, 'District of Columbia', 'DC', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (14, 1, 'Federated States of Micronesia', 'FM', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (15, 1, 'Florida', 'FL', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (16, 1, 'Georgia', 'GA', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (17, 1, 'Guam', 'GU', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (18, 1, 'Hawaii', 'HI', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (19, 1, 'Idaho', 'ID', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (20, 1, 'Illinois', 'IL', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (21, 1, 'Indiana', 'I', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (22, 1, 'Iowa', 'IA', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (23, 1, 'Kansas', 'KS', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (24, 1, 'Kentucky', 'KY', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (25, 1, 'Louisiana', 'LA', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (26, 1, 'Maine', 'ME', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (27, 1, 'Marshall Islands', 'MH', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (28, 1, 'Maryland', 'MD', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (29, 1, 'Massachusetts', 'MA', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (30, 1, 'Michigan', 'MI', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (31, 1, 'Minnesota', 'MN', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (32, 1, 'Mississippi', 'MS', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (33, 1, 'Missouri', 'MO', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (34, 1, 'Montana', 'MT', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (35, 1, 'Nebraska', 'NE', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (36, 1, 'Nevada', 'NV', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (37, 1, 'New Hampshire', 'NH', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (38, 1, 'New Jersey', 'NJ', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (39, 1, 'New Mexico', 'NM', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (40, 1, 'New York', 'NY', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (41, 1, 'North Carolina', 'NC', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (42, 1, 'North Dakota', 'ND', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (43, 1, 'Northern Mariana Islands', 'MP', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (44, 1, 'Ohio', 'OH', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (45, 1, 'Oklahoma', 'OK', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (46, 1, 'Oregon', 'OR', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (47, 1, 'Palau', 'PW', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (48, 1, 'Pennsylvania', 'PA', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (49, 1, 'Puerto Rico', 'PR', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (50, 1, 'Rhode Island', 'RI', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (51, 1, 'South Carolina', 'SC', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (52, 1, 'South Dakota', 'SD', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (53, 1, 'Tennessee', 'TN', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (54, 1, 'Texas', 'TX', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (55, 1, 'Utah', 'UT', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (56, 1, 'Vermont', 'VT', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (57, 1, 'Virgin Islands', 'VI', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (58, 1, 'Virginia', 'VA', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (59, 1, 'Washington', 'WA', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (60, 1, 'West Virginia', 'WV', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (61, 1, 'Wisconsin', 'WI', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (62, 1, 'Wyoming', 'WY', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (63, 2, 'Alberta', 'AB', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (64, 2, 'British Columbia', 'BC', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (65, 2, 'Manitoba', 'MB', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (66, 2, 'New Brunswick', 'NB', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (67, 2, 'Newfoundland and Labrador', 'NL', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (68, 2, 'Northwest Territories', 'NT', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (69, 2, 'Nova Scotia', 'NS', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (70, 2, 'Nunavut', 'NU', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (71, 2, 'Ontario', 'O', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (72, 2, 'Prince Edward Island', 'PE', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (73, 2, 'Quebec', 'QC', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (74, 2, 'Saskatchewan', 'SK', 1, 1);
INSERT INTO `StateProvince` (`Id`, `CountryId`, `Name`, `Abbreviation`, `Published`, `DisplayOrder`) VALUES (75, 2, 'Yukon Territory', 'YT', 1, 1);





INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (1, 'AddNewCategory', 'Add a new category', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (2, 'AddNewCheckoutAttribute', 'Add a new checkout attribute', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (3, 'AddNewCustomer', 'Add a new customer', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (4, 'AddNewCustomerRole', 'Add a new customer role', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (5, 'AddNewDiscount', 'Add a new discount', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (6, 'AddNewGiftCard', 'Add a new gift card', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (7, 'AddNewManufacturer', 'Add a new manufacturer', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (8, 'AddNewProduct', 'Add a new product', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (9, 'AddNewProductAttribute', 'Add a new product attribute', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (10, 'AddNewSetting', 'Add a new setting', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (11, 'AddNewSpecAttribute', 'Add a new specification attribute', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (12, 'AddNewWidget', 'Add a new widget', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (13, 'DeleteCategory', 'Delete category', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (14, 'DeleteCheckoutAttribute', 'Delete a checkout attribute', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (15, 'DeleteCustomer', 'Delete a customer', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (16, 'DeleteCustomerRole', 'Delete a customer role', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (17, 'DeleteDiscount', 'Delete a discount', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (18, 'DeleteGiftCard', 'Delete a gift card', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (19, 'DeleteManufacturer', 'Delete a manufacturer', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (20, 'DeleteProduct', 'Delete a product', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (21, 'DeleteProductAttribute', 'Delete a product attribute', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (22, 'DeleteReturnRequest', 'Delete a return request', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (23, 'DeleteSetting', 'Delete a setting', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (24, 'DeleteSpecAttribute', 'Delete a specification attribute', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (25, 'DeleteWidget', 'Delete a widget', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (26, 'EditCategory', 'Edit category', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (27, 'EditCheckoutAttribute', 'Edit a checkout attribute', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (28, 'EditCustomer', 'Edit a customer', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (29, 'EditCustomerRole', 'Edit a customer role', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (30, 'EditDiscount', 'Edit a discount', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (31, 'EditGiftCard', 'Edit a gift card', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (32, 'EditManufacturer', 'Edit a manufacturer', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (33, 'EditProduct', 'Edit a product', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (34, 'EditProductAttribute', 'Edit a product attribute', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (35, 'EditPromotionProviders', 'Edit promotion providers', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (36, 'EditReturnRequest', 'Edit a return request', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (37, 'EditSettings', 'Edit setting(s)', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (38, 'EditSpecAttribute', 'Edit a specification attribute', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (39, 'EditWidget', 'Edit a widget', 1);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (40, 'PublicStore.ViewCategory', 'Public store. View a category', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (41, 'PublicStore.ViewManufacturer', 'Public store. View a manufacturer', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (42, 'PublicStore.ViewProduct', 'Public store. View a product', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (43, 'PublicStore.PlaceOrder', 'Public store. Place an order', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (44, 'PublicStore.SendPM', 'Public store. Send PM', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (45, 'PublicStore.ContactUs', 'Public store. Use contact us form', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (46, 'PublicStore.AddToCompareList', 'Public store. Add to compare list', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (47, 'PublicStore.AddToShoppingCart', 'Public store. Add to shopping cart', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (48, 'PublicStore.AddToWishlist', 'Public store. Add to wishlist', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (49, 'PublicStore.Login', 'Public store. Login', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (50, 'PublicStore.Logout', 'Public store. Logout', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (51, 'PublicStore.AddProductReview', 'Public store. Add product review', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (52, 'PublicStore.AddNewsComment', 'Public store. Add news comment', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (53, 'PublicStore.AddBlogComment', 'Public store. Add blog comment', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (54, 'PublicStore.AddForumTopic', 'Public store. Add forum topic', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (55, 'PublicStore.EditForumTopic', 'Public store. Edit forum topic', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (56, 'PublicStore.DeleteForumTopic', 'Public store. Delete forum topic', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (57, 'PublicStore.AddForumPost', 'Public store. Add forum post', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (58, 'PublicStore.EditForumPost', 'Public store. Edit forum post', 0);
INSERT INTO `ActivityLogType` (`Id`, `SystemKeyword`, `Name`, `Enabled`) VALUES (59, 'PublicStore.DeleteForumPost', 'Public store. Delete forum post', 0);


INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (1, 'pdfsettings.logopictureid', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (2, 'pdfsettings.letterpagesizeenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (3, 'pdfsettings.renderordernotes', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (4, 'pdfsettings.disablepdfinvoicesforpendingorders', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (5, 'pdfsettings.fontfilename', 'FreeSerif.ttf', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (6, 'pdfsettings.invoicefootertextcolumn1', '', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (7, 'pdfsettings.invoicefootertextcolumn2', '', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (8, 'commonsettings.subjectfieldoncontactusform', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (9, 'commonsettings.usesystememailforcontactusform', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (10, 'commonsettings.usestoredproceduresifsupported', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (11, 'commonsettings.hideadvertisementsonadminarea', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (12, 'commonsettings.sitemapenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (13, 'commonsettings.sitemapincludecategories', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (14, 'commonsettings.sitemapincludemanufacturers', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (15, 'commonsettings.sitemapincludeproducts', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (16, 'commonsettings.displayjavascriptdisabledwarning', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (17, 'commonsettings.usefulltextsearch', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (18, 'commonsettings.fulltextmode', 'ExactMatch', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (19, 'commonsettings.log404errors', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (20, 'commonsettings.breadcrumbdelimiter', '/', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (21, 'commonsettings.renderxuacompatible', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (22, 'commonsettings.xuacompatiblevalue', 'IE=edge', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (23, 'commonsettings.ignorelogwordlist', '', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (24, 'seosettings.pagetitleseparator', '. ', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (25, 'seosettings.pagetitleseoadjustment', 'PagenameAfterStorename', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (26, 'seosettings.defaulttitle', 'Your store', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (27, 'seosettings.defaultmetakeywords', '', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (28, 'seosettings.defaultmetadescription', '', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (29, 'seosettings.generateproductmetadescription', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (30, 'seosettings.convertnonwesternchars', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (31, 'seosettings.allowunicodecharsinurls', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (32, 'seosettings.canonicalurlsenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (33, 'seosettings.wwwrequirement', 'NoMatter', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (34, 'seosettings.enablejsbundling', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (35, 'seosettings.enablecssbundling', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (36, 'seosettings.twittermetatags', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (37, 'seosettings.opengraphmetatags', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (38, 'seosettings.reservedurlrecordslugs', 'admin,install,recentlyviewedproducts,newproducts,compareproducts,clearcomparelist,setproductreviewhelpfulness,login,register,logout,cart,wishlist,emailwishlist,checkout,onepagecheckout,contactus,passwordrecovery,subscribenewsletter,blog,boards,inboxupdate,sentupdate,news,sitemap,search,config,eucookielawaccept,page-not-found', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (39, 'adminareasettings.defaultgridpagesize', '15', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (40, 'adminareasettings.gridpagesizes', '10, 15, 20, 50, 100', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (41, 'adminareasettings.richeditoradditionalsettings', '', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (42, 'adminareasettings.richeditorallowjavascript', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (43, 'catalogsettings.allowviewunpublishedproductpage', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (44, 'catalogsettings.displaydiscontinuedmessageforunpublishedproducts', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (45, 'catalogsettings.publishbackproductwhencancellingorders', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (46, 'catalogsettings.showproductsku', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (47, 'catalogsettings.showmanufacturerpartnumber', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (48, 'catalogsettings.showgtin', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (49, 'catalogsettings.showfreeshippingnotification', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (50, 'catalogsettings.allowproductsorting', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (51, 'catalogsettings.allowproductviewmodechanging', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (52, 'catalogsettings.defaultviewmode', 'grid', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (53, 'catalogsettings.showproductsfromsubcategories', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (54, 'catalogsettings.showcategoryproductnumber', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (55, 'catalogsettings.showcategoryproductnumberincludingsubcategories', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (56, 'catalogsettings.categorybreadcrumbenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (57, 'catalogsettings.showsharebutton', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (58, 'catalogsettings.pagesharecode', '<!-- AddThis Button BEGIN --><div class="addthis_toolbox addthis_default_style "><a class="addthis_button_preferred_1"></a><a class="addthis_button_preferred_2"></a><a class="addthis_button_preferred_3"></a><a class="addthis_button_preferred_4"></a><a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style"></a></div><script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=nopsolutions"></script><!-- AddThis Button END -->', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (59, 'catalogsettings.productreviewsmustbeapproved', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (60, 'catalogsettings.defaultproductratingvalue', '5', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (61, 'catalogsettings.allowanonymoususerstoreviewproduct', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (62, 'catalogsettings.notifystoreowneraboutnewproductreviews', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (63, 'catalogsettings.emailafriendenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (64, 'catalogsettings.allowanonymoususerstoemailafriend', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (65, 'catalogsettings.recentlyviewedproductsnumber', '3', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (66, 'catalogsettings.recentlyviewedproductsenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (67, 'catalogsettings.newproductsnumber', '6', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (68, 'catalogsettings.newproductsenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (69, 'catalogsettings.compareproductsenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (70, 'catalogsettings.compareproductsnumber', '4', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (71, 'catalogsettings.productsearchautocompleteenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (72, 'catalogsettings.productsearchautocompletenumberofproducts', '10', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (73, 'catalogsettings.showproductimagesinsearchautocomplete', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (74, 'catalogsettings.productsearchtermminimumlength', '3', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (75, 'catalogsettings.showbestsellersonhomepage', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (76, 'catalogsettings.numberofbestsellersonhomepage', '4', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (77, 'catalogsettings.searchpageproductsperpage', '6', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (78, 'catalogsettings.searchpageallowcustomerstoselectpagesize', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (79, 'catalogsettings.searchpagepagesizeoptions', '6, 3, 9, 18', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (80, 'catalogsettings.productsalsopurchasedenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (81, 'catalogsettings.productsalsopurchasednumber', '3', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (82, 'catalogsettings.ajaxprocessattributechange', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (83, 'catalogsettings.numberofproducttags', '15', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (84, 'catalogsettings.productsbytagpagesize', '6', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (85, 'catalogsettings.productsbytagallowcustomerstoselectpagesize', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (86, 'catalogsettings.productsbytagpagesizeoptions', '6, 3, 9, 18', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (87, 'catalogsettings.includeshortdescriptionincompareproducts', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (88, 'catalogsettings.includefulldescriptionincompareproducts', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (89, 'catalogsettings.includefeaturedproductsinnormallists', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (90, 'catalogsettings.displaytierpriceswithdiscounts', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (91, 'catalogsettings.ignorediscounts', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (92, 'catalogsettings.ignorefeaturedproducts', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (93, 'catalogsettings.ignoreacl', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (94, 'catalogsettings.ignorestorelimitations', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (95, 'catalogsettings.cacheproductprices', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (96, 'catalogsettings.maximumbackinstocksubscriptions', '200', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (97, 'catalogsettings.manufacturersblockitemstodisplay', '2', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (98, 'catalogsettings.displaytaxshippinginfofooter', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (99, 'catalogsettings.displaytaxshippinginfoproductdetailspage', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (100, 'catalogsettings.displaytaxshippinginfoproductboxes', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (101, 'catalogsettings.displaytaxshippinginfoshoppingcart', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (102, 'catalogsettings.displaytaxshippinginfowishlist', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (103, 'catalogsettings.displaytaxshippinginfoorderdetailspage', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (104, 'catalogsettings.defaultcategorypagesizeoptions', '6, 3, 9', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (105, 'catalogsettings.defaultcategorypagesize', '6', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (106, 'catalogsettings.defaultmanufacturerpagesizeoptions', '6, 3, 9', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (107, 'catalogsettings.defaultmanufacturerpagesize', '6', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (108, 'localizationsettings.defaultadminlanguageid', '1', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (109, 'localizationsettings.useimagesforlanguageselection', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (110, 'localizationsettings.seofriendlyurlsforlanguagesenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (111, 'localizationsettings.automaticallydetectlanguage', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (112, 'localizationsettings.loadalllocalerecordsonstartup', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (113, 'localizationsettings.loadalllocalizedpropertiesonstartup', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (114, 'localizationsettings.loadallurlrecordsonstartup', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (115, 'localizationsettings.ignorertlpropertyforadminarea', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (116, 'customersettings.usernamesenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (117, 'customersettings.checkusernameavailabilityenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (118, 'customersettings.allowuserstochangeusernames', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (119, 'customersettings.defaultpasswordformat', 'Hashed', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (120, 'customersettings.hashedpasswordformat', 'SHA1', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (121, 'customersettings.passwordminlength', '6', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (122, 'customersettings.passwordrecoverylinkdaysvalid', '7', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (123, 'customersettings.userregistrationtype', 'Standard', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (124, 'customersettings.allowcustomerstouploadavatars', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (125, 'customersettings.avatarmaximumsizebytes', '20000', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (126, 'customersettings.defaultavatarenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (127, 'customersettings.showcustomerslocation', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (128, 'customersettings.showcustomersjoindate', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (129, 'customersettings.allowviewingprofiles', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (130, 'customersettings.notifynewcustomerregistration', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (131, 'customersettings.hidedownloadableproductstab', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (132, 'customersettings.hidebackinstocksubscriptionstab', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (133, 'customersettings.downloadableproductsvalidateuser', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (134, 'customersettings.customernameformat', 'ShowFirstName', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (135, 'customersettings.newsletterenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (136, 'customersettings.newslettertickedbydefault', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (137, 'customersettings.hidenewsletterblock', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (138, 'customersettings.newsletterblockallowtounsubscribe', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (139, 'customersettings.onlinecustomerminutes', '20', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (140, 'customersettings.storelastvisitedpage', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (141, 'customersettings.suffixdeletedcustomers', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (142, 'customersettings.genderenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (143, 'customersettings.dateofbirthenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (144, 'customersettings.dateofbirthrequired', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (145, 'customersettings.dateofbirthminimumage', '', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (146, 'customersettings.companyenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (147, 'customersettings.companyrequired', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (148, 'customersettings.streetaddressenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (149, 'customersettings.streetaddressrequired', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (150, 'customersettings.streetaddress2enabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (151, 'customersettings.streetaddress2required', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (152, 'customersettings.zippostalcodeenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (153, 'customersettings.zippostalcoderequired', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (154, 'customersettings.cityenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (155, 'customersettings.cityrequired', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (156, 'customersettings.countryenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (157, 'customersettings.countryrequired', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (158, 'customersettings.stateprovinceenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (159, 'customersettings.stateprovincerequired', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (160, 'customersettings.phoneenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (161, 'customersettings.phonerequired', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (162, 'customersettings.faxenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (163, 'customersettings.faxrequired', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (164, 'customersettings.acceptprivacypolicyenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (165, 'addresssettings.companyenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (166, 'addresssettings.companyrequired', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (167, 'addresssettings.streetaddressenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (168, 'addresssettings.streetaddressrequired', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (169, 'addresssettings.streetaddress2enabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (170, 'addresssettings.streetaddress2required', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (171, 'addresssettings.zippostalcodeenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (172, 'addresssettings.zippostalcoderequired', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (173, 'addresssettings.cityenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (174, 'addresssettings.cityrequired', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (175, 'addresssettings.countryenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (176, 'addresssettings.stateprovinceenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (177, 'addresssettings.phoneenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (178, 'addresssettings.phonerequired', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (179, 'addresssettings.faxenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (180, 'addresssettings.faxrequired', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (181, 'mediasettings.avatarpicturesize', '120', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (182, 'mediasettings.productthumbpicturesize', '415', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (183, 'mediasettings.productdetailspicturesize', '550', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (184, 'mediasettings.productthumbpicturesizeonproductdetailspage', '100', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (185, 'mediasettings.associatedproductpicturesize', '220', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (186, 'mediasettings.categorythumbpicturesize', '450', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (187, 'mediasettings.manufacturerthumbpicturesize', '420', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (188, 'mediasettings.vendorthumbpicturesize', '450', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (189, 'mediasettings.cartthumbpicturesize', '80', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (190, 'mediasettings.minicartthumbpicturesize', '70', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (191, 'mediasettings.autocompletesearchthumbpicturesize', '20', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (192, 'mediasettings.defaultpicturezoomenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (193, 'mediasettings.maximumimagesize', '1980', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (194, 'mediasettings.defaultimagequality', '80', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (195, 'mediasettings.multiplethumbdirectories', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (196, 'storeinformationsettings.hidepoweredbynopcommerce', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (197, 'storeinformationsettings.storeclosed', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (198, 'storeinformationsettings.defaultstoretheme', 'DefaultClean', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (199, 'storeinformationsettings.allowcustomertoselecttheme', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (200, 'storeinformationsettings.displayminiprofilerinpublicstore', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (201, 'storeinformationsettings.displayeucookielawwarning', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (202, 'storeinformationsettings.facebooklink', 'http://www.facebook.com/nopCommerce', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (203, 'storeinformationsettings.twitterlink', 'https://twitter.com/nopCommerce', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (204, 'storeinformationsettings.youtubelink', 'http://www.youtube.com/user/nopCommerce', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (205, 'storeinformationsettings.googlepluslink', 'https://plus.google.com/+nopcommerce', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (206, 'externalauthenticationsettings.autoregisterenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (207, 'externalauthenticationsettings.requireemailvalidation', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (208, 'externalauthenticationsettings.activeauthenticationmethodsystemnames', '', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (209, 'rewardpointssettings.enabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (210, 'rewardpointssettings.exchangerate', '1', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (211, 'rewardpointssettings.minimumrewardpointstouse', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (212, 'rewardpointssettings.pointsforregistration', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (213, 'rewardpointssettings.pointsforpurchases_amount', '10', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (214, 'rewardpointssettings.pointsforpurchases_points', '1', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (215, 'rewardpointssettings.pointsforpurchases_awarded', 'Complete', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (216, 'rewardpointssettings.pointsforpurchases_canceled', 'Cancelled', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (217, 'rewardpointssettings.displayhowmuchwillbeearned', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (218, 'rewardpointssettings.pointsaccumulatedforallstores', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (219, 'currencysettings.displaycurrencylabel', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (220, 'currencysettings.primarystorecurrencyid', '1', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (221, 'currencysettings.primaryexchangeratecurrencyid', '1', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (222, 'currencysettings.activeexchangerateprovidersystemname', 'CurrencyExchange.MoneyConverter', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (223, 'currencysettings.autoupdateenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (224, 'measuresettings.basedimensionid', '1', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (225, 'measuresettings.baseweightid', '2', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (226, 'messagetemplatessettings.caseinvariantreplacement', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (227, 'messagetemplatessettings.color1', '#b9babe', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (228, 'messagetemplatessettings.color2', '#ebecee', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (229, 'messagetemplatessettings.color3', '#dde2e6', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (230, 'shoppingcartsettings.displaycartafteraddingproduct', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (231, 'shoppingcartsettings.displaywishlistafteraddingproduct', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (232, 'shoppingcartsettings.maximumshoppingcartitems', '1000', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (233, 'shoppingcartsettings.maximumwishlistitems', '1000', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (234, 'shoppingcartsettings.allowoutofstockitemstobeaddedtowishlist', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (235, 'shoppingcartsettings.moveitemsfromwishlisttocart', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (236, 'shoppingcartsettings.showproductimagesonshoppingcart', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (237, 'shoppingcartsettings.showproductimagesonwishlist', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (238, 'shoppingcartsettings.showdiscountbox', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (239, 'shoppingcartsettings.showgiftcardbox', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (240, 'shoppingcartsettings.crosssellsnumber', '4', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (241, 'shoppingcartsettings.emailwishlistenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (242, 'shoppingcartsettings.allowanonymoususerstoemailwishlist', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (243, 'shoppingcartsettings.minishoppingcartenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (244, 'shoppingcartsettings.showproductimagesinminishoppingcart', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (245, 'shoppingcartsettings.minishoppingcartproductnumber', '5', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (246, 'shoppingcartsettings.roundpricesduringcalculation', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (247, 'shoppingcartsettings.grouptierpricesfordistinctshoppingcartitems', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (248, 'shoppingcartsettings.allowcartitemediting', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (249, 'shoppingcartsettings.renderassociatedattributevaluequantity', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (250, 'ordersettings.isreorderallowed', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (251, 'ordersettings.minordersubtotalamount', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (252, 'ordersettings.minordersubtotalamountincludingtax', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (253, 'ordersettings.minordertotalamount', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (254, 'ordersettings.anonymouscheckoutallowed', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (255, 'ordersettings.termsofserviceonshoppingcartpage', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (256, 'ordersettings.termsofserviceonorderconfirmpage', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (257, 'ordersettings.onepagecheckoutenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (258, 'ordersettings.onepagecheckoutdisplayordertotalsonpaymentinfotab', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (259, 'ordersettings.disablebillingaddresscheckoutstep', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (260, 'ordersettings.disableordercompletedpage', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (261, 'ordersettings.attachpdfinvoicetoorderplacedemail', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (262, 'ordersettings.attachpdfinvoicetoorderpaidemail', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (263, 'ordersettings.attachpdfinvoicetoordercompletedemail', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (264, 'ordersettings.returnrequestsenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (265, 'ordersettings.numberofdaysreturnrequestavailable', '365', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (266, 'ordersettings.giftcards_activated_orderstatusid', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (267, 'ordersettings.giftcards_deactivated_orderstatusid', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (268, 'ordersettings.minimumorderplacementinterval', '30', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (269, 'securitysettings.forcesslforallpages', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (270, 'securitysettings.encryptionkey', '9900987817056773', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (271, 'securitysettings.adminareaallowedipaddresses', '', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (272, 'securitysettings.enablexsrfprotectionforadminarea', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (273, 'securitysettings.enablexsrfprotectionforpublicstore', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (274, 'securitysettings.honeypotenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (275, 'securitysettings.honeypotinputname', 'hpinput', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (276, 'shippingsettings.activeshippingratecomputationmethodsystemnames', 'Shipping.FixedRate', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (277, 'shippingsettings.allowpickupinstore', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (278, 'shippingsettings.pickupinstorefee', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (279, 'shippingsettings.usewarehouselocation', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (280, 'shippingsettings.notifycustomeraboutshippingfrommultiplelocations', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (281, 'shippingsettings.freeshippingoverxenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (282, 'shippingsettings.freeshippingoverxvalue', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (283, 'shippingsettings.freeshippingoverxincludingtax', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (284, 'shippingsettings.estimateshippingenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (285, 'shippingsettings.displayshipmenteventstocustomers', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (286, 'shippingsettings.displayshipmenteventstostoreowner', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (287, 'shippingsettings.shippingoriginaddressid', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (288, 'shippingsettings.returnvalidoptionsifthereareany', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (289, 'shippingsettings.bypassshippingmethodselectionifonlyone', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (290, 'shippingsettings.usecuberootmethod', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (291, 'paymentsettings.activepaymentmethodsystemnames', 'Payments.CheckMoneyOrder,Payments.Manual,Payments.PayInStore,Payments.PurchaseOrder', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (292, 'paymentsettings.allowrepostingpayments', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (293, 'paymentsettings.bypasspaymentmethodselectionifonlyone', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (294, 'taxsettings.taxbasedon', 'BillingAddress', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (295, 'taxsettings.taxdisplaytype', 'ExcludingTax', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (296, 'taxsettings.activetaxprovidersystemname', 'Tax.FixedRate', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (297, 'taxsettings.defaulttaxaddressid', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (298, 'taxsettings.displaytaxsuffix', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (299, 'taxsettings.displaytaxrates', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (300, 'taxsettings.pricesincludetax', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (301, 'taxsettings.allowcustomerstoselecttaxdisplaytype', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (302, 'taxsettings.hidezerotax', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (303, 'taxsettings.hidetaxinordersummary', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (304, 'taxsettings.forcetaxexclusionfromordersubtotal', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (305, 'taxsettings.shippingistaxable', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (306, 'taxsettings.shippingpriceincludestax', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (307, 'taxsettings.shippingtaxclassid', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (308, 'taxsettings.paymentmethodadditionalfeeistaxable', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (309, 'taxsettings.paymentmethodadditionalfeeincludestax', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (310, 'taxsettings.paymentmethodadditionalfeetaxclassid', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (311, 'taxsettings.euvatenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (312, 'taxsettings.euvatshopcountryid', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (313, 'taxsettings.euvatallowvatexemption', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (314, 'taxsettings.euvatusewebservice', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (315, 'taxsettings.euvatassumevalid', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (316, 'taxsettings.euvatemailadminwhennewvatsubmitted', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (317, 'datetimesettings.defaultstoretimezoneid', '', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (318, 'datetimesettings.allowcustomerstosettimezone', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (319, 'blogsettings.enabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (320, 'blogsettings.postspagesize', '10', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (321, 'blogsettings.allownotregistereduserstoleavecomments', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (322, 'blogsettings.notifyaboutnewblogcomments', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (323, 'blogsettings.numberoftags', '15', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (324, 'blogsettings.showheaderrssurl', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (325, 'newssettings.enabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (326, 'newssettings.allownotregistereduserstoleavecomments', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (327, 'newssettings.notifyaboutnewnewscomments', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (328, 'newssettings.shownewsonmainpage', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (329, 'newssettings.mainpagenewscount', '3', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (330, 'newssettings.newsarchivepagesize', '10', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (331, 'newssettings.showheaderrssurl', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (332, 'forumsettings.forumsenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (333, 'forumsettings.relativedatetimeformattingenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (334, 'forumsettings.allowcustomerstoeditposts', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (335, 'forumsettings.allowcustomerstomanagesubscriptions', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (336, 'forumsettings.allowgueststocreateposts', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (337, 'forumsettings.allowgueststocreatetopics', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (338, 'forumsettings.allowcustomerstodeleteposts', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (339, 'forumsettings.topicsubjectmaxlength', '450', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (340, 'forumsettings.strippedtopicmaxlength', '45', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (341, 'forumsettings.postmaxlength', '4000', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (342, 'forumsettings.topicspagesize', '10', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (343, 'forumsettings.postspagesize', '10', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (344, 'forumsettings.searchresultspagesize', '10', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (345, 'forumsettings.activediscussionspagesize', '50', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (346, 'forumsettings.latestcustomerpostspagesize', '10', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (347, 'forumsettings.showcustomerspostcount', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (348, 'forumsettings.forumeditor', 'BBCodeEditor', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (349, 'forumsettings.signaturesenabled', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (350, 'forumsettings.allowprivatemessages', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (351, 'forumsettings.showalertforpm', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (352, 'forumsettings.privatemessagespagesize', '10', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (353, 'forumsettings.forumsubscriptionspagesize', '10', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (354, 'forumsettings.notifyaboutprivatemessages', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (355, 'forumsettings.pmsubjectmaxlength', '450', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (356, 'forumsettings.pmtextmaxlength', '4000', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (357, 'forumsettings.homepageactivediscussionstopiccount', '5', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (358, 'forumsettings.activediscussionsfeedcount', '25', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (359, 'forumsettings.activediscussionsfeedenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (360, 'forumsettings.forumfeedsenabled', 'False', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (361, 'forumsettings.forumfeedcount', '10', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (362, 'forumsettings.forumsearchtermminimumlength', '3', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (363, 'vendorsettings.defaultvendorpagesizeoptions', '6, 3, 9', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (364, 'vendorsettings.vendorsblockitemstodisplay', '0', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (365, 'vendorsettings.showvendoronproductdetailspage', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (366, 'vendorsettings.allowcustomerstocontactvendors', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (367, 'vendorsettings.allowcustomerstoapplyforvendoraccount', 'True', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (368, 'emailaccountsettings.defaultemailaccountid', '1', 0);
INSERT INTO `Setting` (`Id`, `Name`, `Value`, `StoreId`) VALUES (369, 'widgetsettings.activewidgetsystemnames', 'Widgets.NivoSlider', 0);





INSERT INTO `ScheduleTask` (`Id`, `Name`, `Seconds`, `Type`, `Enabled`, `StopOnError`, `LeasedByMachineName`, `LeasedUntilUtc`, `LastStartUtc`, `LastEndUtc`, `LastSuccessUtc`) VALUES (1, 'Send emails', 60, 'Nop.Services.Messages.QueuedMessagesSendTask, Nop.Services', 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ScheduleTask` (`Id`, `Name`, `Seconds`, `Type`, `Enabled`, `StopOnError`, `LeasedByMachineName`, `LeasedUntilUtc`, `LastStartUtc`, `LastEndUtc`, `LastSuccessUtc`) VALUES (2, 'Keep alive', 300, 'Nop.Services.Common.KeepAliveTask, Nop.Services', 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ScheduleTask` (`Id`, `Name`, `Seconds`, `Type`, `Enabled`, `StopOnError`, `LeasedByMachineName`, `LeasedUntilUtc`, `LastStartUtc`, `LastEndUtc`, `LastSuccessUtc`) VALUES (3, 'Delete guests', 600, 'Nop.Services.Customers.DeleteGuestsTask, Nop.Services', 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ScheduleTask` (`Id`, `Name`, `Seconds`, `Type`, `Enabled`, `StopOnError`, `LeasedByMachineName`, `LeasedUntilUtc`, `LastStartUtc`, `LastEndUtc`, `LastSuccessUtc`) VALUES (4, 'Clear cache', 600, 'Nop.Services.Caching.ClearCacheTask, Nop.Services', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ScheduleTask` (`Id`, `Name`, `Seconds`, `Type`, `Enabled`, `StopOnError`, `LeasedByMachineName`, `LeasedUntilUtc`, `LastStartUtc`, `LastEndUtc`, `LastSuccessUtc`) VALUES (5, 'Clear log', 3600, 'Nop.Services.Logging.ClearLogTask, Nop.Services', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ScheduleTask` (`Id`, `Name`, `Seconds`, `Type`, `Enabled`, `StopOnError`, `LeasedByMachineName`, `LeasedUntilUtc`, `LastStartUtc`, `LastEndUtc`, `LastSuccessUtc`) VALUES (6, 'Update currency exchange rates', 3600, 'Nop.Services.Directory.UpdateExchangeRateTask, Nop.Services', 1, 0, NULL, NULL, NULL, NULL, NULL);




INSERT INTO `Address` (`Id`, `FirstName`, `LastName`, `Email`, `Company`, `CountryId`, `StateProvinceId`, `City`, `Address1`, `Address2`, `ZipPostalCode`, `PhoneNumber`, `FaxNumber`, `CustomAttributes`, `CreatedOnUtc`) VALUES (1, 'John', 'Smith', 'admin@yourStore.com', 'Nop Solutions', 1, 40, 'New York', '21 West 52nd Street', '', '10021', '12345678', '', NULL, NOW());
INSERT INTO `Address` (`Id`, `FirstName`, `LastName`, `Email`, `Company`, `CountryId`, `StateProvinceId`, `City`, `Address1`, `Address2`, `ZipPostalCode`, `PhoneNumber`, `FaxNumber`, `CustomAttributes`, `CreatedOnUtc`) VALUES (2, NULL, NULL, NULL, NULL, 1, 40, 'New York', '21 West 52nd Street', NULL, '10021', NULL, NULL, NULL, NOW());
INSERT INTO `Address` (`Id`, `FirstName`, `LastName`, `Email`, `Company`, `CountryId`, `StateProvinceId`, `City`, `Address1`, `Address2`, `ZipPostalCode`, `PhoneNumber`, `FaxNumber`, `CustomAttributes`, `CreatedOnUtc`) VALUES (3, NULL, NULL, NULL, NULL, 1, 9, 'Los Angeles', '300 South Spring Stree', NULL, '90013', NULL, NULL, NULL, NOW());
INSERT INTO `Address` (`Id`, `FirstName`, `LastName`, `Email`, `Company`, `CountryId`, `StateProvinceId`, `City`, `Address1`, `Address2`, `ZipPostalCode`, `PhoneNumber`, `FaxNumber`, `CustomAttributes`, `CreatedOnUtc`) VALUES (4, 'John', 'Smith', 'affiliate_email@gmail.com', 'Company name here...', 1, 40, 'New York', '21 West 52nd Street', NULL, '10021', '123456789', NULL, NULL, NOW());
SET IDENTITY_INSERT INTO `Address` OFF
GO




SET IDENTITY_INSERT INTO `Customer` ON
INSERT INTO `Customer` (`Id`, `CustomerGuid`, `Username`, `Email`, `Password`, `PasswordFormatId`, `PasswordSalt`, `AdminComment`, `IsTaxExempt`, `AffiliateId`, `VendorId`, `HasShoppingCartItems`, `Active`, `Deleted`, `IsSystemAccount`, `SystemName`, `LastIpAddress`, `CreatedOnUtc`, `LastLoginDateUtc`, `LastActivityDateUtc`, `BillingAddress_Id`, `ShippingAddress_Id`) VALUES (1, '814f3da6-567a-49bc-b508-f7c3a97d8a61', 'admin@yourStore.com', 'admin@yourStore.com', '7EEFED25B9C97805E24332E3E77A2B91C7EB5473', 1, 'Oni2/wU=', NULL, 0, 0, 0, 0, 1, 0, 0, NULL, '127.0.0.1', NOW(), NULL, NOW(), 1, 1)
INSERT INTO `Customer` (`Id`, `CustomerGuid`, `Username`, `Email`, `Password`, `PasswordFormatId`, `PasswordSalt`, `AdminComment`, `IsTaxExempt`, `AffiliateId`, `VendorId`, `HasShoppingCartItems`, `Active`, `Deleted`, `IsSystemAccount`, `SystemName`, `LastIpAddress`, `CreatedOnUtc`, `LastLoginDateUtc`, `LastActivityDateUtc`, `BillingAddress_Id`, `ShippingAddress_Id`) VALUES (2, 'defc2ca7-65a1-4878-8a15-4ac75779a62e', NULL, 'builtin@search_engine_record.com', NULL, 0, NULL, 'Built-in system guest record used for requests from search engines.', 0, 0, 0, 0, 1, 0, 1, 'SearchEngine', NULL, NOW(), NULL, NOW(), NULL, NULL)
INSERT INTO `Customer` (`Id`, `CustomerGuid`, `Username`, `Email`, `Password`, `PasswordFormatId`, `PasswordSalt`, `AdminComment`, `IsTaxExempt`, `AffiliateId`, `VendorId`, `HasShoppingCartItems`, `Active`, `Deleted`, `IsSystemAccount`, `SystemName`, `LastIpAddress`, `CreatedOnUtc`, `LastLoginDateUtc`, `LastActivityDateUtc`, `BillingAddress_Id`, `ShippingAddress_Id`) VALUES (3, 'bb3f07f7-86c5-4e30-899f-334aaea95cde', NULL, 'builtin@background-task-record.com', NULL, 0, NULL, 'Built-in system record used for background tasks.', 0, 0, 0, 0, 1, 0, 1, 'BackgroundTask', NULL, NOW(), NULL, NOW(), NULL, NULL)




INSERT INTO `CustomerAddresses` (`Customer_Id`, `Address_Id`) VALUES (1, 1);



INSERT INTO `GenericAttribute` (`Id`, `EntityId`, `KeyGroup`, `Key`, `Value`, `StoreId`) VALUES (1, 1, 'Customer', 'FirstName', 'John', 0);
INSERT INTO `GenericAttribute` (`Id`, `EntityId`, `KeyGroup`, `Key`, `Value`, `StoreId`) VALUES (2, 1, 'Customer', 'LastName', 'Smith', 0);



INSERT INTO `CustomerRole` (`Id`, `Name`, `FreeShipping`, `TaxExempt`, `Active`, `IsSystemRole`, `SystemName`, `PurchasedWithProductId`) VALUES (1, 'Administrators', 0, 0, 1, 1, 'Administrators', 0);
INSERT INTO `CustomerRole` (`Id`, `Name`, `FreeShipping`, `TaxExempt`, `Active`, `IsSystemRole`, `SystemName`, `PurchasedWithProductId`) VALUES (2, 'Forum Moderators', 0, 0, 1, 1, 'ForumModerators', 0);
INSERT INTO `CustomerRole` (`Id`, `Name`, `FreeShipping`, `TaxExempt`, `Active`, `IsSystemRole`, `SystemName`, `PurchasedWithProductId`) VALUES (3, 'Registered', 0, 0, 1, 1, 'Registered', 0);
INSERT INTO `CustomerRole` (`Id`, `Name`, `FreeShipping`, `TaxExempt`, `Active`, `IsSystemRole`, `SystemName`, `PurchasedWithProductId`) VALUES (4, 'Guests', 0, 0, 1, 1, 'Guests', 0);
INSERT INTO `CustomerRole` (`Id`, `Name`, `FreeShipping`, `TaxExempt`, `Active`, `IsSystemRole`, `SystemName`, `PurchasedWithProductId`) VALUES (5, 'Vendors', 0, 0, 1, 1, 'Vendors', 0);




INSERT INTO `Customer_CustomerRole_Mapping` (`Customer_Id`, `CustomerRole_Id`) VALUES (1, 1);
INSERT INTO `Customer_CustomerRole_Mapping` (`Customer_Id`, `CustomerRole_Id`) VALUES (1, 2);
INSERT INTO `Customer_CustomerRole_Mapping` (`Customer_Id`, `CustomerRole_Id`) VALUES (1, 3);
INSERT INTO `Customer_CustomerRole_Mapping` (`Customer_Id`, `CustomerRole_Id`) VALUES (2, 4);
INSERT INTO `Customer_CustomerRole_Mapping` (`Customer_Id`, `CustomerRole_Id`) VALUES (3, 4);







INSERT INTO `DeliveryDate` (`Id`, `Name`, `DisplayOrder`) VALUES (1, '1-2 days', 1);
INSERT INTO `DeliveryDate` (`Id`, `Name`, `DisplayOrder`) VALUES (2, '3-5 days', 5);
INSERT INTO `DeliveryDate` (`Id`, `Name`, `DisplayOrder`) VALUES (3, '1 week', 10);




INSERT INTO `ReturnRequestReason` (`Id`, `Name`, `DisplayOrder`) VALUES (1, 'Received Wrong Product', 1);
INSERT INTO `ReturnRequestReason` (`Id`, `Name`, `DisplayOrder`) VALUES (2, 'Wrong Product Ordered', 2);
INSERT INTO `ReturnRequestReason` (`Id`, `Name`, `DisplayOrder`) VALUES (3, 'There Was A Problem With The Product', 3);




INSERT INTO `ReturnRequestAction` (`Id`, `Name`, `DisplayOrder`) VALUES (1, 'Repair', 1);
INSERT INTO `ReturnRequestAction` (`Id`, `Name`, `DisplayOrder`) VALUES (2, 'Replacement', 2);
INSERT INTO `ReturnRequestAction` (`Id`, `Name`, `DisplayOrder`) VALUES (3, 'Store Credit', 3);
