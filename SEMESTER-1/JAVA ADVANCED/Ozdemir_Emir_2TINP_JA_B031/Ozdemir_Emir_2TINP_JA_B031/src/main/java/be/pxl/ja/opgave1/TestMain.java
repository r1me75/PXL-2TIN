package be.pxl.ja.opgave1;

import java.util.List;

public class TestMain {
    public static void main(String[] args) {

        // Dit is een test file om de testen handmatig te testen omdat ik de junit niet kon runnen.
        BuildingApp buildingApp = new BuildingApp();
        System.out.println(buildingApp.solution1());
        System.out.println(buildingApp.solution2());
        System.out.println(buildingApp.solution3());
        System.out.println(buildingApp.solution4());
        List<Building> buildingList = buildingApp.solution5();
        System.out.println(buildingList.size());
        System.out.println(buildingList.get(0).getLocation().getCity());
        System.out.println(buildingList.get(1).getLocation().getCity());

    }
}
