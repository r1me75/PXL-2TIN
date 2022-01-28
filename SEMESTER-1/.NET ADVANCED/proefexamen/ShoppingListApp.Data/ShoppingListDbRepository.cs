using Microsoft.EntityFrameworkCore;
using ShoppingListApp.Business;
using ShoppingListApp.Business.Contracts;
using ShoppingListApp.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShoppingListApp.Data
{
    internal class ShoppingListDbRepository : IShoppingListRepository
    {
        private ShoppingListContext _context;
        public ShoppingListDbRepository(ShoppingListContext shoppingListContext)
        {
            _context = shoppingListContext;
        }

        public IReadOnlyList<ShoppingListSummaryDto> GetAll()
        {
            return _context.ShoppingList.Select(x => new ShoppingListSummaryDto { Id = x.Id, Title = x.Title }).ToList();
        }

        public ShoppingList GetById(int id)
        {
            // Does not return null - so do if check...;
            return _context.ShoppingList.Where(x => x.Id == id).Include(x => x.Items).ThenInclude(x => x.Shop).First();         
        }
    }
}
