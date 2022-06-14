package be.pxl.paj.olympicgames.api;

import be.pxl.paj.olympicgames.api.data.AthleteDTO;
import be.pxl.paj.olympicgames.api.data.CreateRaceCommand;
import be.pxl.paj.olympicgames.api.data.RaceDTO;
import be.pxl.paj.olympicgames.api.data.RegisterScoreCommand;
import be.pxl.paj.olympicgames.service.OlympicGamesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("olympicgames")
public class OlympicGamesController {

	private final OlympicGamesService olympicGamesService;

	@Autowired
	public OlympicGamesController(OlympicGamesService olympicGamesService) {
		this.olympicGamesService = olympicGamesService;
	}

	@GetMapping("/athletes")
	public List<AthleteDTO> getAthletes() {
		return olympicGamesService.getAthletes();
	}

	@GetMapping("/races")
	public List<RaceDTO> getRaces() {
		return olympicGamesService.getRaces();
	}

	@PostMapping("/races")
	public ResponseEntity<Void> createRace(@Valid @RequestBody CreateRaceCommand createRaceCommand) {
		olympicGamesService.createRace(createRaceCommand);
		return new ResponseEntity<>(HttpStatus.CREATED);
	}

	@PutMapping("/races/{raceId}/{athleteId}")
	public ResponseEntity<Void> addAthleteToRace(@PathVariable Long raceId, @PathVariable Long athleteId) {
		olympicGamesService.addAthleteToRace(raceId, athleteId);
		return new ResponseEntity<>(HttpStatus.OK);
	}

	@DeleteMapping("/races/{raceId}/{athleteId}")
	public ResponseEntity<Void> deleteAthleteToRace(@PathVariable Long raceId, @PathVariable Long athleteId) {
		olympicGamesService.deleteAthleteToRace(raceId, athleteId);
		return new ResponseEntity<>(HttpStatus.OK);
	}

	@PostMapping("/races/{raceId}/{athleteId}")
	public ResponseEntity<Void> registerResult(@Valid @RequestBody RegisterScoreCommand registerScoreCommand,
											   @PathVariable Long raceId, @PathVariable Long athleteId) {
		olympicGamesService.registerResult(raceId, athleteId, registerScoreCommand);
		return new ResponseEntity<>(HttpStatus.OK);
	}

}
