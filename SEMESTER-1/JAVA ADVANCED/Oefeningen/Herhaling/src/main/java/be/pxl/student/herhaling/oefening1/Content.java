package be.pxl.student.herhaling.oefening1;

import java.util.ArrayList;
import java.util.List;

public abstract class Content {
    private String title;
    private Rating rating;
    private String imageUrl;
    private List<Genre> genres = new ArrayList<>();
    public Content(String title, Rating rating) {
        this.title = title;
        this.rating = rating;
    }
    public Rating getRating() {
        return rating;
    }
    public String getTitle() {
        return title;
    }
    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
    public String getImageUrl() {
        return imageUrl;
    }
    public void addGenre(Genre genre) {
        if (genres.contains(genre)) {
            return;
        }
        this.genres.add(genre);
    }
    public List<Genre> getGenres() {
        return genres;
    }
    @Override
    public String toString() {
        return title;
    }
}
