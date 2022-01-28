using WebShop.Domain;

namespace WebShop.AppLogic.Contracts
{
    public interface IOrderRepository
    {
        void Add(Order newOrder);
    }
}
