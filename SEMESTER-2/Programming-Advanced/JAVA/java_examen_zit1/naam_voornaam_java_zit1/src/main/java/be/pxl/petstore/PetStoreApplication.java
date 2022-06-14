package be.pxl.petstore;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan
public class PetStoreApplication {

    public static void main(String[] args) {

        SpringApplication.run(PetStoreApplication.class, args);
    }
}
