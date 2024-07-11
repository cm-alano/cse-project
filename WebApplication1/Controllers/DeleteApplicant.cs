using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplication1.Model;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DeleteApplicant : ControllerBase
    {

        [HttpPost(Name = "DeleteApplicant")]
        public bool DeletePersonFromDB(int personId)
        {
            DatabaseService ds = new DatabaseService();
            bool response = ds.DeleteApplicant(personId);
            return response;
        }
    }

}
