package be.pxl.ja.opgave2;

import java.time.LocalDateTime;
import java.util.Timer;
import java.util.TimerTask;

public class RepeatTask {
    public static void main(String[] args) {
        TimerTask repeatedTask = new TimerTask() {
            @Override
            public void run() {
                System.out.println("Task started on " + LocalDateTime.now());
                try {
                    Thread.sleep (2000);
                } catch ( InterruptedException e) {
                    e. printStackTrace ();
                }
                System.out.println("Task completed on " + LocalDateTime.now());
            }
        };

        Timer timer = new Timer("Timer");
        long period = 10000L;
        timer. scheduleAtFixedRate (repeatedTask , 0, period);
    }
}
