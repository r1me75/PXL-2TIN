using System.Windows;
using ShoppingListApp.Business;
using ShoppingListApp.Data;

namespace ShoppingListApp.Presentation
{
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            var context = new ShoppingListContext();
            context.CreateOrUpdateDatabase();

            var repo = new ShoppingListInMemoryRepository();
            var mainWindow = new MainWindow(repo);
            mainWindow.Show();

        }
    }
}
