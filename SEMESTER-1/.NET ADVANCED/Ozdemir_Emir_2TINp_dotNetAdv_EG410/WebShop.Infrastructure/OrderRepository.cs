using System;
using System.Collections.Generic;
using System.Text;
using WebShop.AppLogic.Contracts;
using WebShop.Domain;

namespace WebShop.Infrastructure
{
    internal class OrderRepository : IOrderRepository
    {
        private WebShopContext _context;

        public OrderRepository(WebShopContext webShopContext)
        {
            _context = webShopContext;
        }
        public void Add(Order newOrder)
        {
            _context.Order.Add(newOrder);
            _context.SaveChanges();
        }
    }
}
