package be.pxl.ja.opgave1;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class ActivityProcessor {
//	private final String SEPARATOR = File.separator;
//	private final Path STRAVA_ACTIVITIES_FILE = Path.of(String.format("src%smain%sresources%sopgave1%sstrava_activities.txt", SEPARATOR, SEPARATOR, SEPARATOR, SEPARATOR));
//	private final Path ENDOMODO_ACTIVITIES_FILE = Path.of(String.format("src%smain%sresources%sopgave1%sendomodo_activities", SEPARATOR, SEPARATOR, SEPARATOR, SEPARATOR));
	private CustomerRepository customerRepository;
	private List<Activity> activities;

	public ActivityProcessor(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
		this.activities = new ArrayList<>();
	}

	public List<Activity> processActivities(Path activityFile, Path errorFile) throws IOException {
		// DONE: implement this method
		BufferedReader reader = null;
		String fileName = activityFile.getFileName().toString();

		if (fileName.contains("strava") || fileName.contains("endomodo")) {
			try {
				reader = Files.newBufferedReader(activityFile);
				String line = null;

				while ((line = reader.readLine()) != null) {
					if (fileName.contains("strava")) {
						handleStravaActivity(line);
					} else {
						handleEndomodoActivity(line);
					}
				}
			} catch (IOException ex) {

			} finally {
				if (reader != null) {
					reader.close();
				}
			}
		} else {
			handleErrorFile(errorFile);
		}
		return activities;
	}

	private void handleStravaActivity(String line) {
		String[] info = line.split(";");
		String customerNumber = info[0].split(" ")[2];
		Customer customer = this.customerRepository.getByCustomerNumber(customerNumber);
		if (customer == null) {
			// handle Error
		} else {
//			Activity activity = new Activity(customerNumber, ActivityType.valueOf(info[2].toUpperCase()), Double.parseDouble(info[3]), LocalDate.parse(info[1]), ActivityTracker.STRAVA);
		}
	}
	private void handleEndomodoActivity(String line) {}
	private void handleErrorFile(Path errorFile) {}

//	public void readActivitiesFromStrave() throws IOException {
//		try {
//			BufferedReader reader = Files.newBufferedReader(STRAVA_ACTIVITIES_FILE);
//		} catch (IOException ex) {
//			System.out.println();
//		} finally {
//			System.out.println();
//		}
//	}
//
}
