using System;
using ChatBot.Web.Models;
using Microsoft.AspNetCore.Mvc;

namespace ChatBot.Web.Controllers
{
    public class ChatRoomController : Controller
    {
        public const string StandardWelcomeMessage = "Hello, how can I help you?";
        [Route("/ChatRoom/HostedBy/{botName?}")]
        public IActionResult ChatBot(string botName = "Frank")
        {
            ChatBotViewModel viewModel = new ChatBotViewModel
            {
                BotName = botName,
                WelcomeMessage = StandardWelcomeMessage
            };

            return View(viewModel);
        }
    }
}