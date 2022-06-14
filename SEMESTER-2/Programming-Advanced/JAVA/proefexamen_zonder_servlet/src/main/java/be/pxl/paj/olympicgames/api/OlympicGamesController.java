package be.pxl.paj.olympicgames.api;

import be.pxl.paj.olympicgames.api.data.AthleteDTO;
import be.pxl.paj.olympicgames.api.data.CreateRaceCommand;
import be.pxl.paj.olympicgames.api.data.RaceDTO;
import be.pxl.paj.olympicgames.api.data.RegisterScoreCommand;
import be.pxl.paj.olympicgames.service.OlympicGamesService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.persistence.EntityNotFoundException;
import java.util.List;

@RestController
@RequestMapping("olympicgames")
public class OlympicGamesController {

	private final OlympicGamesService olympicGamesService;

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
	public ResponseEntity<RaceDTO> postRaces(@RequestBody CreateRaceCommand race){
		return olympicGamesService.createRace(race);
	}

	@PutMapping("/races/{raceId}/{athleteId}")
	public ResponseEntity<String> addAthleteToRace (@PathVariable Long raceId, @PathVariable Long athleteId){
     return olympicGamesService.addAthleteToRace(athleteId, raceId);
	}

	@DeleteMapping("/races/{raceId}/{athleteId}")
	public ResponseEntity<String> removeAthleteToRace (@PathVariable Long raceId, @PathVariable Long athleteId){
		return olympicGamesService.removeAthleteFromRace(raceId, athleteId);
	}

	@PostMapping("/races/{raceId}/{athleteId}")
	public ResponseEntity<String> postRaces(@RequestBody RegisterScoreCommand registerScoreCommand, @PathVariable Long raceId, @PathVariable Long athleteId){
		try {
			olympicGamesService.registerResult(raceId, athleteId, registerScoreCommand);
			return ResponseEntity.ok("eeee");
		} catch (EntityNotFoundException ex) {
			return ResponseEntity.notFound().build();
		}
	}





}
