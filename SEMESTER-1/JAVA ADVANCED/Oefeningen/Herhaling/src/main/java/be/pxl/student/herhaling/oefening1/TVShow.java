package be.pxl.student.herhaling.oefening1;

public final class TVShow extends Content {
    private int numberOfSeasons;

    public TVShow(String title, Rating rating, int numberOfSeasons) {
        super(title, rating);
        this.numberOfSeasons = numberOfSeasons;
    }

    public int getNumberOfSeasons() {
        return numberOfSeasons;
    }
}
