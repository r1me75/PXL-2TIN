package be.pxl.petstore.exception;

public class BusinessException extends RuntimeException {

	public BusinessException(String message) {
		super(message);
	}
}
