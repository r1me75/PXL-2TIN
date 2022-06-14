package be.pxl.paj.olympicgames.api;

import be.pxl.paj.olympicgames.OlympicGames;
import be.pxl.paj.olympicgames.domain.Discipline;
import be.pxl.paj.olympicgames.domain.Race;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.time.LocalDateTime;
import java.time.LocalTime;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest(classes = OlympicGames.class)
@AutoConfigureMockMvc
class OlympicGamesControllerTest {

    private Race race = new Race(
            LocalDateTime.of(1995, 11, 25, 6, 50, 6),
            Discipline.HORDES_400M);

    private LocalTime localTime = LocalTime.of(21, 30, 59, 11001);

    @Autowired
    private MockMvc mockMvc;

    @Test
    public void postRacesOK() throws Exception {
        MockHttpServletRequestBuilder mockRequest = post("/olympicgames/races")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content(race.ToJsonString());

        mockMvc.perform(mockRequest).andExpect(status().isOk());
    }

    @Test
    public void postRacesBAD_REQUEST() throws Exception {
        MockHttpServletRequestBuilder mockRequest = post("/olympicgames/races")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content(race.ToJsonString())
                .content("Nele Custers is een top leerkracht!");

        mockMvc.perform(mockRequest).andExpect(status().isBadRequest());
    }

    @Test
    public void getRaces() throws Exception {
        MockHttpServletRequestBuilder mockRequest = MockMvcRequestBuilders.get("/olympicgames/races")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON);

        mockMvc.perform(mockRequest).andExpect(status().isOk());
    }
}