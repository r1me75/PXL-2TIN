using System;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using ChatBot.AppLogic;
using ChatBot.Domain;
using Microsoft.AspNetCore.Authorization;

namespace ChatBot.Web.Controllers
{
    public class HomeController : Controller
    {
        private IFeedbackRepository _feedbackRepository;
        public HomeController(IFeedbackRepository feedbackRepository)
        {
            _feedbackRepository = feedbackRepository;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        [Authorize]
        public IActionResult Feedback()
        {
            return View(new Feedback { Id = 0, Score = 0, Message = null });
        }

        [HttpPost]
        [Authorize]
        public async Task<IActionResult> Feedback(Feedback model)
        {
            if (! ModelState.IsValid)
            {
                return View("Naughty");
            }

            await _feedbackRepository.AddAsync(model);
            return RedirectToAction(nameof(Index));
        }
    }
}
