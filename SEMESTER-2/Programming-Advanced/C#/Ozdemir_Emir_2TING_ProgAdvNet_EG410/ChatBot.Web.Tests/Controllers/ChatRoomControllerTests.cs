
using ChatBot.Web.Controllers;
using ChatBot.Web.Models;
using Microsoft.AspNetCore.Mvc;
using NUnit.Framework;

namespace ChatBot.Web.Tests.Controllers
{
    [TestFixture]
    public class ChatRoomControllerTests
    {
        //Tips:
        //  Use the existing ViewModel class 'ChatBotViewModel'
        //  It is NOT needed to mock anything
        private ChatRoomController _controller;

        [SetUp]
        public void SetUp()
        {
            _controller = new ChatRoomController();
        }
        [Test]
        public void ChatBot_ShouldReturnViewWithPassedInBotNameAndStandardWelcomeMessage()
        {
            // Arrange
            ChatBotViewModel expectedResult = new ChatBotViewModel
            {
                BotName = "Emir",
                WelcomeMessage = ChatRoomController.StandardWelcomeMessage
            };

            // Act
            var viewResult = _controller.ChatBot(expectedResult.BotName) as ViewResult;
            ChatBotViewModel viewModel = viewResult.Model as ChatBotViewModel;

            // Assert
            Assert.That(viewResult, Is.Not.Null);
            Assert.That(viewModel.BotName, Is.EqualTo(expectedResult.BotName));
            Assert.That(viewModel.WelcomeMessage, Is.EqualTo(expectedResult.WelcomeMessage));

        }

        public void ChatBot_ShouldReturnViewWithBotNameFrankIfNoBotNameWasPassedIn()
        {
            var viewResult = _controller.ChatBot() as ViewResult;
            ChatBotViewModel viewModel = viewResult.Model as ChatBotViewModel;

            Assert.That(viewResult, Is.Not.Null);
            Assert.That(viewModel.BotName, Is.EqualTo("Frank"));
            Assert.That(viewModel.WelcomeMessage, Is.EqualTo(ChatRoomController.StandardWelcomeMessage));
        }
    }
}