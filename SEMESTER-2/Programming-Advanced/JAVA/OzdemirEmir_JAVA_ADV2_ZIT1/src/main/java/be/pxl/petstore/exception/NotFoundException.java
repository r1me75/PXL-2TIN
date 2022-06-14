package be.pxl.petstore.exception;

public class NotFoundException extends RuntimeException {

	public NotFoundException(String message) {
		super(message);
	}
}
