using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json.Serialization;
using WebApplication1.Model;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GetApplicants : ControllerBase
    {

        [HttpGet(Name = "GetApplicants")]
        public JsonResult GetApplicantsList()
        {
            DatabaseService ds = new DatabaseService();
            List<Applicant> applicantList = new List<Applicant>();
            applicantList = ds.GetApplicantsList();

            return new JsonResult(applicantList);
        }
    }
    
}
