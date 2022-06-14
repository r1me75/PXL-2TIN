package be.pxl.paj.olympicgames.api;

import be.pxl.paj.olympicgames.api.data.CreateRaceCommand;
import be.pxl.paj.olympicgames.builder.CreateRaceCommandBuilder;
import be.pxl.paj.olympicgames.domain.Discipline;
import be.pxl.paj.olympicgames.service.OlympicGamesService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;
import org.mockito.Captor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.verify;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(controllers = OlympicGamesController.class)
public class OlympicGamesControllerTest {
    private static final String URL = "/olympicgames/races";
    private static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    @MockBean
    private OlympicGamesService olympicGamesService;

    @Autowired
    private MockMvc mockMvc;

    @Captor
    private ArgumentCaptor<CreateRaceCommand> createRaceCommandArgumentCaptor;

    @Test
    public void getRacesShouldReturnAllRaces() throws Exception {
        this.mockMvc
                .perform(MockMvcRequestBuilders.get("/olympicgames/races"))
                .andExpect(status().isOk());
    }

    @Test
    public void emptyBodyShouldReturnBadRequest() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.post(URL)
                .content("{}")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
        ).andExpect(status().isBadRequest());
    }

    @Test
    public void validBodyShouldReturnCreated() throws Exception {
        CreateRaceCommand createRaceCommand = CreateRaceCommandBuilder.aCreateRaceCommand()
                .withDateTime(LocalDateTime.now())
                .withDiscipline(Discipline.SPRINT_100M)
                .build();

        String createRaceCommandasText = "{\"discipline\":\"" + createRaceCommand.getDiscipline() + "\", \"dateTime\":\""+ createRaceCommand.getDateTime().toString().replace("T", " ") +  "\"}";
        mockMvc.perform(MockMvcRequestBuilders.post(URL)
                .content(createRaceCommandasText)
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
        ).andExpect(status().isCreated());

        verify(olympicGamesService).createRace(createRaceCommandArgumentCaptor.capture());
        CreateRaceCommand createdRace = createRaceCommandArgumentCaptor.getValue();

        assertThat(createdRace.getDiscipline()).isEqualTo(createRaceCommand.getDiscipline());
        assertThat(createdRace.getDateTime()).isEqualTo(createRaceCommand.getDateTime());
    }

    public static String asJsonString(final Object obj) {
        try {

            return new ObjectMapper().writeValueAsString(obj);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
