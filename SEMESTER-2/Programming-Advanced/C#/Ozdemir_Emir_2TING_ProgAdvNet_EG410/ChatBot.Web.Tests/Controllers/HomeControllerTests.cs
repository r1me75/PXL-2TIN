using ChatBot.AppLogic;
using ChatBot.Domain;
using ChatBot.Web.Controllers;
using Microsoft.AspNetCore.Mvc;
using Moq;
using NUnit.Framework;

namespace ChatBot.Web.Tests.Controllers
{
    public class HomeControllerTests
    {
        private Mock<IFeedbackRepository> _feedbackRepositoryMock;
        private HomeController _controller;
        [SetUp]
        public void SetUp()
        {
            _feedbackRepositoryMock = new Mock<IFeedbackRepository>();
            _controller = new HomeController(_feedbackRepositoryMock.Object);
        }


        [Test]
        public void Feedback_Get_ShouldReturnViewWithNewFeedbackModel()
        {
            //Tip: you may need to change the 'Arrange' and 'Act' parts. The 'Arrange' part should not be changed.

            //Arrange
            // Ik denk dat de Act niet verandert mag worden.

            //Act
            var result = _controller.Feedback() as ViewResult;

            //Assert
            Assert.That(result, Is.Not.Null);
            var model = result.Model as Feedback;
            Assert.That(model, Is.Not.Null);
            Assert.That(model.Id, Is.EqualTo(0));
            Assert.That(model.Score, Is.EqualTo(0));
            Assert.That(model.Message, Is.Null.Or.Empty);
        }

        [Test]
        public void Feedback_Post_ShouldSaveTheFeedbackAndRedirectToIndexAction()
        {
            Feedback feedback = new Feedback
            {
                Id = 1,
                Score = 10,
                Message = "Hello World"
            };

            _feedbackRepositoryMock.Setup(x => x.AddAsync(It.IsAny<Feedback>()));

            var redirectResult = _controller.Feedback(feedback).Result as RedirectToActionResult;

            Assert.That(redirectResult, Is.Not.Null);
            Assert.That(redirectResult.Permanent, Is.False);
            Assert.That(redirectResult.ActionName, Is.EqualTo(nameof(HomeController.Index)));


            _feedbackRepositoryMock.Verify(r => r.AddAsync(feedback), Times.Once);
        }
        [Test]
        public void Feedback_Post_ShouldReturnNaughtyViewIfModelIsInvalid()
        {
            Feedback feedback = new Feedback();
            _controller.ModelState.AddModelError("Score", "Score is not between 0 and 10");

            _feedbackRepositoryMock.Setup(x => x.AddAsync(It.IsAny<Feedback>()));

            var viewResult = _controller.Feedback(feedback).Result as ViewResult;

            Assert.That(viewResult, Is.Not.Null);
            Assert.That(viewResult.ViewName, Is.EqualTo("Naughty"));
            _feedbackRepositoryMock.Verify(r => r.AddAsync(It.IsAny<Feedback>()), Times.Never);
        }
    }
}