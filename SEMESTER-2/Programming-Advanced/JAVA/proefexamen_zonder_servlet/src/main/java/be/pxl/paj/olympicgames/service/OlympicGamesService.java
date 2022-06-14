package be.pxl.paj.olympicgames.service;

import be.pxl.paj.olympicgames.api.data.AthleteDTO;
import be.pxl.paj.olympicgames.api.data.CreateRaceCommand;
import be.pxl.paj.olympicgames.api.data.RaceDTO;
import be.pxl.paj.olympicgames.api.data.RegisterScoreCommand;
import be.pxl.paj.olympicgames.domain.Athlete;
import be.pxl.paj.olympicgames.domain.Discipline;
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

	public ResponseEntity<RaceDTO> createRace(CreateRaceCommand raceCommand){

		Race race = new Race(raceCommand.getDateTime(), raceCommand.getDiscipline());
		Race savedRace = raceRepository.save(race);

		return new ResponseEntity<>(new RaceDTO(savedRace), HttpStatus.OK) ;
	}

	@Transactional
	public void registerResult(Long raceId, Long athleteId, RegisterScoreCommand registerScoreCommand) {
		Race race = raceRepository.findById(raceId).orElseThrow(() -> new NotFoundException("No race with id [" + raceId + "]"));
		Athlete athlete = athleteRepository.findById(athleteId).orElseThrow(() -> new NotFoundException("No athlete with id [" + athleteId + "]"));
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


	public ResponseEntity<String> addAthleteToRace(Long athleteId, Long raceId){

		try{
			Athlete athlete = getAthleteById(athleteId);
			Discipline athleteDiscipline = athlete.getDiscipline();

			Race race = getRaceById(raceId);
			Discipline raceDiscipline = race.getDiscipline();

			if (athleteDiscipline != raceDiscipline)
				return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("\r\n\r\n 400 (BAD_REQUEST)\r\n");
			else{
				race.addParticipant(athlete);
				raceRepository.save(race);
				return ResponseEntity.status(HttpStatus.CREATED).body("\r\n\r\n 201 CREATED\r\n");
			}
		}catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.status(HttpStatus.NOT_FOUND).body("\r\n\r\n 404 NOT FOUND\r\n");
		}
	}

	public ResponseEntity<String> removeAthleteFromRace(Long raceId, Long athleteId) {
		try{
			Race race = getRaceById(raceId);
			Athlete athlete = getAthleteById(athleteId);

			race.removeParticipant(athlete);
			raceRepository.save(race);

			return ResponseEntity.status(HttpStatus.OK).body("\r\n\r\n 200 OK\r\n");
		}catch (Exception e){
			return ResponseEntity.status(HttpStatus.NOT_FOUND).body("\r\n\r\n 404 NOT FOUND\r\n");
		}
	}


	private Athlete getAthleteById(Long id){
		return athleteRepository.findById(id)
				.orElseThrow(() -> new NotFoundException("Athlete with id: " + id + " wasn't found"));

	}
	public Race getRaceById(Long id){
		return raceRepository.findById(id)
				.orElseThrow(() -> new NotFoundException("Race with id: " + id + " wasn't found"));
	}
}
