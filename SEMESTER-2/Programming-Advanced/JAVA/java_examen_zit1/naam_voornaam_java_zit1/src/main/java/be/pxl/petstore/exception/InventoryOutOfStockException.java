package be.pxl.petstore.exception;

public class InventoryOutOfStockException extends RuntimeException {

	public InventoryOutOfStockException(String message) {
		super(message);
	}
}
