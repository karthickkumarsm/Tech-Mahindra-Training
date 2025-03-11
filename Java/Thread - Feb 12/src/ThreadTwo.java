public class ThreadTwo {
    public static void main(String[] args) {
        KTask3Thread1 threadTwo = new KTask3Thread1();
        Thread t1 = new Thread(threadTwo);
        Thread t2 = new Thread(threadTwo);
        t1.start();
        t2.start();
        threadTwo.run();
    }
}

class KTask3Thread1 extends Thread{
    public void run(){
        System.out.println("From ThreadTwo!" + this.getName());
        System.out.println("From ThreadTwo!" + this.getName());
        System.out.println(10/0);
    }
}