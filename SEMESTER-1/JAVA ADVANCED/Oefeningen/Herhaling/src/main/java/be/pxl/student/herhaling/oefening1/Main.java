package be.pxl.student.herhaling.oefening1;

import java.time.LocalDate;

public class Main {
    public static void main(String[] args) {
        Movie movie1 = new Movie("Movie1", Rating.LITTLE_KIDS);

        movie1.setDirector("Emir Ozdemir");
        System.out.println(movie1.getDirector());

        movie1.setReleaseDate(LocalDate.of(2000, 10, 10));
        System.out.println(movie1);

        movie1.addGenre(Genre.WAR);
        System.out.println(movie1.getGenres());
    }
}

