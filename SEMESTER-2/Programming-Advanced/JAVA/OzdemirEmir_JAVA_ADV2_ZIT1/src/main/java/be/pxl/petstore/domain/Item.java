package be.pxl.petstore.domain;

import javax.persistence.*;

@Entity
public class Item {
	@Id
	private String id;
	@OneToOne
	private Product product;
	private double price;
	private String specification;

	public Item() {
		// JPA only
	}

	public Item(String id, Product product, double price, String specification) {
		this.id = id;
		this.product = product;
		this.price = price;
		this.specification = specification;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getSpecification() {
		return specification;
	}

	public void setSpecification(String specification) {
		this.specification = specification;
	}
}
