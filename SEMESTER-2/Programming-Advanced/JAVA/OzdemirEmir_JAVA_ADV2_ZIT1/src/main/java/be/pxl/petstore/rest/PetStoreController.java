package be.pxl.petstore.rest;

import be.pxl.petstore.rest.data.ItemDTO;
import be.pxl.petstore.rest.data.OrderDTO;
import be.pxl.petstore.rest.data.OrderRequest;
import be.pxl.petstore.service.ItemService;
import be.pxl.petstore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/petstore")
public class PetStoreController {
	private final ItemService itemService;
	private final OrderService orderService;

	@Autowired
	public PetStoreController(ItemService itemService, OrderService orderService) {
		this.itemService = itemService;
		this.orderService = orderService;
	}

	@GetMapping("/items")
	public List<ItemDTO> findAllItems() {
		return itemService.getAllItems();
	}

	@PostMapping("/orders")				// Hier nog @Valid maar dependency werkt niet!
	public ResponseEntity<Void> createOrder(@RequestBody OrderRequest orderRequest) {
		orderService.createOrder(orderRequest);
		return new ResponseEntity<>(HttpStatus.CREATED);
	}
}
