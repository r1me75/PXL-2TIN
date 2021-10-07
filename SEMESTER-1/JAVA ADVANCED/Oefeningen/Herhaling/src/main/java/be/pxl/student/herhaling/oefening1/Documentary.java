package be.pxl.student.herhaling.oefening1;

public class Documentary extends Movie {

    private String topic;

    public Documentary(String title, Rating rating) {
        super(title, rating);
        super.addGenre(Genre.DOCUMENTARY);
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    @Override
    public void play() {
        StringBuilder result = new StringBuilder();
        result.append("Playing documentary").append(this);
        if (topic != null) {
            result.append(" on ").append(topic);
        }
        System.out.println(result.toString());
    }

    @Override
    public void pause() {
        System.out.println("Pausing documentary " + this);
    }
}
