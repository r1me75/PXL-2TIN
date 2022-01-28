using Microsoft.EntityFrameworkCore.Migrations;

namespace ShoppingListApp.Data.Migrations
{
    public partial class SeedData : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.InsertData(
                table: "ShoppingList",
                columns: new[] { "Id", "Title" },
                values: new object[,]
                {
                    { 1, "Week 1" },
                    { 2, "Week 2" }
                });

            migrationBuilder.InsertData(
                table: "Shops",
                columns: new[] { "Id", "Name" },
                values: new object[,]
                {
                    { 1, "Aldi" },
                    { 2, "Lidl" },
                    { 3, "Delhaize" }
                });

            migrationBuilder.InsertData(
                table: "ShoppingListItems",
                columns: new[] { "ShoppingListId", "Index", "ShopId", "Text" },
                values: new object[,]
                {
                    { 1, 0, 1, "Carrots" },
                    { 1, 1, null, "Candy" },
                    { 1, 2, 3, "Water" },
                    { 2, 0, null, "Apples" },
                    { 2, 1, 2, "Potatoes" },
                    { 2, 2, 2, "Chicken" },
                    { 2, 3, 2, "Cheese" }
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "ShoppingListItems",
                keyColumns: new[] { "ShoppingListId", "Index" },
                keyValues: new object[] { 1, 0 });

            migrationBuilder.DeleteData(
                table: "ShoppingListItems",
                keyColumns: new[] { "ShoppingListId", "Index" },
                keyValues: new object[] { 1, 1 });

            migrationBuilder.DeleteData(
                table: "ShoppingListItems",
                keyColumns: new[] { "ShoppingListId", "Index" },
                keyValues: new object[] { 1, 2 });

            migrationBuilder.DeleteData(
                table: "ShoppingListItems",
                keyColumns: new[] { "ShoppingListId", "Index" },
                keyValues: new object[] { 2, 0 });

            migrationBuilder.DeleteData(
                table: "ShoppingListItems",
                keyColumns: new[] { "ShoppingListId", "Index" },
                keyValues: new object[] { 2, 1 });

            migrationBuilder.DeleteData(
                table: "ShoppingListItems",
                keyColumns: new[] { "ShoppingListId", "Index" },
                keyValues: new object[] { 2, 2 });

            migrationBuilder.DeleteData(
                table: "ShoppingListItems",
                keyColumns: new[] { "ShoppingListId", "Index" },
                keyValues: new object[] { 2, 3 });

            migrationBuilder.DeleteData(
                table: "ShoppingList",
                keyColumn: "Id",
                keyValue: 1);

            migrationBuilder.DeleteData(
                table: "ShoppingList",
                keyColumn: "Id",
                keyValue: 2);

            migrationBuilder.DeleteData(
                table: "Shops",
                keyColumn: "Id",
                keyValue: 1);

            migrationBuilder.DeleteData(
                table: "Shops",
                keyColumn: "Id",
                keyValue: 2);

            migrationBuilder.DeleteData(
                table: "Shops",
                keyColumn: "Id",
                keyValue: 3);
        }
    }
}
