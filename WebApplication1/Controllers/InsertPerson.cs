using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplication1.Model;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class InsertPerson : ControllerBase
    {

        [HttpPost(Name = "InsertPerson")]
        public string InsertPersonToDB(Person person)
        {
            DatabaseService ds = new DatabaseService();
            string response = ds.InsertPersonToDB(person);
            return response;
        }
    }

}
