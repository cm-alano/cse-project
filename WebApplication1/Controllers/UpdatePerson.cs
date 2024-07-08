using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplication1.Model;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UpdatePerson : ControllerBase
    {

        [HttpPost(Name = "UpdatePerson")]
        public string UpdatePersonDetails(Person person)
        {
            DatabaseService ds = new DatabaseService();
            string response = ds.UpdatePersonDetails(person);
            return response;
        }
    }

}
