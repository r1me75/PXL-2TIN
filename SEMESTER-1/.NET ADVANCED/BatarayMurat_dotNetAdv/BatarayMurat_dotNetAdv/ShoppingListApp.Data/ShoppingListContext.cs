using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using ShoppingListApp.Domain;
using System.Collections.Generic;

namespace ShoppingListApp.Data
{
    internal class ShoppingListContext : DbContext
    {
        public DbSet<ShoppingListItem> ShoppingListItems;
        public DbSet<Shop> Shops;
        public DbSet<ShoppingList> ShoppingLists;
        public ShoppingListContext() { }
        private static readonly ILoggerFactory DebugLoggerFactory
            = LoggerFactory.Create(builder =>
            {
                builder
                    .AddFilter((category, level) =>
                        category == DbLoggerCategory.Database.Command.Name
                        && level == LogLevel.Information)
                    .AddDebug();
            });

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(
                    "Server = (localdb)\\mssqllocaldb; Database = ShoppingListDb; Trusted_Connection = True; ");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Shop>().Property(prop => prop.Name).IsRequired().HasMaxLength(50);
            DebugLoggerFactory.CreateLogger("log").LogInformation("Created Shop Property requirements");
            modelBuilder.Entity<ShoppingListItem>().Property(prop => prop.Text).IsRequired();
            DebugLoggerFactory.CreateLogger("log").LogInformation("Created ShoppingListItem Property requirements");
            modelBuilder.Entity<ShoppingListItem>().HasKey(k => new { k.ShoppingListId, k.Index });
            DebugLoggerFactory.CreateLogger("log").LogInformation("Created ShoppingListItem PK");
            modelBuilder.Entity<Shop>().HasData(GetShopSeedData());
            DebugLoggerFactory.CreateLogger("log").LogInformation("Seeded data to Shop " + GetShopSeedData().ToString());
            modelBuilder.Entity<ShoppingListItem>().HasData(GetShoppingListItemSeedData());
            DebugLoggerFactory.CreateLogger("log").LogInformation("Seeded data to ShoppingListItem " + GetShoppingListItemSeedData().ToString());
            modelBuilder.Entity<ShoppingList>().HasData(GetShoppingListSeedData());
            DebugLoggerFactory.CreateLogger("log").LogInformation("Seeded data to ShoppingList " + GetShoppingListSeedData().ToString());
            modelBuilder.Entity<Shop>().ToTable("Shops");
            DebugLoggerFactory.CreateLogger("log").LogInformation("Created table Shops");
        }

        public void CreateOrUpdateDatabase()
        {
            Database.Migrate();
        }

        private List<Shop> GetShopSeedData()
        {
            return new List<Shop>
            {
                new Shop {Id = 1, Name = "Aldi"},
                new Shop {Id = 2, Name = "Lidl"},
                new Shop {Id = 3, Name = "Delhaize"}
            };
        }

        private List<ShoppingList> GetShoppingListSeedData()
        {
            return new List<ShoppingList>
            {
                new ShoppingList
                {
                    Id = 1,
                    Title = "Week 1",
                },
                new ShoppingList
                {
                    Id = 2,
                    Title = "Week 2"
                }
            };
        }

        private List<ShoppingListItem> GetShoppingListItemSeedData()
        {
            return new List<ShoppingListItem>
            {
                new ShoppingListItem {ShoppingListId = 1, Index = 0, Text = "Carrots", ShopId = 1},
                new ShoppingListItem {ShoppingListId = 1, Index = 1, Text = "Candy"},
                new ShoppingListItem {ShoppingListId = 1, Index = 2, Text = "Water", ShopId = 3},

                new ShoppingListItem {ShoppingListId = 2, Index = 0, Text = "Apples"},
                new ShoppingListItem {ShoppingListId = 2, Index = 1, Text = "Potatoes", ShopId = 2},
                new ShoppingListItem {ShoppingListId = 2, Index = 2, Text = "Chicken", ShopId = 2},
                new ShoppingListItem {ShoppingListId = 2, Index = 3, Text = "Cheese", ShopId = 2}
            };
        }
    }
}
