package be.pxl.ja.opgave1;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
public class LocationTest {
    private Location<Double> location;
    @Test
    void constructorShouldInitializeCorrectly() {
        this.location = new Location<Double>("Hasselt", "Belgium", 50.93106, 5.33781);

        assertAll("Correctly Initialize",
                () -> assertEquals(this.location.getCity(), "Hasselt"),
                () -> assertEquals(this.location.getCountry(), "Belgium"),
                () -> assertEquals(this.location.getLatitude(), 50.93106),
                () -> assertEquals(this.location.getLongitude(), 5.33781)
        );
    };
}
