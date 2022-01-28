package be.pxl.ja.opgave2;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;

public class Opgave2 {
	public static void main(String[] args) {
		int validNumberOfPhrases = 0;
		Path path = Paths.get(System.getProperty("user.dir"));
		Path filePath = path.resolve("resources").resolve("opgave2").resolve("passphrases.txt");

		try (BufferedReader br = Files.newBufferedReader(filePath)) {
			String line = br.readLine();

			while (line != null) {
				PassPhraseValidator<String> passphrase = new PassPhraseValidator<>(new ArrayList<>(Arrays.asList(line.split(" "))));
				passphrase.start();
				if (passphrase.isValid()) {
					validNumberOfPhrases++;
				}

				line = br.readLine();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println("Aantal geldige wachtwoordzinnen: " + validNumberOfPhrases);
	}
}
