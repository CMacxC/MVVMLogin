using LoginForm.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace LoginForm.Repositories
{
    public class UserRepository : RepositoryBase, IUserRepository
    {
        public void Add(UserModel userModel)
        {
            throw new NotImplementedException();
        }

        public bool AuthenticateUser(NetworkCredential credential)
        {
            bool validUser;

            using (var con = getConnection())
            using (var command = new SqlCommand())
            {
                con.Open();
                command.Connection = con;
                command.CommandText = "SELECT * FROM [User] WHERE UserName = @username AND [Password] = @password";
                command.Parameters.Add("@username", SqlDbType.NVarChar).Value = credential.UserName;
                command.Parameters.Add("@password", SqlDbType.NVarChar).Value = credential.Password;
                validUser = command.ExecuteScalar() == null ? false : true;
            }

            return validUser;
        }

        public void Edit(UserModel userModel)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<UserModel> GetAll()
        {
            throw new NotImplementedException();
        }

        public UserModel GetbyId(int id)
        {
            throw new NotImplementedException();
        }

        public UserModel GetbyUsername(string username)
        {
            UserModel user = null;
            using (var con = getConnection())
            using (var command = new SqlCommand())
            {
                con.Open();
                command.Connection = con;
                command.CommandText = "SELECT * FROM [User] WHERE UserName = @username";
                command.Parameters.Add("@username", SqlDbType.NVarChar).Value = username;
                 using(var reader = command.ExecuteReader())
                {
                    if(reader.Read())
                    {
                        user = new UserModel()
                        {
                            Id = reader[0].ToString(),
                            UserName = reader[1].ToString(),
                            Password = String.Empty,
                            Name = reader[3].ToString(),
                            LastName = reader[4].ToString(),
                            Email = reader[5].ToString()
                        };
                    }
                }
            }

            return user;
        }

        public void Remove(int id)
        {
            throw new NotImplementedException();
        }
    }
}
