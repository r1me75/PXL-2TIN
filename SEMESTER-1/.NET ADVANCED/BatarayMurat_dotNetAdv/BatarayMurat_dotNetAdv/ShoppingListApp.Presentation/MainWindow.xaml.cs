using System.Windows;
using ShoppingListApp.Business.Contracts;

namespace ShoppingListApp.Presentation
{
    public partial class MainWindow : Window
    {
        private IShoppingListRepository shoppingListRepository;
        public MainWindow(IShoppingListRepository shoppingListRepository)
        {
            this.shoppingListRepository = shoppingListRepository;
            //ShoppingListComboBox.ItemsSource = shoppingListRepository.GetAll();
            //if (shoppingListRepository.GetAll().Count > 0)
            //{
            //    ShoppingListComboBox.SelectedIndex = 0;
            //}
            InitializeComponent();
        }

        private void ShoppingListComboBox_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            DataContext = ShoppingListComboBox.SelectedItem;
        }
    }
}
