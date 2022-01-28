using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using ShoppingListApp.Domain;
using System.Collections.Generic;

namespace ShoppingListApp.Data
{
    internal class ShoppingListContext : DbContext
    {
        public DbSet<ShoppingList> ShoppingList { get; set; }
        
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
            optionsBuilder
                .UseLoggerFactory(DebugLoggerFactory).EnableSensitiveDataLogging()
                .UseSqlServer("Server = (localdb)\\mssqllocaldb; Database = ShoppingListDb; Trusted_Connection = True");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Shop>()
                .Property(s => s.Name)
                .IsRequired()
                .HasMaxLength(50);
            modelBuilder.Entity<Shop>().ToTable("Shops");
            modelBuilder.Entity<ShoppingListItem>()
                .Property(s => s.Text)
                .IsRequired();
            modelBuilder.Entity<ShoppingListItem>()
                .ToTable("ShoppingListItems")
                .HasKey(s => new { s.ShoppingListId, s.Index });

            modelBuilder.Entity<Shop>().HasData(GetShopSeedData());
            modelBuilder.Entity<ShoppingList>().HasData(GetShoppingListSeedData());
            modelBuilder.Entity<ShoppingListItem>().HasData(GetShoppingListItemSeedData());

        }

        public void CreateOrUpdateDataBase()
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
