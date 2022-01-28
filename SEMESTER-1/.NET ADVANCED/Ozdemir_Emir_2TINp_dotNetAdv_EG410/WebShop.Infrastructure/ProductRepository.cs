using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebShop.AppLogic.Contracts;
using WebShop.Domain;

namespace WebShop.Infrastructure
{
    internal class ProductRepository : IProductRepository
    {
        private WebShopContext _context;

        public ProductRepository(WebShopContext webShopContext)
        {
            _context = webShopContext;
        }

        public IReadOnlyList<Product> GetAllProductsOfCategory(string categoryCode)
        {
            return _context.Product.Where(p => p.CategoryCode == categoryCode).Include(p => p.Category).ToList();
        }
    }
}
