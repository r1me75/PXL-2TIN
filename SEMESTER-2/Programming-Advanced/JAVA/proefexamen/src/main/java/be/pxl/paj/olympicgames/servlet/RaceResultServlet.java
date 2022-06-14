package be.pxl.paj.olympicgames.servlet;

import be.pxl.paj.olympicgames.api.data.RaceResultDTO;
import be.pxl.paj.olympicgames.api.data.RaceResultsDTO;
import be.pxl.paj.olympicgames.domain.Race;
import be.pxl.paj.olympicgames.exception.NotFoundException;
import be.pxl.paj.olympicgames.service.OlympicGamesService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/RaceResults")
public class RaceResultServlet extends HttpServlet {
    private static final Logger LOGGER = LogManager.getLogger(RaceResultServlet.class);

    @Autowired
    private OlympicGamesService olympicGamesService;

    @Override
    public void init() throws ServletException {
        LOGGER.info("Initialize OlympicGamesServlet");
        super.init();
    }

    @Override
    public void destroy() {
        LOGGER.info("Destroy OlympicGamesServlet");
        super.destroy();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");

        String raceIdParamter = req.getParameter("race");
        String titel = "";
        Race race = null;

        if (raceIdParamter != null) {
            LOGGER.warn("Retrieving race with id [" + raceIdParamter + "]");
            Long raceId = Long.parseLong(raceIdParamter);
            try {
                race = olympicGamesService.getRaceById(raceId);
                titel += race.getDiscipline() + " " + race.getDateTime();
            } catch (NotFoundException ex) {
                titel += ex.getMessage();
            }
        } else {
            titel += "Geef raceId mee zoals volgt: RaceResults?race=1";
        }

        try(PrintWriter out = resp.getWriter()) {
            out.println("<html>");
            out.println("<body>");
            out.println("<h3>" + titel + "</h3>");
            
            if (race != null) {
                out.println("<table>");
                RaceResultsDTO raceResultsDTO = new RaceResultsDTO(race);
                for (RaceResultDTO result: raceResultsDTO.getRaceResults()) {
                    out.println("<tr>");
                    out.println("<td>" + result.getName() + "</td>");
                    out.println("<td>" + result.getCountry() + "</td>");

                    if (result.getTime() != null) {
                        out.println("<td>" + result.getTime() + "</td>");
                    } else {
                        out.println("<td>" + result.getStatus() + "</td>");
                    }
                    out.println("</tr>");
                }

                out.println("</table>");
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }
}
