using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using WebShop.AppLogic.Contracts;
using WebShop.Domain;

namespace WebShop.UI
{
    public partial class ProductsWindow : Window
    { 
        private IProductRepository _productRepository;
        private IOrderRepository _orderRepository;
        private Customer _currentCustomer;
        public ProductsWindow(string productCategoryCode, 
            string productCategoryDescription, 
            Customer customer, 
            IProductRepository productRepository, 
            IOrderRepository orderRepository)
        {
            InitializeComponent();
            _productRepository = productRepository;
            _orderRepository = orderRepository;
            _currentCustomer = customer;
            
            this.Title = productCategoryDescription;
            productsListView.ItemsSource = _productRepository.GetAllProductsOfCategory(productCategoryCode);
        }

        private void ProductsListView_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //TODO: show the image of the selected product (if one is selected) on the right side
            Product product = productsListView.SelectedItem as Product;
            ChangeProductImage(product.Id);
        }

        private void OrderButton_Click(object sender, RoutedEventArgs e)
        {
            //TODO: create an Order instance using the CreateNewForCustomer factory method
            Product selectedProduct = productsListView.SelectedItem as Product;
            int amount = Convert.ToInt32(amountTextBox.Text);
            Order newOrder = Order.CreateNewForCustomer(_currentCustomer.Id, selectedProduct.Id, amount);
            //TODO: use the repository to store the order
            _orderRepository.Add(newOrder);
        }

        private void ChangeProductImage(int productId)
        {
            string fileName = $"ProductImages/{productId}.jpg";
            productImage.Source = new BitmapImage(new Uri(fileName, UriKind.Relative));
        }
    }
}
