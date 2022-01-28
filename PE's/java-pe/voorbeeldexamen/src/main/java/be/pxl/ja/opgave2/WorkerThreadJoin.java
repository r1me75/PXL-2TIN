package be.pxl.ja.opgave2;

public class WorkerThreadJoin extends Thread {
    @Override
    public void run() {
        System.out.println("Line A (" + Thread.currentThread ().getName () + ")");
        System.out.println("Line B (" + Thread.currentThread ().getName () + ")");
        System.out.println("Line C (" + Thread.currentThread ().getName () + ")");
        System.out.println("Line D (" + Thread.currentThread ().getName () + ")");
        System.out.println("Line E (" + Thread.currentThread ().getName () + ")");
    }

    public static void main(String [] args) {
        WorkerThreadJoin workerThread = new WorkerThreadJoin();
        System.out.println(workerThread.getState ());
        workerThread.start ();
        System.out.println(workerThread.getState ());
        System.out.println("Line 1 (" + Thread.currentThread ().getName () + ")");
        try {
            workerThread.join ();
        } catch ( InterruptedException e) {
            e. printStackTrace ();
        }
        System.out.println("Line 2 (" + Thread.currentThread ().getName () + ")");
        System.out.println("Line 3 (" + Thread.currentThread ().getName () + ")");
        System.out.println(workerThread.getState ());
    }
}
