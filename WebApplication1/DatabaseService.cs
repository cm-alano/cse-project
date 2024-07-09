using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
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
        int PersonID = 0;
        public DatabaseService()
        {
            _configuration = new ConfigurationBuilder()
                    .AddJsonFile("appsettings.json", optional: false)
                    .Build();
            ConnectionString = _configuration.GetConnectionString("DBConnString");
        }

        public List<Applicant> GetApplicantsList()
        {
            List<Applicant> personList = new List<Applicant>();

            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    connection.Open();

                    String sql = "SELECT * FROM Applicant";

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Applicant person = new Applicant();
                                person.ApplicantNumber = reader.IsDBNull(0) ? 0 : reader.GetInt32(0); 
                                person.ApplicantName = reader.IsDBNull(1) ? "" : reader.GetString(1);
                                person.Age = reader.IsDBNull(2) ? 0 : reader.GetInt32(2);
                                person.BirthDate = reader.IsDBNull(3) ? DateTime.MinValue : reader.GetDateTime(3); 
                                person.Sex = reader.IsDBNull(4) ? "" : reader.GetString(4);
                                person.BirthPlace = reader.IsDBNull(5) ? "" : reader.GetString(5);
                                person.Citizenship = reader.IsDBNull(6) ? "" : reader.GetString(6);
                                person.NameOfMother = reader.IsDBNull(7) ? "" : reader.GetString(7);
                                person.Address = reader.IsDBNull(8) ? "" : reader.GetString(8);
                                person.Height = reader.IsDBNull(9) ? 0 : reader.GetInt32(9);
                                person.Weight = reader.IsDBNull(10) ? 0 : reader.GetInt32(10);
                                person.CivilStatus = reader.IsDBNull(11) ? "" : reader.GetString(11);
                                person.Pregnant = reader.IsDBNull(12) ? "" : reader.GetString(12); 
                                person.PWD = reader.IsDBNull(13) ? "" : reader.GetString(13);
                                person.Disability = reader.IsDBNull(14) ? "" : reader.GetString(14);
                                person.MobileNumber = reader.IsDBNull(15) ? "" : reader.GetString(15);
                                person.TelNumber = reader.IsDBNull(16) ? "" : reader.GetString(16);
                                person.EmailAddress = reader.IsDBNull(17) ? "" : reader.GetString(17);
                                person.EducationLevel = reader.IsDBNull(18) ? "" : reader.GetString(18);
                                person.CompLTN = reader.IsDBNull(19) ? "" : reader.GetString(19);
                                person.HighestYrLvl = reader.IsDBNull(20)? "" : reader.GetString(20);
                                person.GradDate = reader.IsDBNull(21) ? DateTime.MinValue : reader.GetDateTime(21);
                                person.Program = reader.IsDBNull(22) ? "" : reader.GetString(22);
                                person.Major = reader.IsDBNull(23) ? "" : reader.GetString(23);
                                person.SchoolName = reader.IsDBNull(24) ? "" : reader.GetString(24);
                                person.SchoolAddress = reader.IsDBNull(25) ? "" : reader.GetString(25);
                                person.InclusiveYears = reader.IsDBNull(26) ? "" : reader.GetString(26);
                                person.PresentEmployment = reader.IsDBNull(27) ? "" : reader.GetString(27);
                                person.Agency = reader.IsDBNull(28) ? "" : reader.GetString(28);
                                person.AgencyAddress = reader.IsDBNull(29) ? "" : reader.GetString(29);
                                person.JobTitle = reader.IsDBNull(30) ? "" : reader.GetString(30);
                                person.JobYears = reader.IsDBNull(31) ? 0 : reader.GetInt32(31);
                                person.EmploymentStatus = reader.IsDBNull(32) ? "" : reader.GetString(32);

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
        public int InsertApplicantToDB(Applicant person)
        {
            string response = "";
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    connection.Open();

                    string sql = @"INSERT INTO APPLICANT 
                            ([ApplicantName]
                            ,[Age]
                            ,[Birthdate]
                            ,[Sex]
                            ,[BirthPlace]
                            ,[Citizenship]
                            ,[NameOfMother]
                            ,[Address]
                            ,[Height]
                            ,[Weight]
                            ,[CivilStatus]
                            ,[Pregnant]
                            ,[PWD]
                            ,[Disability]
                            ,[MobileNum]
                            ,[TelNum]
                            ,[EmailAdd]
                            ,[EducationLevel]
                            ,[CompLTN]
                            ,[HighestYrLvL]
                            ,[GradDate]
                            ,[Program]
                            ,[Major]
                            ,[SchoolName]
                            ,[SchoolAdd]
                            ,[InclusiveYears]
                            ,[PresentEmployment]
                            ,[Agency]
                            ,[AgencyAdd]
                            ,[JobTitle]
                            ,[JobYears]
                            ,[EmploymentStatus]) 
                            OUTPUT INSERTED.ApplicantNum
                            values (
                            @ApplicantName
                            ,@Age
                            ,@Birthdate
                            ,@Sex
                            ,@BirthPlace
                            ,@Citizenship
                            ,@NameOfMother
                            ,@Address
                            ,@Height
                            ,@Weight
                            ,@CivilStatus
                            ,@Pregnant
                            ,@PWD
                            ,@Disability
                            ,@MobileNum
                            ,@TelNum
                            ,@EmailAdd
                            ,@EducationLevel
                            ,@CompLTN
                            ,@HighestYrLvL
                            ,@GradDate
                            ,@Program
                            ,@Major
                            ,@SchoolName
                            ,@SchoolAdd
                            ,@InclusiveYears
                            ,@PresentEmployment
                            ,@Agency
                            ,@AgencyAdd
                            ,@JobTitle
                            ,@JobYears
                            ,@EmploymentStatus
                            )";
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandText = sql;
                    cmd.Parameters.AddWithValue("@ApplicantName", person.ApplicantName);
                    cmd.Parameters.AddWithValue("@Age", person.Age);
                    cmd.Parameters.AddWithValue("@Birthdate", person.BirthDate);
                    cmd.Parameters.AddWithValue("@Sex", person.Sex);
                    cmd.Parameters.AddWithValue("@BirthPlace", person.BirthPlace);
                    cmd.Parameters.AddWithValue("@Citizenship", person.Citizenship);
                    cmd.Parameters.AddWithValue("@NameOfMother", person.NameOfMother);
                    cmd.Parameters.AddWithValue("@Address", person.Address);
                    cmd.Parameters.AddWithValue("@Height", person.Height);
                    cmd.Parameters.AddWithValue("@Weight", person.Weight);
                    cmd.Parameters.AddWithValue("@CivilStatus", person.CivilStatus);
                    cmd.Parameters.AddWithValue("@Pregnant", person.Pregnant);
                    cmd.Parameters.AddWithValue("@PWD", person.PWD);
                    cmd.Parameters.AddWithValue("@Disability", person.Disability);
                    cmd.Parameters.AddWithValue("@MobileNum", person.MobileNumber);
                    cmd.Parameters.AddWithValue("@TelNum", person.TelNumber);
                    cmd.Parameters.AddWithValue("@EmailAdd", person.EmailAddress);
                    cmd.Parameters.AddWithValue("@EducationLevel", person.EducationLevel);
                    cmd.Parameters.AddWithValue("@CompLTN", person.CompLTN);
                    cmd.Parameters.AddWithValue("@HighestYrLvL", person.HighestYrLvl);
                    cmd.Parameters.AddWithValue("@GradDate", person.GradDate);
                    cmd.Parameters.AddWithValue("@Program", person.Program);
                    cmd.Parameters.AddWithValue("@Major", person.Major);
                    cmd.Parameters.AddWithValue("@SchoolName", person.SchoolName);
                    cmd.Parameters.AddWithValue("@SchoolAdd", person.SchoolAddress);
                    cmd.Parameters.AddWithValue("@InclusiveYears", person.InclusiveYears);
                    cmd.Parameters.AddWithValue("@PresentEmployment", person.PresentEmployment);
                    cmd.Parameters.AddWithValue("@Agency", person.Agency);
                    cmd.Parameters.AddWithValue("@AgencyAdd", person.AgencyAddress);
                    cmd.Parameters.AddWithValue("@JobTitle", person.JobTitle);
                    cmd.Parameters.AddWithValue("@JobYears", person.JobYears);
                    cmd.Parameters.AddWithValue("@EmploymentStatus", person.EmploymentStatus);
                    
                    PersonID = (int)cmd.ExecuteScalar();

                }
            }
            catch (SqlException e)
            {
                //response = e.ToString();
            }
            return PersonID;
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