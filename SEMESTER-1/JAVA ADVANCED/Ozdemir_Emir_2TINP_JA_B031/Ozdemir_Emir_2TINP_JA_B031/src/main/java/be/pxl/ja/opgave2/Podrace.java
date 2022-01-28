package be.pxl.ja.opgave2;

public class Podrace implements Race<Podracer> {
	private String name;
	private double distance;
	private int aantal_finished;

	public Podrace(String name, double distance) {
		this.name = name;
		this.distance = distance;
		this.aantal_finished = 0;
	}
	public String getName() {
		return name;
	}

	public double getDistance() {
		return distance;
	}

	@Override
	public synchronized void finish(Podracer racer) {
		this.aantal_finished++;
		racer.setPosition(this.aantal_finished);
	}
}
