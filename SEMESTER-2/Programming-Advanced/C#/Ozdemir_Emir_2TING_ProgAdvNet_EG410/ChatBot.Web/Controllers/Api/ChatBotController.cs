using System;
using ChatBot.AppLogic;
using ChatBot.Web.Models;
using Microsoft.AspNetCore.Mvc;

namespace ChatBot.Web.Controllers.Api
{
    [Route("api/[controller]")]
    [ApiController]
    public class ChatBotController : ControllerBase
    {
        private IAnswerGenerator _answerGenerator;
        public ChatBotController(IAnswerGenerator answerGenerator)
        {
            _answerGenerator = answerGenerator;
        }

        public IActionResult PostQuestion(QuestionModel model)
        {
            if (! ModelState.IsValid)
            {
                return BadRequest();
            }
            var answer = _answerGenerator.Answer(model.Question);
            return Ok(new { answer });
        }
    }
}
