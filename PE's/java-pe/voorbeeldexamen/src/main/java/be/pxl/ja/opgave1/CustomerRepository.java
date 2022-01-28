package be.pxl.ja.opgave1;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class CustomerRepository {
	private Map<String, Customer> customers = new HashMap<>();
	
	public CustomerRepository() {
		for (Customer customer : Customers.customers) {
			customers.put(customer.getCustomerNumber(), customer);
		}
	}
	
	public Customer getByCustomerNumber(String customerNumber) {
		// DONE: voorzie hier de implementatie om een klant te zoeken adhv zijn klantnummer
		return this.customers.get(customerNumber);
	}
	
	public List<Customer> findAll() {
		// DONE: voorzie hier de implementatie om een lijst met alle klanten te retourneren
		// return new ArrayList<>(customers.values()); | USE STREAMS
		return this.customers.values().stream().collect(Collectors.toList());
	}
}
