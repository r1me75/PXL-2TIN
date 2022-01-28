package be.pxl.ja.opgave2;

import java.util.List;

public class PassPhraseValidator<T> extends Thread {

    private List<T> list;
    private boolean valid = true;
    private boolean calculationsReady = false;

    public PassPhraseValidator(List<T> asList) {
        this.list = asList;
    }


    @Override
    public void run() {
        for (T element : list) {
            int counter = 0;
            for (int i = 0; i < list.size(); i++) {
                if (list.get(i).equals(element)) {
                    counter++;
                }
            }
            if (counter != 1) {
                valid = false;
            }
            counter = 0;
        }
        calculationsReady = true;
    }

    public String getPassPhrase() {
        return list.toString();
    }

    public boolean isValid() {
        while (!calculationsReady){
            try {
                sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return valid;
    }
}
