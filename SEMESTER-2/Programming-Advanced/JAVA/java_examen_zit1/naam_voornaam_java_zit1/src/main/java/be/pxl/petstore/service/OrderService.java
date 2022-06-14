package be.pxl.petstore.service;

import be.pxl.petstore.domain.Inventory;
import be.pxl.petstore.domain.Item;
import be.pxl.petstore.domain.Order;
import be.pxl.petstore.exception.InventoryOutOfStockException;
import be.pxl.petstore.exception.NotFoundException;
import be.pxl.petstore.repository.InventoryRepository;
import be.pxl.petstore.repository.ItemRepository;
import be.pxl.petstore.repository.OrderRepository;
import be.pxl.petstore.rest.data.OrderDTO;
import be.pxl.petstore.rest.data.OrderRequest;
import be.pxl.petstore.rest.data.OrderRequestLine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class OrderService {
    private final OrderRepository orderRepository;
    private final ItemRepository itemRepository;
    private final InventoryRepository inventoryRepository;

    @Autowired
    public OrderService(OrderRepository orderRepository, ItemRepository itemRepository, InventoryRepository inventoryRepository) {
        this.orderRepository = orderRepository;
        this.itemRepository = itemRepository;
        this.inventoryRepository = inventoryRepository;
    }

    public void createOrder(OrderRequest orderRequest) {
        double totalPrice = 0;

        for(OrderRequestLine line: orderRequest.getLines()) {
            Item item = getItemById(line.getItemid());
            Inventory inventory = getInventoryByItemId(item.getId());

            int quantity = line.getQuantity();
            int inventoryQuantity = inventory.getQuantity();

            if (inventoryQuantity < quantity) {
                throw new InventoryOutOfStockException("Inventory met id [" + inventory.getId() + "] heeft maar [" + inventoryQuantity + "] items in voorraad");
            }
            inventory.setQuantity(inventoryQuantity - quantity);
            inventoryRepository.save(inventory);

            totalPrice += item.getPrice();
        }


        Order order = new Order(orderRequest.getName(), orderRequest.getEmail());
        order.setPrice(totalPrice);
        orderRepository.save(order);
    }

    private Item getItemById(String itemId) {
        return itemRepository.findById(itemId).orElseThrow(() -> new NotFoundException("item met id [" + itemId + "] bestaat niet!"));
    }
    private Inventory getInventoryByItemId(String itemId) {
        return inventoryRepository.findByItemId(itemId).orElseThrow(() -> new NotFoundException("Inventory van item id [" + itemId + "] bestaat niet!"));
    }

    public List<OrderDTO> getAllOrders() {
        return orderRepository.findAll().stream().map(OrderDTO::new).collect(Collectors.toList());
    }
}
