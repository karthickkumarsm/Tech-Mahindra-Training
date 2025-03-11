public class ThreadOne {
    public static void main(String[] args) {
        KTask2Thread1 t1 = new KTask2Thread1();
        t1.start();
    }
}
class KTask2Thread1 extends Thread {
    public void run() {

        System.out.println("From Thread1!" + this.getName());
        System.out.println("From Thread1!" + this.getName());
        System.out.println("From Thread1!" + this.getName());
    }
}