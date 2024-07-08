using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplication1.Model;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DeletePerson : ControllerBase
    {

        [HttpPost(Name = "DeletePerson")]
        public bool DeletePersonFromDB(int personId)
        {
            DatabaseService ds = new DatabaseService();
            bool response = ds.DeletePerson(personId);
            return response;
        }
    }

}
