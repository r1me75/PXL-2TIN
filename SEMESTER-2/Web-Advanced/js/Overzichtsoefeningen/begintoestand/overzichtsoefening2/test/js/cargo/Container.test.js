import Product from "../../../src/js/cargo/Product";
import Container from "../../../src/js/cargo/Container";

describe("Function addProduct", () => {
  it("should throw error if argument is not a product", () => {
    expect(() => {
      const container = new Container(100);
      container.addProduct("test");
    }).toThrow(Error);
  });

  it("should throw error if id of product already exists", () => {
    expect(() => {
      const container = new Container(300);
      const product1 = new Product(1, 100);
      container.addProduct(product1);

      const product2 = new Product(1, 100);
      container.addProduct(product2);
    }).toThrow(Error);
  });

  it("should throw error if maxWeight limit has been exceeded", () => {
    expect(() => {
      const container = new Container(500);
      const product1 = new Product(1, 100);
      const product2 = new Product(2, 300);
      const product3 = new Product(3, 200);

      container.addProduct(product1);
      container.addProduct(product2);
      container.addProduct(product3);
    }).toThrow(Error);
  });
});
