package be.pxl.petstore.rest.data;

public class OrderRequestLine {
	private String itemid;
	private int quantity;

	public int getQuantity() {
		return quantity;
	}

	public String getItemid() {
		return itemid;
	}

	public void setItemid(String itemid) {
		this.itemid = itemid;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
