package be.pxl.ja.opgave1;

import java.util.List;

public class Building {
	private String name;
	private int year;
	private double height;
	private String remarks;
	private List<String> usage;
	private BuildingType type;
	private Location<DmsCoordinate> location;

	public Location<DmsCoordinate> getLocation() {
		return location;
	}

	public void setLocation(Location<DmsCoordinate> location) {
		this.location = location;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public List<String> getUsage() {
		return usage;
	}

	public void setUsage(List<String> usage) {
		this.usage = usage;
	}

	public BuildingType getType() {
		return type;
	}

	public void setType(BuildingType type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Structure{" +
				"name='" + name + '\'' +
				", year=" + year +
				'}';
	}
}
