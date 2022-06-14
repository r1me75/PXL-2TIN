package be.pxl.petstore.repository;

import be.pxl.petstore.domain.Inventory;
import be.pxl.petstore.domain.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface InventoryRepository extends JpaRepository<Inventory, Long> {
    Optional<Inventory> findByItemId(String itemId);
}
