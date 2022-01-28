package be.pxl.ja.opgave1;

public enum Direction {
	WEST,
	SOUTH,
	NORTH,
	EAST;

	public static Direction fromCharacter(char letter) {
		return switch (letter) {
			case 'W' -> WEST;
			case 'S' -> SOUTH;
			case 'N' -> NORTH;
			case 'E' -> EAST;
			default -> throw new IllegalArgumentException("Unexpected value: " + letter);
		};
	}

}
