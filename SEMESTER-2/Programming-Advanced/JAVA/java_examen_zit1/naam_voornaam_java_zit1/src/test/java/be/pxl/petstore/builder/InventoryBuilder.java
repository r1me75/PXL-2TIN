package be.pxl.petstore.builder;

import be.pxl.petstore.domain.Inventory;
import be.pxl.petstore.domain.Item;

public final class InventoryBuilder {
	private Item item;
	private int quantity;

	private InventoryBuilder() {}

	public static InventoryBuilder anInventory() {return new InventoryBuilder();}

	public InventoryBuilder withItem(Item item) {
		this.item = item;
		return this;
	}

	public InventoryBuilder withQuantity(int quantity) {
		this.quantity = quantity;
		return this;
	}

	public Inventory build() {return new Inventory(item, quantity);}
}
