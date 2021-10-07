package be.pxl.student.herhaling.oefening1;

import javax.print.Doc;
import javax.swing.text.Document;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class ContentDemo {
    public static void main(String[] args) {
        List<Content> contentList = new ArrayList<>();
        Movie theIncredibles = new Movie("The Incredibles", Rating.LITTLE_KIDS);
        theIncredibles.addGenre(Genre.ANIMATION);
        theIncredibles.addGenre(Genre.ADVENTURE);
        theIncredibles.setReleaseDate(LocalDate.of(2004, 10, 27));
        contentList.add(theIncredibles);
        Movie ironFist = new Movie("Iron Fist", Rating.MATURE);
        ironFist.addGenre(Genre.ACTION);
        ironFist.addGenre(Genre.ADVENTURE);
        contentList.add(ironFist);
        TVShow eigenKweek = new TVShow("Eigen kweek", Rating.TEENS, 3);
        contentList.add(eigenKweek);

        Documentary theSocialDilemma = new Documentary("The Social Dilemma", Rating.TEENS);
        contentList.add(theSocialDilemma);

        for (Content content : contentList) {
            System.out.println(content);
            if (content instanceof Playable) {
                ((Playable) content).play();
            }
            if (content instanceof Movie) {
                ((Movie) content).pause();
            }
            if (content instanceof Documentary) {
                System.out.println(((Documentary) content).getTopic());
            }
        }
    }
}
