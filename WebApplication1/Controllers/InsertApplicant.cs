using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplication1.Model;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class InsertApplicant : ControllerBase
    {

        [HttpPost(Name = "InsertApplicant")]
        public int InsertApplicantToDB(Applicant person)
        {
            DatabaseService ds = new DatabaseService();
            int personId = ds.InsertApplicantToDB(person);
            return personId;
        }
    }

}
