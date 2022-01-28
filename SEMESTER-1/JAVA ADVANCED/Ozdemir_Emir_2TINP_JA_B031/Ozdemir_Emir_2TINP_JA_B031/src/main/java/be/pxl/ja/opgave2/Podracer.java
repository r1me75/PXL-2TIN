package be.pxl.ja.opgave2;

import java.util.Random;

public class Podracer extends Thread {
	private static final Random RANDOM = new Random();
	private static final int MAX_SPEED = 900;
	private String driver;
	private Podrace race;
	private int distanceRaced;
	private int position;

	@Override
	public void run() {
		while (distanceRaced < race.getDistance()) {
			distanceRaced += RANDOM.nextInt(MAX_SPEED / 2, MAX_SPEED);

			// 2% kans
			if (RANDOM.nextInt(0, 50) == 1) {
				throw new CrashException(String.format("%s crashed...", this.driver));
			}
		}
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		if (distanceRaced >= race.getDistance()) {
			race.finish(this);
		}
	}

	public Podracer(String driver, Podrace race) {
		this.driver = driver;
		this.race = race;
	}

	public String getDriver() {
		return driver;
	}

	public void setPosition(int position) {
		this.position = position;
	}

	public int getPosition() {
		return position;
	}

	@Override
	public String toString() {
		return this.position + " - " + this.getDriver();
	}
}
