package be.pxl.ja.opgave1;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;

public class Opgave1 {
	public static void main(String[] args) {
		CustomerRepository customerRepository = new CustomerRepository();
		System.out.println("*** Klanten uit Louisville:");
		// TODO: 1
		System.out.println(customerRepository.findAll().stream().filter(customer -> customer.getCity().toLowerCase().equals("louisville")).count());
		
		System.out.println("*** Jarige klanten: ");
		// TODO: 2
		customerRepository.findAll().stream()
				.filter(customer -> customer.getDateOfBirth().getDayOfMonth() == LocalDate.now().getDayOfMonth() &&
						customer.getDateOfBirth().getMonth() == LocalDate.now().getMonth())
				.forEach(System.out::println);
		
		System.out.println("*** 10 jongste klanten:");
		// TODO: 3
		customerRepository.findAll().stream().sorted((o1, o2) -> o2.getDateOfBirth().compareTo(o1.getDateOfBirth())).limit(10)
				.forEach(System.out::println);

	
		ActivityProcessor activityFileProcessor = new ActivityProcessor(customerRepository);
		List<Activity> allActivities = new ArrayList<>();
		// TODO: 4
		Path path = Paths.get(System.getProperty("user.dir"));
		System.out.println(path);
		path = path.resolve("resources");
		path = path.resolve("opgave1");
		Path errorPath = path.resolve("log").resolve("errors.log");
		System.out.println(errorPath);
		try (Stream<Path> filePathStream= Files.walk(path)) {
			filePathStream.forEach(filePath -> {
				if (Files.isRegularFile(filePath)) {
					System.out.println(filePath);
					allActivities.addAll(activityFileProcessor.processActivities(filePath, errorPath));
				}
			});
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println(allActivities.size());


		System.out.println("*** Top 10 klanten");
		// TODO: 5
		customerRepository.findAll().stream().sorted((o1, o2) -> o1.getPoints()).limit(10)
				.forEach(System.out::println);

		System.out.println("** Alle activiteiten meest actieve klant (gesorteerd op datum):");
		// TODO: 6
		Customer highestPointsCustomer = customerRepository.findAll().stream().min((o1, o2) -> o1.getPoints()).get();
		allActivities.stream()
				.filter(activity -> activity.getCustomerNumber().equals(highestPointsCustomer.getCustomerNumber()))
				.sorted((o1, o2) -> o2.getActivityDate().compareTo(o1.getActivityDate()))
				.forEach(System.out::println);
	}
}
