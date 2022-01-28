using System.Collections.Generic;
using WebShop.Domain;

namespace WebShop.AppLogic.Contracts
{
    public interface IProductRepository
    {
        IReadOnlyList<Product> GetAllProductsOfCategory(string categoryCode);
    }
}
