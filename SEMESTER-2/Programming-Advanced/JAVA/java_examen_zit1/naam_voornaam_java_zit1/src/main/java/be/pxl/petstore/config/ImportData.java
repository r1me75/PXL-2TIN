package be.pxl.petstore.config;

import be.pxl.petstore.domain.Category;
import be.pxl.petstore.domain.Inventory;
import be.pxl.petstore.domain.Item;
import be.pxl.petstore.domain.Product;
import be.pxl.petstore.repository.InventoryRepository;
import be.pxl.petstore.repository.ItemRepository;
import be.pxl.petstore.repository.ProductRepository;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class ImportData implements CommandLineRunner {

	private final Logger LOGGER = LogManager.getLogger(ImportData.class);

	private final ProductRepository productRepository;
	private final ItemRepository itemRepository;
	private final InventoryRepository inventoryRepository;

	public ImportData(ProductRepository productRepository, ItemRepository itemRepository, InventoryRepository inventoryRepository) {
		this.productRepository = productRepository;
		this.itemRepository = itemRepository;
		this.inventoryRepository = inventoryRepository;
	}

	@Override
	public void run(String... args) {
		LOGGER.info("Importing testdata...");

		Product angelfish = productRepository.save(new Product("FI-SW-01", Category.FISH, "Angelfish", "Salt Water fish from Australia"));
		productRepository.save(new Product("FI-SW-02",Category.FISH,"Tiger Shark","Salt Water fish from Australia"));
		productRepository.save(new Product("FI-FW-01",Category.FISH, "Koi","Fresh Water fish from Japan"));
		productRepository.save(new Product("FI-FW-02",Category.FISH, "Goldfish","Fresh Water fish from China"));
		productRepository.save(new Product("K9-BD-01",Category.DOGS,"Bulldog","Friendly dog from England"));
		Product poodle = productRepository.save(new Product("K9-PO-02", Category.DOGS, "Poodle", "Cute dog from France"));
		productRepository.save(new Product("K9-DL-01",Category.DOGS, "Dalmation","Great dog for a Fire Station"));
		productRepository.save(new Product("K9-RT-01",Category.DOGS, "Golden Retriever","Great family dog"));
		productRepository.save(new Product("K9-RT-02",Category.DOGS, "Labrador Retriever","Great hunting dog"));
		productRepository.save(new Product("K9-CW-01",Category.DOGS, "Chihuahua","Great companion dog"));
		productRepository.save(new Product("RP-SN-01",Category.REPTILES,"Rattlesnake","Doubles as a watch dog"));
		productRepository.save(new Product("RP-LI-02",Category.REPTILES,"Iguana","Friendly green friend"));
		productRepository.save(new Product("FL-DSH-01",Category.CATS,"Manx","Great for reducing mouse populations"));
		Product persian = productRepository.save(new Product("FL-DLH-02", Category.CATS, "Persian", "Friendly house cat, doubles as a princess"));
		productRepository.save(new Product("AV-CB-01",Category.BIRDS,"Amazon Parrot","Great companion for up to 75 years"));
		productRepository.save(new Product("AV-SB-02",Category.BIRDS,"Finch","Great stress reliever"));

		Item angelfishLarge = itemRepository.save(new Item("EST-1", angelfish, 16.50, "Large"));
		Item angelfishSmall = itemRepository.save(new Item("EST-2", angelfish, 15.50, "Small"));
		Item persianF = itemRepository.save(new Item("EST-16", persian, 93.50, "Adult Female"));
		Item persianM = itemRepository.save(new Item("EST-17", persian, 93.50, "Adult Male"));
		Item poodleM = itemRepository.save(new Item("EST-22", poodle, 135.50, "Adult Male"));
		Item poodleF = itemRepository.save(new Item("EST-23", poodle, 145.49, "Adult Female"));

		inventoryRepository.save(new Inventory(angelfishLarge, 17));
		inventoryRepository.save(new Inventory(angelfishSmall, 10));
		inventoryRepository.save(new Inventory(persianF, 1));
		inventoryRepository.save(new Inventory(persianM, 1));
		inventoryRepository.save(new Inventory(poodleM, 3));
		inventoryRepository.save(new Inventory(poodleF, 1));
	}
}

