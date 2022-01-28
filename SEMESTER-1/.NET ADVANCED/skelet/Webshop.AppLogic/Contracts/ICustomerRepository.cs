using WebShop.Domain;

namespace WebShop.AppLogic.Contracts
{
    public interface ICustomerRepository
    {
        Customer GetCustomerByUserName(string userName);
    }
}
