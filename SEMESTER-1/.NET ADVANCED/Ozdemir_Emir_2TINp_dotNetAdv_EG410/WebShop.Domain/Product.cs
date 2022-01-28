namespace WebShop.Domain
{
    public class Product
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public ProductCategory Category { get; set; }
        public string CategoryCode { get; set; }
    }
}
