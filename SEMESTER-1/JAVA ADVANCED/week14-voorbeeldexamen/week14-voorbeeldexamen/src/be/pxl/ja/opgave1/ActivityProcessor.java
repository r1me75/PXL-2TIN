package be.pxl.ja.opgave1;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class ActivityProcessor {

	private CustomerRepository customerRepository;
	
	public ActivityProcessor(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
	}
	
	public List<Activity> processActivities(Path activityFile, Path errorFile) {
		// TODO: implement this method
		List<Activity> processedActivities = new ArrayList<>();
		String filename = activityFile.getFileName().toString();
		if (!(filename.toLowerCase().contains("strava") || filename.toLowerCase().contains("endomondo"))) {
			try {
				writeError(filename, "INVALID NAME", errorFile, "");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return processedActivities;
		}


		if (filename.toLowerCase().contains("strava")) {
			try (BufferedReader br = Files.newBufferedReader(activityFile)) {
				String line = br.readLine();

				while (line != null) {

					line = br.readLine();

					String[] linePieces = line.split(";");
					Customer customer = customerRepository.getByCustomerNumber(linePieces[0].split(" ")[linePieces[0].split(" ").length - 1]);
					if (customer == null) {
						writeError(filename, "UNKNOWN CUSTOMER", errorFile, line + "\n");
					} else {
						Activity activity = new Activity(customer.getCustomerNumber(), ActivityType.valueOf(linePieces[2].toUpperCase()), Double.parseDouble(linePieces[3]), LocalDate.parse(linePieces[1], DateTimeFormatter.ofPattern("dd/MM/yyyy")), ActivityTracker.STRAVA);
						setPoints(processedActivities, customer, activity);
					}
				}
			} catch (Exception e) {
				try {
					writeError(filename, e.getMessage(), errorFile, "");
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		} else {
			try (BufferedReader br = Files.newBufferedReader(activityFile)) {
				String line = br.readLine();

				while (line != null) {

					line = br.readLine();

					String[] linePieces = line.split(";");
					Customer customer = customerRepository.getByCustomerNumber(linePieces[1]);
					if (customer == null) {
						writeError(filename, "UNKNOWN CUSTOMER", errorFile, line + "\n");
					} else {
						Activity activity = new Activity(customer.getCustomerNumber(), ActivityType.valueOf(linePieces[2].toUpperCase()), Double.parseDouble(linePieces[3]), LocalDate.parse(linePieces[0], DateTimeFormatter.ofPattern("yyyyMMdd")), ActivityTracker.ENDOMODO);
						setPoints(processedActivities, customer, activity);
					}
				}
			} catch (Exception e) {
				try {
					writeError(filename, e.getMessage(), errorFile, "");
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		}
		return processedActivities;
	}

	private void setPoints(List<Activity> processedActivities, Customer customer, Activity activity) {
		int points = (int)(activity.getActivityType().getPointsPerKm() * activity.getDistance());
		if (activity.getActivityType() == ActivityType.SWIMMING) {
			points /= 1000;
		}
		customer.setPoints(customer.getPoints() + points);
		processedActivities.add(activity);
	}

	private void writeError(String filename, String errorMessage, Path errorFile, String secondLine) throws IOException {
		if (!errorFile.toFile().exists() && !errorFile.toFile().isDirectory()) {
			errorFile.toFile().getParentFile().mkdirs();
			errorFile.toFile().createNewFile();
		}
		try (BufferedWriter bw = Files.newBufferedWriter(errorFile, StandardOpenOption.APPEND)) {
			bw.write(LocalDateTime.now().toString() + " - " + filename + " - " + errorMessage + "\n" + secondLine);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
