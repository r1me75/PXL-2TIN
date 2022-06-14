using ChatBot.AppLogic;
using ChatBot.Web.Controllers.Api;
using ChatBot.Web.Models;
using Microsoft.AspNetCore.Mvc;
using Moq;
using NUnit.Framework;

namespace ChatBot.Web.Tests.Controllers.Api
{
    [TestFixture]
    public class ChatBotControllerTests
    {
        //Tip: Use the existing Model classes 'QuestionModel' and 'AnswerModel'
        private ChatBotController _controller;
        private Mock<IAnswerGenerator> _answerGeneratorMock;

        [SetUp]
        public void SetUp()
        {
            _answerGeneratorMock = new Mock<IAnswerGenerator>();
            _controller = new ChatBotController(_answerGeneratorMock.Object);
        }

        [Test]
        public void PostQuestion_ShouldReturnResultOfAnswerGenerator()
        {
            // Arrange
            var questionModel = new QuestionModel
            {
                Question = "Hello, is this pxl?"
            };
            var answerModel = new AnswerModel("Yes it is!");
            var answerObject = new { answer =  answerModel.Answer };

            _answerGeneratorMock.Setup(x => x.Answer(It.IsAny<string>())).Returns(answerModel.Answer);

            // Act
            var okResult = _controller.PostQuestion(questionModel) as OkObjectResult;

            // Assert
            Assert.That(okResult, Is.Not.Null);
            Assert.That(okResult.Value.ToString(), Is.EqualTo(answerObject.ToString()));
            _answerGeneratorMock.Verify(r => r.Answer(questionModel.Question), Times.Once);
        }

        [Test]
        public void PostQuestion_ShouldReturnBadRequestWhenNoQuestionMarkIsPresent()
        {
            _controller.ModelState.AddModelError("Question", "Question is Required!");

            var badRequestResult = _controller.PostQuestion(new QuestionModel {  Question = null }) as BadRequestResult;

            Assert.That(badRequestResult, Is.Not.Null);
            _answerGeneratorMock.Verify(r => r.Answer(It.IsAny<string>()), Times.Never);
        }
    }
}