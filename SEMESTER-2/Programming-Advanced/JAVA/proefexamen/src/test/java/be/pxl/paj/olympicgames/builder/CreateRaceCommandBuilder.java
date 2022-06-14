package be.pxl.paj.olympicgames.builder;

import be.pxl.paj.olympicgames.api.data.CreateRaceCommand;
import be.pxl.paj.olympicgames.domain.Discipline;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class CreateRaceCommandBuilder {
    private static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    private Discipline discipline;
    private LocalDateTime localDateTime;

    private CreateRaceCommandBuilder() {}

    public static CreateRaceCommandBuilder aCreateRaceCommand() {
        return new CreateRaceCommandBuilder();
    }

    public CreateRaceCommandBuilder withDiscipline(Discipline discipline) {
        this.discipline = discipline;
        return this;
    }

    public CreateRaceCommandBuilder withDateTime(LocalDateTime localDateTime) {
        String text = localDateTime.format(FORMATTER);
        this.localDateTime = LocalDateTime.parse(text, FORMATTER);
        return this;
    }

    public CreateRaceCommand build() {
        return new CreateRaceCommand(discipline, localDateTime);
    }

}
