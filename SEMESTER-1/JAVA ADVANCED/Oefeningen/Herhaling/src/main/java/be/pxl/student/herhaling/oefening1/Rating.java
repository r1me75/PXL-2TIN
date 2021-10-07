package be.pxl.student.herhaling.oefening1;

public enum Rating {
    LITTLE_KIDS(0),
    OLDER_KIDS(7),
    TEENS(12),
    MATURE(16);

    private int minimumAge;

    Rating(int minimumAge) {
        this.minimumAge = minimumAge;
    }
    Rating() {};
    public int getMinimumAge() {
        return minimumAge;
    }
}
