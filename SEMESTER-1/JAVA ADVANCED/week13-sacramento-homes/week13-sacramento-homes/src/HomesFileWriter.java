import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

public class HomesFileWriter extends Thread {

    private Path filePath;
    private List<Property> properties;

    public HomesFileWriter(String filename, List<Property> properties) {
        this.filePath = Paths.get(System.getProperty("user.dir")).resolve(filename);
        this.properties = properties;
    }

    @Override
    public void run() {
        try (BufferedWriter bw = Files.newBufferedWriter(filePath)) {
            this.properties.stream().forEach(property -> {
                try {
                    bw.write(property.toFormattedOutput());
                    bw.newLine();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            });
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
