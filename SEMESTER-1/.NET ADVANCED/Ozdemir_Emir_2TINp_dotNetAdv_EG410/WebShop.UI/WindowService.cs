using WebShop.AppLogic.Contracts;
using WebShop.Domain;

namespace WebShop.UI
{
    public class WindowService : IWindowService
    {
        private readonly IProductRepository _productRepository;
        private readonly IOrderRepository _orderRepository;

        public WindowService(IProductRepository productRepository, IOrderRepository orderRepository)
        {
            _productRepository = productRepository;
            _orderRepository = orderRepository;
        }

        public void ShowProductsWindow(string productCategoryCode, string productCategoryDescription, Customer customer)
        {
            var productsWindow = new ProductsWindow(productCategoryCode, productCategoryDescription, customer, _productRepository, _orderRepository);
            productsWindow.Show();
        }
    }
}