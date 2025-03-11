public class StringDemo {
    public static void main(String[] args) {
        String str = "Hello World";
        System.out.println(str);


        //StringBuffer guarantee synchoronization
        StringBuffer s = new StringBuffer("Hello World");
        System.out.println(s);


        //StringBuilder doesn't guarantee synchronization
        StringBuilder sb = new StringBuilder("Hello World");
        System.out.println(sb);
    }
}
