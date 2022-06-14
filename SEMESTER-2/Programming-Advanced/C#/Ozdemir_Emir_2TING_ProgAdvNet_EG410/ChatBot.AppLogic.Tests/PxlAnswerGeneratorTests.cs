using System;
using NUnit.Framework;

namespace ChatBot.AppLogic.Tests
{
    public class PxlAnswerGeneratorTests
    {
        [Test]
        public void Answer_ShouldReturnDontKnowWhenQuestionDoesNotContainPxl()
        {
            //Arrange
            var generator = new PxlAnswerGenerator();
            var question = Guid.NewGuid() + "?"; //a GUID can not contain 'Pxl' because it only contains hexadecimal characters (1 - 9 and A - F)

            //Act
            var answer = generator.Answer(question);

            //Assert
            Assert.That(answer, Is.EqualTo(PxlAnswerGenerator.DontKnowAnswer));
        }

        [TestCase("PXL")]
        [TestCase("pxl")]
        [TestCase("Pxl")]
        public void Answer_ShouldReferToPxlWebsiteWhenQuestionContainsPxl(string pxl)
        {
            //Arrange
            var generator = new PxlAnswerGenerator();
            var question = Guid.NewGuid() + pxl + "?"; //note that the questions contains a variation of 'pxl'

            //Act
            var answer = generator.Answer(question);

            //Assert
            Assert.That(answer, Is.EqualTo(PxlAnswerGenerator.ReferToPxlAnswer));
        }
    }
}