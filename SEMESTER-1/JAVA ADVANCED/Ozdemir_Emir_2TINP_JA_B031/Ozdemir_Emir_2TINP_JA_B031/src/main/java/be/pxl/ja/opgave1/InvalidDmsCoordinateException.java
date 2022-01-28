package be.pxl.ja.opgave1;

public class InvalidDmsCoordinateException extends RuntimeException {

	public InvalidDmsCoordinateException(String text) {
		super(text + " is not a valid DMS coordinate.");
	}
}
