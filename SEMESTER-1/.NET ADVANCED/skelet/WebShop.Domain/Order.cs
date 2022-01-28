using System;

namespace WebShop.Domain
{
    public class Order
    {
        public int Id { get; set; }
        public Customer Customer { get; set; }
        public int CustomerId { get; set; }
        public Product Product { get; set; }
        public int ProductId { get; set; }
        public int Amount { get; set; }

        public static Order CreateNewForCustomer(int customerId, int productId, int amount)
        {
            if (amount <= 0)
            {
                throw new ArgumentException($"Invalid amount {amount}");
            }

            var order = new Order
            {
                ProductId = productId,
                Amount = amount,
                CustomerId = customerId
            };
            return order;
        }
    }
}
