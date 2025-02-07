class ThreadDemo extends Thread {
    private StringBuilder sb;

    public ThreadDemo(StringBuilder sb) {
        this.sb = sb;
    }

    @Override
    public void run() {
        // Appending to StringBuilder
        sb.append(Thread.currentThread().getName());
        System.out.println("Thread " + Thread.currentThread().getName() + ": " + sb);
    }
    public static void main(String[] args) {
            StringBuilder sb = new StringBuilder();
            ThreadDemo t1 = new ThreadDemo(sb);
            ThreadDemo t2 = new ThreadDemo(sb);
            t1.start();
            t2.start();
    }
}
