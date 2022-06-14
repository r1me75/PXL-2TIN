using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Text;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using SecureDemo.Api.Models;
using SecureDemo.Domain;
using SecureDemo.Logic.Contracts;

namespace SecureDemo.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    //[Authorize] //not needed because of the Authorize filter we added in Startup.cs
    public class ExamScoresController : ControllerBase
    {
        private readonly IExamScoreRepository _examScoreRepository;

        public ExamScoresController(IExamScoreRepository examScoreRepository)
        {
            _examScoreRepository = examScoreRepository;
        }

        [HttpPost]
        public IActionResult AddExamScore(ExamScoreModel model)
        {
            _examScoreRepository.AddScoreForUser(model.Course, model.Score, model.UserId);
            return Ok();
        }

        [HttpGet]
        public IActionResult GetAllScores()
        {
            IList<ExamScore> allScores = _examScoreRepository.GetAllScores();
            return Ok(allScores);
        }

        [HttpGet("average")]
        [AllowAnonymous]
        public IActionResult GetAverageScore()
        {
            double average = _examScoreRepository.GetAverageScore();
            return Ok(average);
        }

        [HttpGet("my-claims")]
        public IActionResult GetClaimsOfUser()
        {
            var userInfoBuilder = new StringBuilder();
            foreach (var userClaim in User.Claims)
            {
                userInfoBuilder.Append($"{userClaim.Type}: {userClaim.Value} * ");
            }
            return Ok(userInfoBuilder.ToString());
        }
    }
}
