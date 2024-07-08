using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System;
using System.Data;
using WebApplication1.Model;
using static System.Net.Mime.MediaTypeNames;

namespace WebApplication1
{
    public class DatabaseService
    {
        private readonly IConfiguration _configuration;
        string ConnectionString = "";
        public DatabaseService()
        {
            _configuration = new ConfigurationBuilder()
                    .AddJsonFile("appsettings.json", optional: false)
                    .Build();
            ConnectionString = _configuration.GetConnectionString("DBConnString");
        }

        public List<Person> GetPersonList()
        {
            List<Person> personList = new List<Person>();

            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    connection.Open();

                    String sql = "SELECT * FROM Person";

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Person person = new Person();
                                person.ID = reader.GetInt32(0);
                                person.FirstName = reader.GetString(1);
                                person.LastName = reader.GetString(2);

                                personList.Add(person);
                            }
                        }
                    }
                }
            }
            catch (SqlException e)
            {
                Console.WriteLine(e.ToString());
            }

            return personList;
        }

        public string InsertPersonToDB(Person person)
        {
            string response = "";
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    connection.Open();

                    string sql = "INSERT INTO person (firstname,lastname) values (@firstname,@lastname)";
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandText = sql;
                    cmd.Parameters.AddWithValue("@firstname", person.FirstName);
                    cmd.Parameters.AddWithValue("@lastname", person.LastName);

                    cmd.ExecuteNonQuery();

                }
                response = "";
            }
            catch (SqlException e)
            {
                response = e.ToString();
            }
            return response;
        }

        public string UpdatePersonDetails(Person person) 
        {
            string response = "";
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    connection.Open();

                    string sql = "UPDATE Person SET FirstName = @firstname, LastName = @lastname WHERE ID = @id";
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandText = sql;

                    cmd.Parameters.AddWithValue("@id", person.ID);
                    cmd.Parameters.AddWithValue("@firstname", person.FirstName);
                    cmd.Parameters.AddWithValue("@lastname", person.LastName);

                    cmd.ExecuteNonQuery();

                }
                response = "";
            }
            catch (SqlException e)
            {
                response = e.ToString();
            }
            return response;

        }

        public bool DeletePerson(int personId)
        {
            bool response = false;
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    connection.Open();

                    string sql = "DELETE FROM Person WHERE ID = @id";
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandText = sql;
                    cmd.Parameters.AddWithValue("@id", personId);

                    cmd.ExecuteNonQuery();

                }
                response = true;
            }
            catch (SqlException e)
            {
                response = false;
            }
            return response;

        }
    }
}