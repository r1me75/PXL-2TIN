package be.pxl.ja.opgave1;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

class BuildingAppTest {

	private BuildingApp buildingApp;

	@BeforeEach
	void setUp() {
		buildingApp = new BuildingApp();
	}

	@Test
	void solution1() {
		assertEquals(5, buildingApp.solution1());
	}

	@Test
	void solution2() {
		assertEquals("Burj Khalifa", buildingApp.solution2());
	}

	@Test
	void solution3() {
		assertEquals(9, buildingApp.solution3());
	}

	@Test
	void solution4() {
		assertEquals("Canada,China,Germany,Iran,Japan,Kazakhstan,Kuwait,Latvia,Malaysia,Romania,Russia,Saudi Arabia,Slovenia,South Korea,Spain,Sri Lanka,Taiwan,Ukraine,United Arab Emirates,United States,Uzbekistan", buildingApp.solution4());
	}

	@Test
	void solution5() {
		List<Building> actual = buildingApp.solution5();
		assertEquals(2, actual.size());
		assertEquals("Dubai", actual.get(0).getLocation().getCity());
		assertEquals("Shenzhen", actual.get(1).getLocation().getCity());
	}
}
