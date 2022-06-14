package be.pxl.paj.olympicgames.service;

import be.pxl.paj.olympicgames.domain.Race;
import be.pxl.paj.olympicgames.domain.Score;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Component;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


@Component
public class OlympicGamesServlet extends HttpServlet {

    private static final Logger LOGGER = LogManager.getLogger(OlympicGamesServlet.class);

    private final OlympicGamesService olympicGamesService;

    public OlympicGamesServlet(OlympicGamesService olympicGamesService) {
        this.olympicGamesService = olympicGamesService;
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        LOGGER.info("OlympicGameServlet initialized.");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Long raceid = Long.parseLong(req.getParameter("race"));

        Race race = olympicGamesService.getRaceById(raceid);

        List<Score> scores = race.getScores();



        StringBuilder print = new StringBuilder("<html>\n" +
                "<body>\n" +
                "<h3>" +
                race.getDiscipline() + " " + race.getDateTime() +
                "</h3>\n" +
                "<table>\n");

        for (int i = 0; i < scores.size(); i++) {
            print.append("<tr><td>")
                    .append(scores.get(i).getAthlete().getName())
                    .append("</td><td>")
                    .append(scores.get(i).getAthlete().getCountry())
                    .append("</td><td>")
                    .append(scores.get(i).getScoreStatus())
                    .append("</td></tr>\n");
        }

        print.append("</table>\n" + "</body>\n" + "</html>");

        //TODO vindt de verschillende athleten
        //TODO waneer de servlet wordt opgeruimd, toon je opnieuw een info-boodschap in de logging van de applicatie
        PrintWriter writer = resp.getWriter();
        writer.println(print);

    }

}
