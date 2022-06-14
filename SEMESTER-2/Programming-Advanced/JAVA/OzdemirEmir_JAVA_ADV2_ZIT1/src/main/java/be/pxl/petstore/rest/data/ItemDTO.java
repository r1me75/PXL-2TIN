package be.pxl.petstore.rest.data;

import be.pxl.petstore.domain.Category;
import be.pxl.petstore.domain.Item;

public class ItemDTO {
	private final String itemid;
	private final String productid;
	private final Category category;
	private final String productName;
	private final String productDescription;
	private final double price;
	private final String specification;

	public ItemDTO(Item item) {
		this.itemid = item.getId();
		this.productid = item.getProduct().getId();
		this.category = item.getProduct().getCategory();
		this.price = item.getPrice();
		this.productName = item.getProduct().getName();
		this.productDescription = item.getProduct().getDescription();
		this.specification = item.getSpecification();
	}

	public String getItemid() {
		return itemid;
	}

	public String getProductid() {
		return productid;
	}

	public Category getCategory() {
		return category;
	}

	public String getProductName() {
		return productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public double getPrice() {
		return price;
	}

	public String getSpecification() {
		return specification;
	}
}
