using ShoppingListApp.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ShoppingListApp.Business.Contracts;
using ShoppingListApp.Data;

namespace ShoppingListApp.Business
{
    internal class ShoppingListDbRepository : IShoppingListRepository
    {
        private ShoppingListContext context;
        public ShoppingListDbRepository(ShoppingListContext context)
        {
            this.context = context;
        }
        public IReadOnlyList<ShoppingListSummaryDto> GetAll()
        {
            if (context.ShoppingLists != null)
            {
                var shoppingLists = from list in context.ShoppingLists
                                    select new ShoppingListSummaryDto
                                    {
                                        Id = list.Id,
                                        Title = list.Title
                                    };
                return shoppingLists.ToList();
            }
            return null;
        }

        public ShoppingList GetById(int id)
        {
            var shops = from shop in context.ShoppingLists
                        where shop.Id == id
                        select new ShoppingList
                        {
                            Id = shop.Id,
                            Title = shop.Title,
                            Items = shop.Items
                        };
            
            if (shops == null)
            {
                return null;
            }
            return (ShoppingList)shops;
        }
    }
}
