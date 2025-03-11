import java.util.*;
import java.io.*;
import java.lang.*;
import java.lang.Thread;

public class Main {
    public static void main(String[] args) {//Thread 1
        System.out.println("From Main thread!");
        System.out.println("From Main thread!");
        System.out.println("From Main thread!");
        KTask1Thread1 t1 = new KTask1Thread1();
        t1.start();//calls run method-Thread 2
        //t1.run();
        KTask1Thread2 t2 = new KTask1Thread2();
        Thread tt2 = new Thread(t2);
        new Thread(t2).start();//Thread 3
        tt2.start();//Thread 4
        t2.run();//Thread 5
    }
}

class KTask1Thread1 extends Thread {
    public void run() {
        System.out.println("From Thread1!" + this.getName());
        // System.out.println(10/0);
    }
}

class KTask1Thread2 implements Runnable {
    public void run() {
        System.out.println("From Thread2!" + Thread.currentThread().getName());
//        System.out.println(10 / 0);
    }
}
