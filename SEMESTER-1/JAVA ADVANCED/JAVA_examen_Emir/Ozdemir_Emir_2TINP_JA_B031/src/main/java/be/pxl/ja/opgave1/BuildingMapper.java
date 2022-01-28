package be.pxl.ja.opgave1;

import java.util.Arrays;
import java.util.stream.Collectors;

public class BuildingMapper {

	public static Building mapDataToBuilding(String[] data) {
		Building building = new Building();
		building.setName(data[0]);
		building.setHeight(Double.parseDouble(data[1]));
		building.setYear(Integer.parseInt(data[2]));
		building.setType(toStructureType(data[3]));
		building.setUsage(Arrays.stream(data[4].split(",")).map(s -> s.trim().toLowerCase()).collect(Collectors.toList()));
		building.setRemarks(data[7]);
		String[] coordinates = data[8].split(" ");
		// TODO uncomment the following line to set the buildings' location
		building.setLocation(getLocationMapper().mapLocation(data[6], data[5], coordinates[0], coordinates[1]));
		return building;
	}

	private static LocationMapper<DmsCoordinate> getLocationMapper() {
		// TODO implement this method
		return new LocationMapper<DmsCoordinate>() {
			@Override
			public Location<DmsCoordinate> mapLocation(String city, String country, String lat, String lon) {
				 return new Location<DmsCoordinate>(city, country, new DmsCoordinate(lat), new DmsCoordinate(lon));
			}
		};
	}

	private static BuildingType toStructureType(String value) {
		return BuildingType.valueOf(value.replaceAll(" ", "_").replaceAll("/", "_").toUpperCase());
	}

}
