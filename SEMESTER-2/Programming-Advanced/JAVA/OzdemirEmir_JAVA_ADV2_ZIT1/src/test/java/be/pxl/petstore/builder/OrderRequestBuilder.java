package be.pxl.petstore.builder;

import be.pxl.petstore.rest.data.OrderRequest;
import be.pxl.petstore.rest.data.OrderRequestLine;

import java.util.ArrayList;
import java.util.List;

public final class OrderRequestBuilder {
	public static final String ORDER_NAME = "Elon Musk";
	public static final String ORDER_EMAIL = "elon.musk@twitter.com";
	private String name = ORDER_NAME;
	private String email = ORDER_EMAIL;
	private final List<OrderRequestLine> lines = new ArrayList<>();

	private OrderRequestBuilder() {}

	public static OrderRequestBuilder anOrderRequest() {return new OrderRequestBuilder();}

	public OrderRequestBuilder withName(String name) {
		this.name = name;
		return this;
	}

	public OrderRequestBuilder withEmail(String email) {
		this.email = email;
		return this;
	}

	public OrderRequestBuilder withLine(OrderRequestLine line) {
		this.lines.add(line);
		return this;
	}

	public OrderRequest build() {
		OrderRequest orderRequest = new OrderRequest();
		orderRequest.setName(name);
		orderRequest.setEmail(email);
		orderRequest.setLines(lines);
		return orderRequest;
	}
}
