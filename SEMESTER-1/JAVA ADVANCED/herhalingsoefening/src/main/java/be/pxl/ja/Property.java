package be.pxl.ja;

import java.time.LocalDate;

public class Property {
    private String street;
    private String city;
    private int zip;
    private String state;
    private int beds;
    private int baths;
    private int surface;
    private String type;
    private LocalDate sale_date;
    private double price;
    private float latitude;
    private float longitude;

    public Property(String street, String city, int zip, String state, int beds, int baths, int surface, String type, LocalDate date, double price, float latitude, float longitude) {
        this.street = street;
        this.city = city;
        this.zip = zip;
        this.state = state;
        this.beds = beds;
        this.baths = baths;
        this.surface = surface;
        this.type = type;
        this.sale_date = date;
        this.price = price;
        this.latitude = latitude;
        this.longitude = longitude;
    }
}
