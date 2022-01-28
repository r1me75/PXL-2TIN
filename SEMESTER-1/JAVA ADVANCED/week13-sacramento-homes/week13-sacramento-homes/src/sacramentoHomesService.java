import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;

public class sacramentoHomesService {
    public List<Property> getProperties() {
        List<Property> properties = new ArrayList<>();
        Path path = Paths.get(System.getProperty("user.dir"));
        Path filePath = path.resolve("sacramentorealestatetransactions.csv");
        try (BufferedReader br = Files.newBufferedReader(filePath)) {
            br.readLine();

            String line = null;

            while((line = br.readLine()) != null) {
                properties.add(ParseLineToProperty(line));
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
        return properties;
    }

    private Property ParseLineToProperty(String line) {
        String[] propertyPieces = line.split(",");
        String street = propertyPieces[0];
        String city = propertyPieces[1];
        String zip = propertyPieces[2];
        String state = propertyPieces[3];
        int beds = Integer.parseInt(propertyPieces[4]);
        int baths = Integer.parseInt(propertyPieces[5]);
        double sq_ft = Double.parseDouble(propertyPieces[6]);
        String type = propertyPieces[7];
        // Wed May 21 00:00:00 EDT 2008
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("EEE MMM dd HH:mm:ss z yyyy", Locale.US);
        ZonedDateTime saleDate = ZonedDateTime.parse(propertyPieces[8], formatter);
        double price = Double.parseDouble(propertyPieces[9]);
        double latitude = Double.parseDouble(propertyPieces[10]);
        double longtitude = Double.parseDouble(propertyPieces[11]);

        Property property = new Property(street, city, zip, state, beds, baths, sq_ft, type, saleDate, price, latitude, longtitude);
        return property;
    }

    public List<Property> propertiesAbovePrice(List<Property> list, int price) {
        return list.stream()
                .filter(property -> property.getPrice() > price)
                .collect(Collectors.toList());
    }

    public List<Property> propertiesForZIPCode(List<Property> list, String zip) {
        return list.stream()
                .filter(property -> property.getZip().equals(zip))
                .collect(Collectors.toList());
    }

    public List<Property> propertiesSoldAfter(List<Property> list, LocalDate date) {
        return list.stream()
                .filter(property -> property.getSaleDate().toLocalDate().isAfter(date))
                .collect(Collectors.toList());
    }

    public List<Property> lastPropertiesSold(List<Property> list, int amount) {
        return list.stream()
                .sorted(Comparator.comparing(Property::getSaleDate).reversed())
                .limit(amount)
                .collect(Collectors.toList());
    }

    public Property findCheapest(List<Property> list) {
        return list.stream()
                .filter(property -> property.getBeds() >= 3)
                .filter(property -> property.getSq_ft() >= 1000)
                .filter(property -> property.getCity().toUpperCase().equals("SACRAMENTO"))
                .findFirst().get();
    }
}
