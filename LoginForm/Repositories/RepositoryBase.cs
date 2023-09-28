using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace LoginForm.Repositories
{
    public abstract class RepositoryBase
    {
        private readonly string conString;

        public RepositoryBase()
        {
            conString = @"Data Source = SISTEMAS-02\SQLEXPRESS; Initial Catalog = MVVMLogin; User ID = ; Password = ; ";
        }

        public SqlConnection getConnection()
        {
            return new SqlConnection(conString);
        }
    }
}
