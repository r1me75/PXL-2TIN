package be.pxl.petstore.domain;

import javax.persistence.*;

@Entity
public class Inventory {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@OneToOne
	private Item item;
	private int quantity;

	public Inventory() {
		// JPA only
	}

	public Inventory(Item item, int quantity) {
		this.item = item;
		this.quantity = quantity;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void updateQuantity(int change) {
		this.quantity += change;
	}

	public Long getId() {
		return id;
	}
}
