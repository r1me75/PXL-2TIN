using ShoppingListApp.Data;
using System.Windows;

namespace ShoppingListApp.Presentation
{
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            ShoppingListContext context = new ShoppingListContext();
            context.CreateOrUpdateDataBase();
            //TODO: create an instance of a class that implements IShoppingListRepository
            ShoppingListDbRepository repository = new ShoppingListDbRepository(context);
            //TODO: create an instance of MainWindow
            MainWindow window = new MainWindow(repository);
            //TODO: show the instance of MainWindow
            window.Show();
        }
    }
}
