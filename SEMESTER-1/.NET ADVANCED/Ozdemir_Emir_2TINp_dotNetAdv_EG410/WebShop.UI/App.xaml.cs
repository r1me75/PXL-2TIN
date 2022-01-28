using System.Windows;
using WebShop.Infrastructure;

namespace WebShop.UI
{
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            WebShopContext webShopContext =  new WebShopContext();
            webShopContext.CreateOrUpdateDataBase();

            CustomerRepository customerRepository = new CustomerRepository(webShopContext);
            ProductRepository productRepository = new ProductRepository(webShopContext);
            OrderRepository orderRepository = new OrderRepository(webShopContext);

            WindowService windowService = new WindowService(productRepository, orderRepository);
            MainWindow window = new MainWindow(customerRepository, windowService);
            window.Show();

        }
    }
}
