package be.pxl.paj.olympicgames.service;

import be.pxl.paj.olympicgames.api.data.AthleteDTO;
import be.pxl.paj.olympicgames.api.data.CreateRaceCommand;
import be.pxl.paj.olympicgames.api.data.RaceDTO;
import be.pxl.paj.olympicgames.api.data.RaceResultsDTO;
import be.pxl.paj.olympicgames.api.data.RegisterScoreCommand;
import be.pxl.paj.olympicgames.domain.Athlete;
import be.pxl.paj.olympicgames.domain.Race;
import be.pxl.paj.olympicgames.domain.Score;
import be.pxl.paj.olympicgames.exception.BusinessException;
import be.pxl.paj.olympicgames.exception.NotFoundException;
import be.pxl.paj.olympicgames.repository.AthleteRepository;
import be.pxl.paj.olympicgames.repository.RaceRepository;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class OlympicGamesService {

	private final RaceRepository raceRepository;
	private final AthleteRepository athleteRepository;

	public OlympicGamesService(RaceRepository raceRepository,
	                           AthleteRepository athleteRepository) {
		this.raceRepository = raceRepository;
		this.athleteRepository = athleteRepository;
	}

	public List<AthleteDTO> getAthletes() {
		return athleteRepository.findAll().stream().map(AthleteDTO::new).collect(Collectors.toList());
	}

	public List<RaceDTO> getRaces() {
		return raceRepository.findAll().stream().map(RaceDTO::new).collect(Collectors.toList());
	}

	@Transactional
	public void registerResult(Long raceId, Long athleteId, RegisterScoreCommand registerScoreCommand) {
		Race race = getRaceById(raceId);
		Athlete athlete = getAthleteById(athleteId);
		Optional<Score> score = race.getScore(athlete);
		if (score.isEmpty()) {
			throw new BusinessException("Athlete [" + athleteId + "] did not enroll in race.");
		}
		if (registerScoreCommand.getTime() != null) {
			score.get().setTime(registerScoreCommand.getTime());
		} else {
			score.get().updateStatus(registerScoreCommand.getStatus());
		}
	}

    public void createRace(CreateRaceCommand createRaceCommand) {
		Race race = new Race(createRaceCommand.getDateTime(), createRaceCommand.getDiscipline());
		raceRepository.save(race);
    }

	public void addAthleteToRace(Long raceId, Long athleteId) {
		Race race = getRaceById(raceId);
		Athlete athlete = getAthleteById(athleteId);

		race.addParticipant(athlete);
		raceRepository.save(race);
	}

	public void deleteAthleteToRace(Long raceId, Long athleteId) {
		Race race = getRaceById(raceId);
		Athlete athlete = getAthleteById(athleteId);

		race.removeParticipant(athlete);
		raceRepository.save(race);
	}

	public Race getRaceById(Long raceId) {
		return raceRepository.findById(raceId).orElseThrow(() -> new NotFoundException("No race with id [" + raceId + "]"));
	}
	private Athlete getAthleteById(Long athleteId) {
		return athleteRepository.findById(athleteId).orElseThrow(() -> new NotFoundException("No athlete with id [" + athleteId + "]"));
	}
}
