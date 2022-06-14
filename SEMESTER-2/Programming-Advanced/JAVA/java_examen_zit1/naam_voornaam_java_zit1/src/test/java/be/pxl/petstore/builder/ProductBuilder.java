package be.pxl.petstore.builder;

import be.pxl.petstore.domain.Category;
import be.pxl.petstore.domain.Product;

public final class ProductBuilder {
	public static final String PRODUCT_ID = "DOG-1";
	public static final Category DEFAULT_CATEGORY = Category.DOGS;
	public static final String PRODUCT_NAME = "Chihuahua";
	public static final String PRODUCT_DESCRIPTION = "Great companion dog.";
	private String id = PRODUCT_ID;
	private Category category = DEFAULT_CATEGORY;
	private String name = PRODUCT_NAME;
	private String description = PRODUCT_DESCRIPTION;

	private ProductBuilder() {}

	public static ProductBuilder aProduct() {return new ProductBuilder();}

	public ProductBuilder withId(String id) {
		this.id = id;
		return this;
	}

	public ProductBuilder withCategory(Category category) {
		this.category = category;
		return this;
	}

	public ProductBuilder withName(String name) {
		this.name = name;
		return this;
	}

	public ProductBuilder withDescription(String description) {
		this.description = description;
		return this;
	}

	public Product build() {return new Product(id, category, name, description);}
}
