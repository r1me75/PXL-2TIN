package be.pxl.petstore.domain;

import javax.persistence.*;

@Entity
public class Product {
	@Id
	private String id;
	@Enumerated(value = EnumType.STRING)
	private Category category;
	private String name;
	private String description;

	public Product() {
		// JPA only
	}

	public Product(String id, Category category, String name, String description) {
		this.id = id;
		this.category = category;
		this.name = name;
		this.description = description;
	}

	public String getId() {
		return id;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
