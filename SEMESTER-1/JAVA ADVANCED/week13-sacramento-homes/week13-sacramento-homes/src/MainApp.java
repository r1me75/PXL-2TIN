import java.time.LocalDate;
import java.util.List;

public class MainApp {
    public static void main(String[] args) {
        sacramentoHomesService sacramentoHomesService = new sacramentoHomesService();
        List<Property> orig = sacramentoHomesService.getProperties();
        List<Property> properties = null;
        properties = sacramentoHomesService.propertiesAbovePrice(orig, 500);
        System.out.println(properties);
        properties = sacramentoHomesService.propertiesForZIPCode(orig, "95655");
        System.out.println(properties);
        properties = sacramentoHomesService.propertiesSoldAfter(orig, LocalDate.of(1999, 10, 10));
        System.out.println(properties);
        properties = sacramentoHomesService.lastPropertiesSold(orig, 5);
        System.out.println(properties);
        Property property = sacramentoHomesService.findCheapest(orig);
        System.out.println(property);

        HomesFileWriter writer = new HomesFileWriter("test.txt", properties);
        writer.start();
    }
}
