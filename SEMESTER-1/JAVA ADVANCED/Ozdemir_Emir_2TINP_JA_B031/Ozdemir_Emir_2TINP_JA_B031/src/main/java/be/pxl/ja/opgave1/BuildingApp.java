package be.pxl.ja.opgave1;

import java.io.File;
import java.nio.file.Path;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.Collectors;

public class BuildingApp {
	// kan ook als volgt
	 private static final String SEPARATOR = File.separator;
	 private static final Path FILE_PATH = Path.of(String.format("src%smain%sresources%sbuildings.csv", SEPARATOR, SEPARATOR, SEPARATOR));
//	private static final Path FILE_PATH = Paths.get(System.getProperty("user.dir")).resolve("resources").resolve("buildings.csv");
	private List<Building> buildings;

	public BuildingApp() {
		// TODO: read data from file buildings.csv and assign to buildings
		this.buildings = BuildingsReader.loadBuilding(FILE_PATH);
	}

	// 1. Geef het aantal buildings van vóór het jaar 1970 (1970 excl.)
	public long solution1() {
		// TODO
		return this.buildings.stream().filter(building -> building.getYear() <= 1970).count();
	}

	// 2. Geef de naam van de hoogste building
	public String solution2() {
		// TODO
		return this.buildings.stream().max((b1, b2) -> (int) b1.getHeight()).get().getName();
	}

	// 3. Hoeveel van de buildings worden gebruikt als hotel?
	public long solution3() {
		// TODO
		return this.buildings.stream()
				.filter(building -> building.getUsage().contains("hotel")).count();
	}

	// 4. Geef een tekst met de verschillende landen: geen dubbels, alfabetisch gesorteerd en gescheiden met een komma.
	public String solution4() {
		// TODO
//		AtomicReference<String> tekst = new AtomicReference<>("");
		return this.buildings.stream()
				.map(building -> building.getLocation().getCountry())
				.distinct()
				.sorted().toList()
				.toString();
//				.substring(1, 1);
		// Colelctors.joining(",")
	}

	// 5. Geef een lijst van alle buildings met type SKYSCRAPER van het jaar 2000. Sorteer de buildings alfabetisch (A -> Z) op city.
	public List<Building> solution5() {
		// TODO
		return this.buildings.stream()
				.filter(building -> building.getType().equals(BuildingType.SKYSCRAPER) &&
						building.getYear() == 2000)
				.sorted(Comparator.comparing(building -> building.getLocation().getCity()))
				.collect(Collectors.toList());
	}
}
