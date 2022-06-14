package be.pxl.paj.olympicgames.service;

import be.pxl.paj.olympicgames.api.data.RegisterScoreCommand;
import be.pxl.paj.olympicgames.domain.Athlete;
import be.pxl.paj.olympicgames.domain.Discipline;
import be.pxl.paj.olympicgames.domain.Race;
import be.pxl.paj.olympicgames.domain.ScoreStatus;
import be.pxl.paj.olympicgames.exception.BusinessException;
import be.pxl.paj.olympicgames.repository.AthleteRepository;
import be.pxl.paj.olympicgames.repository.RaceRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class OlympicGameServiceTest {
    private static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("HH:mm:ss.SSS");


    @Mock
    private RaceRepository raceRepository;
    @Mock
    private AthleteRepository athleteRepository;

    @InjectMocks
    private OlympicGamesService olympicGamesService;

    private final Race race = new Race(LocalDateTime.MIN, Discipline.SPRINT_100M);
    private final Athlete athlete = new Athlete("Emir", "Ozdemir", "BE", LocalDate.MIN, Discipline.SPRINT_100M);

    @Test
    public void throwsBusinessExceptionIfScoreIsEmpty() {
        when(raceRepository.findById(1L)).thenReturn(Optional.of(race));
        when(athleteRepository.findById(1L)).thenReturn(Optional.of(athlete));

        RegisterScoreCommand registerScoreCommand = new RegisterScoreCommand(ScoreStatus.ENROLLED, LocalTime.parse("00:00:09.800", FORMATTER));
        BusinessException businessException =
                assertThrows(BusinessException.class, () -> olympicGamesService.registerResult(1L, 1L, registerScoreCommand));

        assertEquals("Athlete [1] did not enroll in race.", businessException.getMessage());
    }


}
