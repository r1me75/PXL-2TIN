package be.pxl.ja.opgave1;

public class DmsCoordinate {

	private int degree;
	private int minute;
	private double second;
	private Direction direction;

	/**
	 * Construct a DMS object using degree, minute and second values and the direction.
	 * @param degree
	 * @param minute
	 * @param second
	 * @param direction
	 */
	public DmsCoordinate(int degree, int minute, double second, Direction direction) {
		this.degree = degree;
		this.minute = minute;
		this.second = second;
		this.direction = direction;
	}

	public DmsCoordinate(String text) {
		int idxDegree = text.indexOf("°");
		int idxMin = text.indexOf("'");
		int idxSec = text.indexOf("\"");
		if (idxDegree == -1 || idxMin == -1 || idxSec == -1) {
			throw new InvalidDmsCoordinateException(text);
		}
		String degree = text.substring(0, idxDegree);
		String minute = text.substring(idxDegree + 1, idxMin);
		String second = text.substring(idxMin + 1, idxSec);
		try {
			this.degree = Integer.parseInt(degree);
			this.minute = Integer.parseInt(minute);
			this.second = Double.parseDouble(second);
			this.direction = Direction.fromCharacter(text.charAt(text.length() - 1));
		} catch (IllegalArgumentException e) {
			throw new InvalidDmsCoordinateException(text);
		}
	}

	/**
	 *
	 * @return degree value of the angle
	 */
	public int getDegree() {
		return degree;
	}

	/**
	 *
	 * @return minute value of the angle
	 */
	public int getMinute() {
		return minute;
	}

	/**
	 *
	 * @return second value of the angle
	 */
	public double getSecond() {
		return second;
	}



	public Direction getDirection() {
		return direction;
	}

	/**
	 * Return decimal value of the DMS angle. If direction is <code>Direction.SOUTH</code>
	 * or <code>Direction.WEST</code> then the decimal value is multiplied by -1.
	 * @return signed decimal value of the DMS angle
	 * @see Direction
	 */
	public double getDecimalValue() {
		double sum = degree + ((minute / 60.0) + (second / 3600.0));
		if (direction == Direction.WEST || direction == Direction.SOUTH) {
			return sum * (-1.0);
		}
		return sum;
	}

	public String toString() {
		return degree + "°" + minute + "'" + second + "\"";
	}

}
