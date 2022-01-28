package be.pxl.ja;

import java.nio.file.Paths;

public class MainApp {
    public static void main(String[] args) {
        System.out.println(Paths.get(System.getProperty("user.dir")).resolve("resources"));
    }
}
