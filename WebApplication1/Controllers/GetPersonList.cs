using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json.Serialization;
using WebApplication1.Model;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GetPersonList : ControllerBase
    {

        [HttpGet(Name = "GetPersonList")]
        public JsonResult GetPerson()
        {
            DatabaseService ds = new DatabaseService();
            List<Person> personList = new List<Person>();
            personList = ds.GetPersonList();

            return new JsonResult(personList);
        }
    }
    
}
