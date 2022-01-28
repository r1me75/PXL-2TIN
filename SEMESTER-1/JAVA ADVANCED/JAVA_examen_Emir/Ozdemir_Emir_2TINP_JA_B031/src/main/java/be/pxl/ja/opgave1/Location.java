package be.pxl.ja.opgave1;

public class Location<T> {
	private final String city;
	private final String country;
	private T latitude;
	private T longitude;

	public Location(String city, String country) {
		this.city = city;
		this.country = country;
	}

	public Location(String city, String country, T latitude, T longitude) {
		this.city = city;
		this.country = country;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	public String getCity() {
		return city;
	}

	public String getCountry() {
		return country;
	}

	public T getLatitude() {
		return latitude;
	}

	public T getLongitude() {
		return longitude;
	}
}
