using Nop.Core.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Common;
using System.Data.Entity;
using System.IO;
using System.Web.Hosting;
using MySql.Data.MySqlClient;
using Nop.Data.Initializers;

namespace Nop.Data
{
    public class MySqlDataProvider : IDataProvider
    {

        #region Utilities

        protected virtual string[] ParseCommands(string filePath, bool throwExceptionIfNonExists)
        {
            if (!File.Exists(filePath))
            {
                if (throwExceptionIfNonExists)
                    throw new ArgumentException(string.Format("Specified file doesn't exist - {0}", filePath));

                return new string[0];
            }


            var statements = new List<string>();
            using (var stream = File.OpenRead(filePath))
            using (var reader = new StreamReader(stream))
            {
                string statement;
                while ((statement = ReadNextStatementFromStream(reader)) != null)
                {
                    statements.Add(statement);
                }
            }

            return statements.ToArray();
        }

        protected virtual string ReadNextStatementFromStream(StreamReader reader)
        {
            var sb = new StringBuilder();

            while (true)
            {
                var lineOfText = reader.ReadLine();
                if (lineOfText == null)
                {
                    if (sb.Length > 0)
                        return sb.ToString();

                    return null;
                }

                if (lineOfText.TrimEnd().ToUpper() == "GO")
                    break;

                sb.Append(lineOfText + Environment.NewLine);
            }

            return sb.ToString();
        }

        #endregion

        /// <summary>
        /// A value indicating whether this data provider supports stored procedures
        /// </summary>
        public bool StoredProceduredSupported
        {
            get
            {
                return true;
            }
        }

        /// <summary>
        /// Gets a support database parameter object (used by stored procedures)
        /// </summary>
        /// <returns>Parameter</returns>
        public DbParameter GetParameter()
        {
            return new MySqlParameter();
        }

        /// <summary>
        /// Initialize connection factory
        /// </summary>
        public void InitConnectionFactory()
        {
            var connectionFactory = new MySqlConnectionFactory();
            //TODO fix compilation warning (below)
            #pragma warning disable 0618
            Database.DefaultConnectionFactory = connectionFactory;
        }

        /// <summary>
        /// Initialize database
        /// </summary>
        public void InitDatabase()
        {
            InitConnectionFactory();
            SetDatabaseInitializer();
        }

        /// <summary>
        /// Set database initializer
        /// </summary>
        public void SetDatabaseInitializer()
        {
            //pass some table names to ensure that we have nopCommerce 2.X installed
            var tablesToValidate = new[] { "Customer", "Discount", "Order", "Product", "ShoppingCartItem" };

            //custom commands (stored proedures, indexes)

            var customCommands = new List<string>();
            //use webHelper.MapPath instead of HostingEnvironment.MapPath which is not available in unit tests
            customCommands.AddRange(ParseCommands(HostingEnvironment.MapPath("~/App_Data/Install/MySql.Indexes.sql"), false));
            //use webHelper.MapPath instead of HostingEnvironment.MapPath which is not available in unit tests
            customCommands.AddRange(ParseCommands(HostingEnvironment.MapPath("~/App_Data/Install/MySql.StoredProcedures.sql"), false));

            var initializer = new CreateTablesIfNotExist<NopObjectContext>(tablesToValidate, customCommands.ToArray());
            Database.SetInitializer(initializer);
        }
    }
}
