package be.pxl.petstore.rest.data;

import be.pxl.petstore.domain.Order;
import be.pxl.petstore.domain.OrderLine;

import java.util.List;
import java.util.stream.Collectors;

public class OrderDTO {
	private String fullname;
	private double totalPrice;
	private List<String> lineDetails;

	public OrderDTO(Order order) {
		this.fullname = order.getName() + " (" + order.getEmail() + ")";
		this.totalPrice = order.getPrice();
		this.lineDetails = order.getLines().stream().map(this::getDetails).collect(Collectors.toList());
	}

	private String getDetails(OrderLine orderLine) {
		return orderLine.getQuantity() + " X " + orderLine.getItem().getProduct().getName() + " (" + orderLine.getItem().getSpecification() + ")";
	}

	public String getFullname() {
		return fullname;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public List<String> getLineDetails() {
		return lineDetails;
	}
}
