﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using WebShop.Infrastructure;

namespace WebShop.Infrastructure.Migrations
{
    [DbContext(typeof(WebShopContext))]
    partial class WebShopContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.21")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("WebShop.Domain.Customer", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Customer");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Name = "Emir Ozdemir",
                            UserName = "r1me"
                        },
                        new
                        {
                            Id = 2,
                            Name = "Muhammet Tasci",
                            UserName = "Tashiki"
                        });
                });

            modelBuilder.Entity("WebShop.Domain.Product", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("CategoryCode")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<decimal>("Price")
                        .HasColumnType("decimal(18,2)");

                    b.HasKey("Id");

                    b.HasIndex("CategoryCode");

                    b.ToTable("Product");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            CategoryCode = "dress",
                            Description = "Jersey dress S",
                            Price = 59.99m
                        },
                        new
                        {
                            Id = 2,
                            CategoryCode = "dress",
                            Description = "Jersey dress M",
                            Price = 59.99m
                        },
                        new
                        {
                            Id = 3,
                            CategoryCode = "dress",
                            Description = "Jersey dress L",
                            Price = 59.99m
                        },
                        new
                        {
                            Id = 4,
                            CategoryCode = "dress",
                            Description = "Cocktail dress M",
                            Price = 49.99m
                        },
                        new
                        {
                            Id = 5,
                            CategoryCode = "dress",
                            Description = "Cocktail dress L",
                            Price = 49.99m
                        },
                        new
                        {
                            Id = 6,
                            CategoryCode = "tshirt",
                            Description = "T-shirt Naf Naf - blue M",
                            Price = 10.50m
                        },
                        new
                        {
                            Id = 7,
                            CategoryCode = "tshirt",
                            Description = "Longsleeve S.Oliver S",
                            Price = 55.99m
                        },
                        new
                        {
                            Id = 8,
                            CategoryCode = "tshirt",
                            Description = "Longsleeve S.Oliver M",
                            Price = 55.99m
                        },
                        new
                        {
                            Id = 9,
                            CategoryCode = "jacket",
                            Description = "Jacket Superdry M",
                            Price = 119.99m
                        },
                        new
                        {
                            Id = 10,
                            CategoryCode = "jacket",
                            Description = "Jacket Superdry L",
                            Price = 119.99m
                        },
                        new
                        {
                            Id = 11,
                            CategoryCode = "pants",
                            Description = "Straightleg Stradivarius S",
                            Price = 29.99m
                        },
                        new
                        {
                            Id = 12,
                            CategoryCode = "pants",
                            Description = "Straightleg Stradivarius M",
                            Price = 29.99m
                        },
                        new
                        {
                            Id = 13,
                            CategoryCode = "tshirt",
                            Description = "T-shirt Jack&Jones S",
                            Price = 10.40m
                        },
                        new
                        {
                            Id = 14,
                            CategoryCode = "tshirt",
                            Description = "T-shirt Jack&Jones M",
                            Price = 10.40m
                        },
                        new
                        {
                            Id = 15,
                            CategoryCode = "jacket",
                            Description = "Jacket Antony Morato L",
                            Price = 89.95m
                        },
                        new
                        {
                            Id = 16,
                            CategoryCode = "jacket",
                            Description = "Jacket Antony Morato XL",
                            Price = 89.95m
                        },
                        new
                        {
                            Id = 17,
                            CategoryCode = "pants",
                            Description = "Skinny Jeans G-Star M",
                            Price = 69.95m
                        },
                        new
                        {
                            Id = 18,
                            CategoryCode = "pants",
                            Description = "Skinny Jeans G-Star L",
                            Price = 69.95m
                        },
                        new
                        {
                            Id = 19,
                            CategoryCode = "suit",
                            Description = "Boss suit M",
                            Price = 699.95m
                        },
                        new
                        {
                            Id = 20,
                            CategoryCode = "suit",
                            Description = "Boss suit L",
                            Price = 699.95m
                        });
                });

            modelBuilder.Entity("WebShop.Domain.ProductCategory", b =>
                {
                    b.Property<string>("Code")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Code");

                    b.ToTable("ProductCategory");

                    b.HasData(
                        new
                        {
                            Code = "dress",
                            Description = "Dress"
                        },
                        new
                        {
                            Code = "tshirt",
                            Description = "T-Shirt/Top/Polo"
                        },
                        new
                        {
                            Code = "sweater",
                            Description = "Sweater"
                        },
                        new
                        {
                            Code = "jacket",
                            Description = "Jacket/Blazer"
                        },
                        new
                        {
                            Code = "pants",
                            Description = "Pants"
                        },
                        new
                        {
                            Code = "blouse",
                            Description = "Shirt/Blouse"
                        },
                        new
                        {
                            Code = "suit",
                            Description = "Suit"
                        });
                });

            modelBuilder.Entity("WebShop.Domain.Product", b =>
                {
                    b.HasOne("WebShop.Domain.ProductCategory", "Category")
                        .WithMany()
                        .HasForeignKey("CategoryCode")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}
