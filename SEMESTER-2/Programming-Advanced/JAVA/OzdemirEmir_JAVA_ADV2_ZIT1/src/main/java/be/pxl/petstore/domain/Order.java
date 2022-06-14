package be.pxl.petstore.domain;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private double price;
    private String name;
    private String email;

    @OneToMany(mappedBy = "order")
    private final List<OrderLine> lines = new ArrayList<>();

    public Order() {
        // JPA Only
    }
    public Order(String name, String email) {
        this.name = name;
        this.email = email;
    }

    public List<OrderLine> getLines() {
        return lines;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
