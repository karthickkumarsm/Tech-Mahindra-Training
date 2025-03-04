import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.TreeSet;

public class SetCollectionDemo {
    public static void main(String[] args) {
        HashSet<Integer> hs = new HashSet<>();
        hs.add(35);
        hs.add(23);
        hs.add(67);
        hs.add(82);
        hs.add(56);
        hs.add(49);
        hs.add(13);
        hs.add(70);
        LinkedHashSet<String> lhs = new LinkedHashSet<>();
        lhs.add("Apple");
        lhs.add("Banana");
        lhs.add("Mango");
        lhs.add("Orange");
        lhs.add("Pineapple");
        lhs.add("Grapes");
        lhs.add("Guava");
        lhs.add("Papaya");
        TreeSet<Float> ts = new TreeSet<>();
        ts.add(35.0f);
        ts.add(19.0f);
        ts.add(10.0f);
        ts.add(82.0f);
        ts.add(56.0f);
        ts.add(49.0f);
        ts.add(13.0f);
        ts.add(70.0f);
        setSample(hs);
        setSample(lhs);
        setSample(ts);
    }
    public static void setSample(HashSet<Integer> hs){
        hs.remove(13);
        System.out.println("Numbers divisible by 7:");
        for(Integer i : hs){
            if(i%7==0){
                System.out.println(i);
            }
        }
    }
    public static void setSample(LinkedHashSet<String> lhs){
        lhs.remove("Papaya");
        System.out.println("Fruits with more than 5 characters:");
        for(String i : lhs){
            if(i.length()>5){
                System.out.println(i);
            }
        }
    }
    public static void setSample(TreeSet<Float> ts){
        System.out.println("Numbers greater than or equal to 20:");
        ts.remove(13.0f);
        for(Float i : ts){
            if(i>20){
                System.out.println(i);
            }
        }
    }
}


