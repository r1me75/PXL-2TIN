using System.Collections.Generic;
using System.Windows;
using ShoppingListApp.Business;
using ShoppingListApp.Business.Contracts;
using ShoppingListApp.Domain;

namespace ShoppingListApp.Presentation
{
    public partial class MainWindow : Window
    {
        private IShoppingListRepository _shoppingListRepository;
        private IReadOnlyList<ShoppingListSummaryDto> _shoppingLists;
        public MainWindow(IShoppingListRepository shoppingListRepository)
        {
            InitializeComponent();
            _shoppingListRepository = shoppingListRepository;
            _shoppingLists = _shoppingListRepository.GetAll();

            ShoppingListComboBox.ItemsSource = _shoppingLists;
            ShoppingListComboBox.SelectedItem = _shoppingLists?[0];

        }

        private void ShoppingListComboBox_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            ShoppingListSummaryDto selectedShoppingList = ShoppingListComboBox.SelectedItem as ShoppingListSummaryDto;
            ShoppingList shoppingList = _shoppingListRepository.GetById(selectedShoppingList.Id);
            DataContext = shoppingList;
        }
    }
}
