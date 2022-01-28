using ShoppingListApp.Presentation.Converters;
using NUnit.Framework;
using ShoppingListApp.Domain;

namespace ShoppingListApp.Presentation.Tests
{
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
            Shop shop = new Shop();
            Assert.AreEqual("???", _converter.Convert(shop, null, null, null));
        }
        [Test]
        public void Convert_ShopIsNotNull_ShouldReturnNameOfShop()
        {
            Shop shop = new Shop {Name="winkel", Id=0};
            Assert.AreEqual("winkel", _converter.Convert(shop, null, null, null));
        }
    }
}
