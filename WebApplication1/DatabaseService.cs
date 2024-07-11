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
                                person.ApplicantNumber = SafeGetString(reader, "ApplicantNum") == "" ? 0 : Convert.ToInt32(reader["ApplicantNum"]);
                                person.FirstName = SafeGetString(reader, "FirstName");
                                person.MiddleName = SafeGetString(reader, "MiddleName");
                                person.LastName = SafeGetString(reader, "LastName");
                                person.Age = SafeGetString(reader, "Age") == "" ? 0 : Convert.ToInt32(reader["Age"]);
                                person.BirthDate = SafeGetString(reader, "BirthDate") == "" ? DateTime.MinValue : Convert.ToDateTime(reader["BirthDate"]); 
                                person.Sex = SafeGetString(reader, "Sex");
                                person.BirthPlace = SafeGetString(reader, "BirthPlace");
                                person.Citizenship = SafeGetString(reader, "Citizenship");
                                person.NameOfMother = SafeGetString(reader, "NameOfMother");
                                person.Address = SafeGetString(reader, "Address");
                                person.Height = SafeGetString(reader, "Height") == "" ? 0 : Convert.ToInt32(reader["Height"]);
                                person.Weight = SafeGetString(reader, "Weight") == "" ? 0 : Convert.ToInt32(reader["Weight"]);
                                person.CivilStatus = SafeGetString(reader, "CivilStatus");
                                person.Pregnant = SafeGetString(reader, "Pregnant");
                                person.PWD = SafeGetString(reader, "PWD");
                                person.MobileNumber = SafeGetString(reader, "MobileNum");
                                person.TelNumber = SafeGetString(reader, "TelNum");
                                person.EmailAddress = SafeGetString(reader, "EmailAdd");
                                person.EducationLevel = SafeGetString(reader, "EducationLevel");
                                person.CompLTN = SafeGetString(reader, "CompLTN");
                                person.HighestYrLvl = SafeGetString(reader, "HighestYrLvl");
                                person.GradDate = SafeGetString(reader, "GradDate") == "" ? DateTime.MinValue : Convert.ToDateTime(reader["GradDate"]);
                                person.Program = SafeGetString(reader, "Program");
                                person.Major = SafeGetString(reader, "Major");
                                person.SchoolName = SafeGetString(reader, "SchoolName");
                                person.SchoolAddress = SafeGetString(reader, "SchoolAdd");
                                person.InclusiveYears = SafeGetString(reader, "InclusiveYears");
                                person.PresentEmployment = SafeGetString(reader, "PresentEmployment");
                                person.Agency = SafeGetString(reader, "Agency");
                                person.AgencyAddress = SafeGetString(reader, "AgencyAdd");
                                person.JobTitle = SafeGetString(reader, "JobTitle");
                                person.JobYears = SafeGetString(reader, "JobYears") == "" ? 0 : Convert.ToInt32(reader["JobYears"]);
                                person.EmploymentStatus = SafeGetString(reader, "EmploymentStatus");

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
                            ([FirstName]
                            ,[MiddleName]
                            ,[LastName]
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
                            @FirstName
                            ,@MiddleName
                            ,@LastName
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
                    cmd.Parameters.AddWithValue("@FirstName", person.FirstName);
                    cmd.Parameters.AddWithValue("@MiddleName", person.MiddleName);
                    cmd.Parameters.AddWithValue("@LastName", person.LastName);
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
                                person.ApplicantNum = reader.GetInt32(0);
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

                    string sql = @"
                INSERT INTO person (firstname, lastname, middlename, birthdate, sex, citizenship, birthplace, nameofmother, address, height, weight, civilstatus, pregnant, pwd, mobilenumber, telnumber, emailaddress, educationlevel, compltn, graddate, highestyrlvl, program, major, schoolname, schooladdress, inclusiveyears, presentemployment, agency, agencyaddress, jobtitle, jobyears, employmentstatus) 
                VALUES (@firstname, @lastname, @middlename, @birthdate, @sex, @citizenship, @birthplace, @nameofmother, @address, @height, @weight, @civilstatus, @pregnant, @pwd, @mobilenumber, @telnumber, @emailaddress, @educationlevel, @compltn, @graddate, @highestyrlvl, @program, @major, @schoolname, @schooladdress, @inclusiveyears, @presentemployment, @agency, @agencyaddress, @jobtitle, @jobyears, @employmentstatus)";

                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandText = sql;
                    cmd.Parameters.AddWithValue("@firstname", person.FirstName);
                    cmd.Parameters.AddWithValue("@lastname", person.LastName);
                    cmd.Parameters.AddWithValue("@middlename", person.MiddleName);
                    cmd.Parameters.AddWithValue("@birthdate", person.BirthDate);
                    cmd.Parameters.AddWithValue("@sex", person.Sex);
                    cmd.Parameters.AddWithValue("@citizenship", person.Citizenship);
                    cmd.Parameters.AddWithValue("@birthplace", person.BirthPlace);
                    cmd.Parameters.AddWithValue("@nameofmother", person.NameOfMother);
                    cmd.Parameters.AddWithValue("@address", person.Address);
                    cmd.Parameters.AddWithValue("@height", person.Height);
                    cmd.Parameters.AddWithValue("@weight", person.Weight);
                    cmd.Parameters.AddWithValue("@civilstatus", person.CivilStatus);
                    cmd.Parameters.AddWithValue("@pregnant", person.Pregnant);
                    cmd.Parameters.AddWithValue("@pwd", person.Pwd);
                    cmd.Parameters.AddWithValue("@mobilenumber", person.MobileNumber);
                    cmd.Parameters.AddWithValue("@telnumber", person.TelNumber);
                    cmd.Parameters.AddWithValue("@emailaddress", person.EmailAddress);
                    cmd.Parameters.AddWithValue("@educationlevel", person.EducationLevel);
                    cmd.Parameters.AddWithValue("@compltn", person.Completion);
                    cmd.Parameters.AddWithValue("@graddate", person.GradDate);
                    cmd.Parameters.AddWithValue("@highestyrlvl", person.HighestYrLvl);
                    cmd.Parameters.AddWithValue("@program", person.Program);
                    cmd.Parameters.AddWithValue("@major", person.Major);
                    cmd.Parameters.AddWithValue("@schoolname", person.SchoolName);
                    cmd.Parameters.AddWithValue("@schooladdress", person.SchoolAddress);
                    cmd.Parameters.AddWithValue("@inclusiveyears", person.InclusiveYears);
                    cmd.Parameters.AddWithValue("@presentemployment", person.PresentEmployment);
                    cmd.Parameters.AddWithValue("@agency", person.Agency);
                    cmd.Parameters.AddWithValue("@agencyaddress", person.AgencyAddress);
                    cmd.Parameters.AddWithValue("@jobtitle", person.JobTitle);
                    cmd.Parameters.AddWithValue("@jobyears", person.JobYears);
                    cmd.Parameters.AddWithValue("@employmentstatus", person.EmploymentStatus);

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

                    cmd.Parameters.AddWithValue("@id", person.ApplicantNum);
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
        public string SafeGetString(SqlDataReader reader, string fieldName)
        {
            int ordinal = reader.GetOrdinal(fieldName);
            if (!reader.IsDBNull(ordinal))
                return reader[fieldName].ToString();
            return string.Empty;
        }

    }
}