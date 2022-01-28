using Microsoft.EntityFrameworkCore.Migrations;

namespace WebShop.Infrastructure.Migrations
{
    public partial class SeedData : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Customer",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(nullable: true),
                    UserName = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Customer", x => x.Id);
                });

            migrationBuilder.InsertData(
                table: "Customer",
                columns: new[] { "Id", "Name", "UserName" },
                values: new object[,]
                {
                    { 1, "Emir Ozdemir", "r1me" },
                    { 2, "Muhammet Tasci", "Tashiki" }
                });

            migrationBuilder.InsertData(
                table: "ProductCategory",
                columns: new[] { "Code", "Description" },
                values: new object[,]
                {
                    { "dress", "Dress" },
                    { "tshirt", "T-Shirt/Top/Polo" },
                    { "sweater", "Sweater" },
                    { "jacket", "Jacket/Blazer" },
                    { "pants", "Pants" },
                    { "blouse", "Shirt/Blouse" },
                    { "suit", "Suit" }
                });

            migrationBuilder.InsertData(
                table: "Product",
                columns: new[] { "Id", "CategoryCode", "Description", "Price" },
                values: new object[,]
                {
                    { 1, "dress", "Jersey dress S", 59.99m },
                    { 18, "pants", "Skinny Jeans G-Star L", 69.95m },
                    { 17, "pants", "Skinny Jeans G-Star M", 69.95m },
                    { 12, "pants", "Straightleg Stradivarius M", 29.99m },
                    { 11, "pants", "Straightleg Stradivarius S", 29.99m },
                    { 16, "jacket", "Jacket Antony Morato XL", 89.95m },
                    { 15, "jacket", "Jacket Antony Morato L", 89.95m },
                    { 10, "jacket", "Jacket Superdry L", 119.99m },
                    { 9, "jacket", "Jacket Superdry M", 119.99m },
                    { 14, "tshirt", "T-shirt Jack&Jones M", 10.40m },
                    { 13, "tshirt", "T-shirt Jack&Jones S", 10.40m },
                    { 8, "tshirt", "Longsleeve S.Oliver M", 55.99m },
                    { 7, "tshirt", "Longsleeve S.Oliver S", 55.99m },
                    { 6, "tshirt", "T-shirt Naf Naf - blue M", 10.50m },
                    { 5, "dress", "Cocktail dress L", 49.99m },
                    { 4, "dress", "Cocktail dress M", 49.99m },
                    { 3, "dress", "Jersey dress L", 59.99m },
                    { 2, "dress", "Jersey dress M", 59.99m },
                    { 19, "suit", "Boss suit M", 699.95m },
                    { 20, "suit", "Boss suit L", 699.95m }
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Customer");

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 1);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 2);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 3);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 4);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 5);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 6);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 7);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 8);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 9);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 10);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 11);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 12);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 13);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 14);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 15);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 16);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 17);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 18);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 19);

            migrationBuilder.DeleteData(
                table: "Product",
                keyColumn: "Id",
                keyValue: 20);

            migrationBuilder.DeleteData(
                table: "ProductCategory",
                keyColumn: "Code",
                keyValue: "blouse");

            migrationBuilder.DeleteData(
                table: "ProductCategory",
                keyColumn: "Code",
                keyValue: "sweater");

            migrationBuilder.DeleteData(
                table: "ProductCategory",
                keyColumn: "Code",
                keyValue: "dress");

            migrationBuilder.DeleteData(
                table: "ProductCategory",
                keyColumn: "Code",
                keyValue: "jacket");

            migrationBuilder.DeleteData(
                table: "ProductCategory",
                keyColumn: "Code",
                keyValue: "pants");

            migrationBuilder.DeleteData(
                table: "ProductCategory",
                keyColumn: "Code",
                keyValue: "suit");

            migrationBuilder.DeleteData(
                table: "ProductCategory",
                keyColumn: "Code",
                keyValue: "tshirt");
        }
    }
}
