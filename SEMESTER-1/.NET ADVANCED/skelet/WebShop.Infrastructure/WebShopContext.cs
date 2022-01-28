using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using WebShop.Domain;

namespace WebShop.Infrastructure
{
    internal class WebShopContext : DbContext
    {
        public DbSet<Order> Order {  get; set; }
        public DbSet<Product> Product { get; set; }
        public DbSet<Customer> Customer { get; set; }

        public static readonly ILoggerFactory DebugLoggerFactory
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
                .UseSqlServer("Server = (localdb)\\mssqllocaldb; Database = WebShopData; Trusted_Connection = True");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ProductCategory>()
                .HasKey(pc => pc.Code);
            modelBuilder.Entity<ProductCategory>()
                .Property(pc => pc.Description)
                .IsRequired();

            modelBuilder.Entity<Product>()
                .Property(p => p.Description)
                .IsRequired();
            modelBuilder.Entity<Product>()
                .Property(p => p.CategoryCode)
                .IsRequired();

            modelBuilder.Entity<Customer>().HasData(CreateCustomerSeedData());
            modelBuilder.Entity<ProductCategory>().HasData(CreateProductCategorySeedData());
            modelBuilder.Entity<Product>().HasData(CreateProductSeedData());
        }

        public void CreateOrUpdateDataBase()
        {
            Database.Migrate();
        }
        private IEnumerable<Customer> CreateCustomerSeedData()
        {
            return new List<Customer>
            {
                new Customer { Id = 1, Name = "Emir Ozdemir", UserName = "r1me" },
                new Customer { Id = 2, Name = "Muhammet Tasci", UserName = "Tashiki" }
            };
        }

        private IEnumerable<ProductCategory> CreateProductCategorySeedData()
        {
            return new List<ProductCategory>
            {
                new ProductCategory { Code = "dress", Description = "Dress"},
                new ProductCategory { Code = "tshirt", Description = "T-Shirt/Top/Polo"},
                new ProductCategory { Code = "sweater", Description = "Sweater"},
                new ProductCategory { Code = "jacket", Description = "Jacket/Blazer"},
                new ProductCategory { Code = "pants", Description = "Pants"},
                new ProductCategory { Code = "blouse", Description = "Shirt/Blouse"},
                new ProductCategory { Code = "suit", Description = "Suit"}
            };
        }

        private IEnumerable<Product> CreateProductSeedData()
        {
            return new List<Product>
            {
                new Product { Id= 1, Description = "Jersey dress S", CategoryCode = "dress", Price = 59.99m },
                new Product { Id= 2, Description = "Jersey dress M", CategoryCode = "dress", Price = 59.99m },
                new Product { Id= 3, Description = "Jersey dress L", CategoryCode = "dress", Price = 59.99m },
                new Product { Id= 4, Description = "Cocktail dress M", CategoryCode = "dress", Price = 49.99m },
                new Product { Id= 5, Description = "Cocktail dress L", CategoryCode = "dress", Price = 49.99m },
                new Product { Id= 6, Description = "T-shirt Naf Naf - blue M", CategoryCode = "tshirt", Price = 10.50m },
                new Product { Id= 7, Description = "Longsleeve S.Oliver S", CategoryCode = "tshirt", Price = 55.99m },
                new Product { Id= 8, Description = "Longsleeve S.Oliver M", CategoryCode = "tshirt", Price = 55.99m },
                new Product { Id= 9, Description = "Jacket Superdry M", CategoryCode = "jacket", Price = 119.99m },
                new Product { Id= 10, Description = "Jacket Superdry L", CategoryCode = "jacket", Price = 119.99m },
                new Product { Id= 11, Description = "Straightleg Stradivarius S", CategoryCode = "pants", Price = 29.99m },
                new Product { Id= 12, Description = "Straightleg Stradivarius M", CategoryCode = "pants", Price = 29.99m },
                new Product { Id= 13, Description = "T-shirt Jack&Jones S", CategoryCode = "tshirt", Price = 10.40m },
                new Product { Id= 14, Description = "T-shirt Jack&Jones M", CategoryCode = "tshirt", Price = 10.40m },
                new Product { Id= 15, Description = "Jacket Antony Morato L", CategoryCode = "jacket", Price = 89.95m },
                new Product { Id= 16, Description = "Jacket Antony Morato XL", CategoryCode = "jacket", Price = 89.95m },
                new Product { Id= 17, Description = "Skinny Jeans G-Star M", CategoryCode = "pants", Price = 69.95m },
                new Product { Id= 18, Description = "Skinny Jeans G-Star L", CategoryCode = "pants", Price = 69.95m },
                new Product { Id= 19, Description = "Boss suit M", CategoryCode = "suit", Price = 699.95m },
                new Product { Id= 20, Description = "Boss suit L", CategoryCode = "suit", Price = 699.95m },
            };
        }
    }
}
