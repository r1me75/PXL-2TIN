package be.pxl.paj.olympicgames;

import be.pxl.paj.olympicgames.service.OlympicGamesServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class OlympicGames {

	@Autowired private OlympicGamesServlet servlet;

	public static void main(String[] args) {
		SpringApplication.run(OlympicGames.class, args);
	}

	@Bean
	public ServletRegistrationBean<OlympicGamesServlet> olympicGamesServletBean() {
		ServletRegistrationBean<OlympicGamesServlet> bean = new ServletRegistrationBean<>(servlet, "/RaceResults");
		bean.setLoadOnStartup(1);
		return bean;
	}
}
