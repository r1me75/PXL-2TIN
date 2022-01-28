using System.Windows;
using System.Windows.Controls;
using WebShop.AppLogic.Contracts;
using WebShop.Domain;

namespace WebShop.UI
{
    public partial class MainWindow : Window
    {
        private ICustomerRepository _customerRepository;
        private IWindowService _windowService;
        public MainWindow(ICustomerRepository customerRepository, IWindowService windowService)
        {
            InitializeComponent();
            _customerRepository = customerRepository;
            _windowService = windowService;
        }      

        private void CategoryButton_Click(object sender, RoutedEventArgs e)
        {
            //TODO: find out which button was clicked
            Button sourceButton = (Button)e.Source;
            //TODO: retrieve the code of the category (Tag)
            string code = sourceButton.Tag.ToString();
            //TODO: retrieve the description of the category (Content)
            string description = sourceButton.Content.ToString();
            //TODO: retrieve the customer by user name
            string username = userNameTextBox.Text;
            Customer customer = _customerRepository.GetCustomerByUserName(username);
            //TODO: open the ProductsWindow using the windowService
            _windowService.ShowProductsWindow(code, description, customer);
        }
    }
}
