package be.pxl.petstore.service;

import be.pxl.petstore.builder.OrderRequestBuilder;
import be.pxl.petstore.exception.NotFoundException;
import be.pxl.petstore.repository.InventoryRepository;
import be.pxl.petstore.repository.ItemRepository;
import be.pxl.petstore.repository.OrderRepository;
import be.pxl.petstore.rest.data.OrderRequest;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class OrderServiceTest {

    @Mock
    private OrderRepository orderRepository;
    @Mock
    private ItemRepository itemRepository;
    @Mock
    private InventoryRepository inventoryRepository;

    @InjectMocks
    private OrderService orderService;

    @Test
    public void itemNotFoundShouldThrowException() {
        OrderRequest orderRequest = OrderRequestBuilder.anOrderRequest().build();

        when(itemRepository.findById("1")).thenReturn(Optional.empty());

        NotFoundException notFoundException =
                assertThrows(NotFoundException.class, () -> orderService.createOrder(orderRequest));

        assertEquals("item met id [1] bestaat niet!", notFoundException.getMessage());
    }
}
