package be.pxl.ja.opgave1;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

public class BuildingsReader {
    public static List<Building> loadBuilding(Path path) {
        List<Building> buildings = new ArrayList<>();
        try (BufferedReader reader = Files.newBufferedReader(path)) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.equals("\uFEFFName;Height;Year;Type;Main use;Country;City;Remarks;Coordinates")) {
                    continue;
                }
                buildings.add(BuildingMapper.mapDataToBuilding(line.split(";")));
            }

        } catch (Exception ex) {
            System.out.println(ex);
            System.out.println("Er is een error opgetreden tijdens het inlezen van de file!");
        }
        return buildings;
    }
}
