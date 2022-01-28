using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebShop.AppLogic.Contracts;
using WebShop.Domain;

namespace WebShop.Infrastructure
{
    internal class CustomerRepository : ICustomerRepository
    {
        private WebShopContext _context;

        public CustomerRepository(WebShopContext webShopContext)
        {
            _context = webShopContext;
        }

        public Customer GetCustomerByUserName(string userName)
        {
            var result = from customer in _context.Customer
                       where customer.UserName == userName
                       select customer;

            return result as Customer;
        }
    }
}
