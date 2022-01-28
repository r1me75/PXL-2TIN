using WebShop.Domain;

namespace WebShop.UI
{
    public interface IWindowService
    {
        void ShowProductsWindow(string productCategoryCode, string productCategoryDescription, Customer customer);
    }
}