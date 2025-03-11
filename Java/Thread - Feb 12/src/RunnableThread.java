class ThreadThree extends Thread {

    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println("From ThreadThree!");
        }
    }
}

class ThreadRunnableOne implements Runnable {

    public void run() {
        for (int i = 0; i < 2; i++) {
            System.out.println("From ThreadRunnableOne!");
        }
    }
}

class ThreadRunnableTwo implements Runnable {

    public void run() {
        for (int i = 0; i < 3; i++) {
            System.out.println("From ThreadRunnableTwo!");
        }
    }
}

public class RunnableThread {

    public static void main(String[] args) {
        ThreadThree t1 = new ThreadThree();
        ThreadThree t2 = new ThreadThree();
        ThreadThree t3 = new ThreadThree();
        t1.start();
        t2.start();
        t3.start();
        Thread runnableOneThread = new Thread(new ThreadRunnableOne());
        runnableOneThread.start();
        Thread runnableTwoThread1 = new Thread(new ThreadRunnableTwo());
        Thread runnableTwoThread2 = new Thread(new ThreadRunnableTwo());

        runnableTwoThread1.start();
        runnableTwoThread2.start();
    }
}
