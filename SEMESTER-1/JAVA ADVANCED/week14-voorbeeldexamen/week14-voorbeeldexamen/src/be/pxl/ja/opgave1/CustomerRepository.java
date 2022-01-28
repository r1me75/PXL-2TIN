package be.pxl.ja.opgave1;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerRepository {
	private Map<String, Customer> customers = new HashMap<>();
	
	public CustomerRepository() {
		for (Customer customer : Customers.customers) {
			customers.put(customer.getCustomerNumber(), customer);
		}
	}
	
	public Customer getByCustomerNumber(String customerNumber) {
		// TODO: voorzie hier de implementatie om een klant te zoeken adhv zijn klantnummer
		return customers.get(customerNumber);
	}
	
	public List<Customer> findAll() {
		// TODO: voorzie hier de implementatie om een lijst me alle klanten te retourneren
//		List<Customer> customersList = new ArrayList<>();
//		customers.values().forEach(c -> customersList.add(c));
//		return customersList;
		return new ArrayList<>(this.customers.values());
	}
}
