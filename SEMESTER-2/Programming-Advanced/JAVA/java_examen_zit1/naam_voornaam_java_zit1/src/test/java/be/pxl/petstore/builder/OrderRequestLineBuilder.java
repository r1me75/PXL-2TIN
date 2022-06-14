package be.pxl.petstore.builder;

import be.pxl.petstore.rest.data.OrderRequestLine;

public final class OrderRequestLineBuilder {
	private String itemid;
	private int quantity;

	private OrderRequestLineBuilder() {}

	public static OrderRequestLineBuilder anOrderRequestLine() {return new OrderRequestLineBuilder();}

	public OrderRequestLineBuilder withItemid(String itemid) {
		this.itemid = itemid;
		return this;
	}

	public OrderRequestLineBuilder withQuantity(int quantity) {
		this.quantity = quantity;
		return this;
	}

	public OrderRequestLine build() {
		OrderRequestLine orderRequestLine = new OrderRequestLine();
		orderRequestLine.setItemid(itemid);
		orderRequestLine.setQuantity(quantity);
		return orderRequestLine;
	}
}
