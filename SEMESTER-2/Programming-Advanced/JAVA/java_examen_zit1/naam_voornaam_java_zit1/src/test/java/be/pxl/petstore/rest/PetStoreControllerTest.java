package be.pxl.petstore.rest;

import be.pxl.petstore.builder.*;
import be.pxl.petstore.domain.Category;
import be.pxl.petstore.domain.Inventory;
import be.pxl.petstore.domain.Item;
import be.pxl.petstore.domain.Product;
import be.pxl.petstore.rest.data.OrderRequest;
import be.pxl.petstore.rest.data.OrderRequestLine;
import be.pxl.petstore.service.OrderService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(controllers = PetStoreController.class)
public class PetStoreControllerTest {
    @MockBean
    private OrderService orderService;

    @Autowired
    private MockMvc mockMvc;

    private final Product product = ProductBuilder.aProduct().withId("1")
            .withName("Emir")
            .withCategory(Category.BIRDS)
            .withDescription("Hello World")
            .build();
    private final Item item = ItemBuilder.anItem().
            withId("1").withPrice(10).
            withProduct(product).build();
    private final Inventory inventory = InventoryBuilder.anInventory().withItem(item)
            .withQuantity(100).build();

    @Test
    public void badRequestWhenItemNotInStock() throws Exception {
        OrderRequestLine orderRequestLine = OrderRequestLineBuilder.anOrderRequestLine()
                .withItemid(item.getId())
                .withQuantity(110)
                .build();

        OrderRequest orderRequest = OrderRequestBuilder.anOrderRequest()
                .withName("Emir Ozdemir")
                .withEmail("emir.ozdemir@pxl.be")
                .withLine(orderRequestLine)
                .build();

        mockMvc.perform(MockMvcRequestBuilders.post("/petstore/orders")
                        .content(asJsonString(orderRequest))
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isBadRequest());
    }

    @Test
    public void validRequestShouldReturnCreated() throws Exception {
        OrderRequestLine orderRequestLine = OrderRequestLineBuilder.anOrderRequestLine()
                .withItemid(item.getId())
                .withQuantity(5)
                .build();
        OrderRequest orderRequest = OrderRequestBuilder.anOrderRequest()
                .withName("Emir Ozdemir")
                .withEmail("emir.ozdemir@pxl.be")
                .withLine(orderRequestLine)
                .build();

        mockMvc.perform(MockMvcRequestBuilders.post("/petstore/orders")
                        .content(asJsonString(orderRequest))
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isCreated());
    }

    public static String asJsonString(final Object obj) {
        try {

            return new ObjectMapper().writeValueAsString(obj);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
