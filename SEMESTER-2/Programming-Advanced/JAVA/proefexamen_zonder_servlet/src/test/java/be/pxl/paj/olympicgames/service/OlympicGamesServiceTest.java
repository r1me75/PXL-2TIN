package be.pxl.paj.olympicgames.service;

import be.pxl.paj.olympicgames.api.data.RegisterScoreCommand;
import be.pxl.paj.olympicgames.domain.Athlete;
import be.pxl.paj.olympicgames.domain.Race;
import be.pxl.paj.olympicgames.domain.ScoreStatus;
import be.pxl.paj.olympicgames.exception.BusinessException;
import be.pxl.paj.olympicgames.exception.NotFoundException;
import be.pxl.paj.olympicgames.repository.AthleteRepository;
import be.pxl.paj.olympicgames.repository.RaceRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import java.time.LocalTime;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.Mockito.when;

@SpringBootTest
class OlympicGamesServiceTest {

    @MockBean
    private RaceRepository raceRepository;

    @MockBean
    private AthleteRepository athleteRepository;

    @Autowired
    private OlympicGamesService service;

    private final RegisterScoreCommand command = new RegisterScoreCommand(ScoreStatus.DISQUALIFIED, LocalTime.NOON);
    private final Race race = new Race();
    private final Athlete athlete = new Athlete();

    @Test
    void registerResult_throws_BusinessException_when_score_is_empty() {
        when(raceRepository.findById(123L)).thenReturn(Optional.of(race));
        when(athleteRepository.findById(456L)).thenReturn(Optional.of(athlete));

        assertThatThrownBy(() -> service.registerResult(123L, 456L, command))
                .isInstanceOf(BusinessException.class);
    }

    @Test
    void registerResult_throws_NotFoundException_when_no_race_with_id_found() {
        when(raceRepository.findById(123L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> service.registerResult(123L, 456L, command))
                .isInstanceOf(NotFoundException.class);
    }

    @Test
    void registerResult_throws_NotFoundException_when_no_athlete_with_id_found() {
        when(raceRepository.findById(123L)).thenReturn(Optional.of(race));
        when(athleteRepository.findById(456L)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> service.registerResult(123L, 456L, command))
                .isInstanceOf(NotFoundException.class);
    }

}