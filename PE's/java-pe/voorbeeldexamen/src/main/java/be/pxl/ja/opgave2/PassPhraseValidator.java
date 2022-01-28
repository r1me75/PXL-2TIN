package be.pxl.ja.opgave2;

import java.util.List;

public class PassPhraseValidator<T> extends Thread {
    private final List<T> values;
    private boolean valid = true;

    @Override
    public void run() {
        for (int i = 0; i < values.size(); i++) {
            for (int j = i + 1; j < values.size(); j++) {
                if (values.get(i).equals(values.get(j))) {
                    this.valid = false;
                    break;
                }
            }
        }
    }

    public PassPhraseValidator(List<T> lijst) {
        this.values = lijst;
    }

    public List<T> getPassPhrase() {
        return this.values;
    }

    public boolean isValid() {
        return this.valid;
    }

}
