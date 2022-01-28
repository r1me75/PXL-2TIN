using NUnit.Framework;
using ShoppingListApp.Domain;
using ShoppingListApp.Presentation.Converters;

namespace ShoppingListApp.Presentation.Tests
{
    [TestFixture]
    public class ShopConverterTests
    {
        private ShopConverter _converter;

        [SetUp]
        public void BeforeEachTest()
        {
            _converter = new ShopConverter();
        }

        [Test]
        public void Convert_ShopIsNull_ShouldReturnQuestionMarks()
        {
            // Assert
            Shop sut = null;
            // Act 
            var result = _converter.Convert(sut, null, null, null);
            // Arrange
            Assert.That(result, Is.EqualTo("???"));
        }

        [Test]
        public void Convert_ShopIsNotNull_ShouldReturnNameOfShop()
        {
            // Assert
            Shop sut = new Shop() { Id = 1, Name = "Shop 1" };
            // Act 
            var result = _converter.Convert(sut, null, null, null);
            // Arrange
            Assert.That(result, Is.EqualTo("Shop 1"));
        }
    }
}
