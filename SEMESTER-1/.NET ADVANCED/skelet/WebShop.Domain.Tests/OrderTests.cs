using NUnit.Framework;
using System;
using WebShop.AppLogic.Contracts;

namespace WebShop.Domain.Tests
{
    [TestFixture]
    public class OrderTests
    {   private Order order;
        private ICustomerRepository customerRepository;

      
        [Test]
        public void CreateNewForCustomer_ValidInput_ShouldReturnOrderWithMatchingPropertiesAndIdZero()
        {
            order = Order.CreateNewForCustomer(1, 1, 1);
            Order correctOrder = new Order { Amount = 1, Id = 0, CustomerId = 1, ProductId = 1 };

        }

        [Test]
        [TestCase(0)]
        [TestCase(-1)]
        public void CreateNewForCustomer_InvalidAmount_ShouldThrowArgumentExceptionWithAmountInMessage(int invalidAmount)
        {
            Assert.That(() => Order.CreateNewForCustomer(1, 1, invalidAmount),
                Throws.InstanceOf<ArgumentException>()
                .With.Message.Contains("amount"));
        }
    }
}
