import java.time.ZonedDateTime;

public class Property {
    private String street;
    private String city;
    private String zip;
    private String state;
    private int beds;
    private int baths;
    private double sq_ft;
    private String type;
    private ZonedDateTime saleDate;
    private double price;
    private double latitude;
    private double longtitude;

    public Property(String street, String city, String zip, String state, int beds, int baths, double sq_ft, String type, ZonedDateTime saleDate, double price, double latitude, double longtitude) {
        this.street = street;
        this.city = city;
        this.zip = zip;
        this.state = state;
        this.beds = beds;
        this.baths = baths;
        this.sq_ft = sq_ft;
        this.type = type;
        this.saleDate = saleDate;
        this.price = price;
        this.latitude = latitude;
        this.longtitude = longtitude;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getBeds() {
        return beds;
    }

    public void setBeds(int beds) {
        this.beds = beds;
    }

    public int getBaths() {
        return baths;
    }

    public void setBaths(int baths) {
        this.baths = baths;
    }

    public double getSq_ft() {
        return sq_ft;
    }

    public void setSq_ft(double sq_ft) {
        this.sq_ft = sq_ft;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public ZonedDateTime getSaleDate() {
        return saleDate;
    }

    public void setSaleDate(ZonedDateTime saleDate) {
        this.saleDate = saleDate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongtitude() {
        return longtitude;
    }

    public void setLongtitude(double longtitude) {
        this.longtitude = longtitude;
    }

    @Override
    public String toString() {
        return "Property{" +
                "street='" + street + '\'' +
                ", city='" + city + '\'' +
                ", zip='" + zip + '\'' +
                ", state='" + state + '\'' +
                ", beds=" + beds +
                ", baths=" + baths +
                ", sq_ft=" + sq_ft +
                ", type='" + type + '\'' +
                ", saleDate=" + saleDate +
                ", price=" + price +
                ", latitude=" + latitude +
                ", longtitude=" + longtitude +
                '}';
    }

    public String toFormattedOutput() {
        StringBuilder formatted = new StringBuilder("");
        // street,city,zip,state,beds,baths,sq__ft,type,sale_date,price,latitude,longitude
        formatted.append(this.getStreet() + ",");
        formatted.append(this.getCity() + ",");
        formatted.append(this.getZip() + ",");
        formatted.append(this.getState() + ",");
        formatted.append(this.getBeds() + ",");
        formatted.append(this.getBaths() + ",");
        formatted.append(this.getSq_ft() + ",");
        formatted.append(this.getType() + ",");
        formatted.append(this.getSaleDate() + ",");
        formatted.append(this.getPrice() + ",");
        formatted.append(this.getLatitude() + ",");
        formatted.append(this.getLongtitude());
        return formatted.toString();


    }
}
