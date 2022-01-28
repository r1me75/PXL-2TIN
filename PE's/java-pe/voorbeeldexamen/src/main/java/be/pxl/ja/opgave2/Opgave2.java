package be.pxl.ja.opgave2;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;

public class Opgave2 {
	public static void main(String[] args) throws IOException {
		final String SEPERATOR = File.separator;
		Path FILE_PATH = Path.of(String.format("src%smain%sresources%sopgave2%spassphrases.txt", SEPERATOR, SEPERATOR, SEPERATOR, SEPERATOR));

		BufferedReader reader = null;
		int aantal_geldige_zinnen = 0;

		try {
			reader = Files.newBufferedReader(FILE_PATH);
			String line;
			while ((line = reader.readLine()) != null) {
				PassPhraseValidator<String> passPhrase = new PassPhraseValidator<>(Arrays.asList(line.split(" ")));
				passPhrase.start();
				passPhrase.join();
				if (passPhrase.isValid()) {
					aantal_geldige_zinnen++;
				}
			}
		} catch (IOException | InterruptedException ex) {
			System.out.println("Error occured while reading file: " + ex.getMessage());
		} finally {
			if (reader != null) {
				reader.close();
			}
		}
		System.out.println("Aantal geldige wachtwoordzinnen: " + aantal_geldige_zinnen);
	}
}
