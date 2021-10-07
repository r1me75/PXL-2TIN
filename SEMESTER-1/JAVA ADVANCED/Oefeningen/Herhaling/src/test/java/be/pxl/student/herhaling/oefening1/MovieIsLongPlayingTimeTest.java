package be.pxl.student.herhaling.oefening1;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class MovieIsLongPlayingTimeTest {

    private Movie movie;

    @BeforeEach
    public void init() {
        movie = new Movie("Titanic", Rating.OLDER_KIDS);
    }

    @Test
    public void returnsFalseIfDurationLessThanLongPlaying() {
        // ARRANGE
        movie.setDuration(Movie.LONG_PLAYING_TIME - 1);

        // ACT
        boolean result = movie.isLongPlayingTime();

        // ASSERT
        assertFalse(result);
    }

    @Test
    public void returnsTrueIfDurationMoreThanLongPlayingTime() {
        movie.setDuration(Movie.LONG_PLAYING_TIME + 1);
        boolean result = movie.isLongPlayingTime();
        assertTrue(movie.isLongPlayingTime());
    }

    @Test
    public void returnsTrueIfDurationExactlyLongPlayingTime() {
        movie.setDuration(Movie.LONG_PLAYING_TIME);
        assertTrue(movie.isLongPlayingTime());
    }
}
