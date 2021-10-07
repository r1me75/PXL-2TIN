package be.pxl.student.herhaling.oefening1;

import java.time.LocalDate;
import java.util.ArrayList;

public class Movie extends Content implements Playable {
    public static final int LONG_PLAYING_TIME = 2 * 60 + 15;
    private String director;
    private LocalDate releaseDate;
    private int duration;

    public Movie(String title, Rating rating) {
        super(title, rating);
    }

    public String getDirector() {
        return director;
    }
    public void setDirector(String director) {
        this.director = director;
    }
    public LocalDate getReleaseDate() {
        return releaseDate;
    }
    public void setReleaseDate(LocalDate releaseDate) {
        this.releaseDate = releaseDate;
    }
    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = Math.abs(duration);
    }
    public boolean isLongPlayingTime() {
        return duration >= LONG_PLAYING_TIME;
    }

    @Override
    public void play() {
        System.out.println("Playing " + this);
    }

    @Override
    public void pause() {
        System.out.println("Pausing " + this);
    }

    @Override
    public String toString() {
        if (releaseDate != null) {
            return super.toString() + ' ' + releaseDate.getYear();
        }
        return super.toString();
    }


}
