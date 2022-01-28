package be.pxl.ja.opgave1;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class DmsCoordinateTest {
    private DmsCoordinate coordinate;

    @Test
    void constructorWithTextParameterShouldInitializeCorrectly() {
        this.coordinate = new DmsCoordinate("25°11'50.09\"N");

        assertAll("Correctly Initialize",
                () -> assertEquals(this.coordinate.getDegree(), 25),
                () -> assertEquals(this.coordinate.getMinute(), 11),
                () -> assertEquals(this.coordinate.getSecond(), 50.09),
                () -> assertEquals(this.coordinate.getDirection(), Direction.NORTH)
        );
    }

    @Test
    void constructorShouldThrowInvalidDmsCoordinateException() {
        assertThrows(InvalidDmsCoordinateException.class, () -> {
           new DmsCoordinate("Dit is een foute coordinate");
        });
    }
    @Test
    void getDecimalValueShouldConvertLatitudeCorrectly() {
        this.coordinate = new DmsCoordinate("25°11'50.09\"N");
        assertEquals(this.coordinate.getDecimalValue(), 25.197525);
    }

    @Test
    void getDecimalValueShouldConvertLongitudeCorrectly() {
        this.coordinate = new DmsCoordinate("55°16'27.43\"E");
        assertEquals(this.coordinate.getDecimalValue(), 55.274288);
    }
}
