import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;
import java.util.Stack;

public class CollectionHandsOn {
    public static void main(String[] args) {
        ArrayListDemo.Output();
        LinkedListDemo.Output();
        VectorDemo.Output();
        StackDemo.Output();
        StackExternallyDemo.Output();
        ArrayListThread thread1 = new ArrayListThread();
        LinkedListThread thread2 = new LinkedListThread();
        StackThread thread3 = new StackThread();
        VectorThread thread4 = new VectorThread();
        thread1.start();
        thread2.start();
        thread3.start();
        thread4.start();

    }
}

class ArrayListDemo {
    public static void Output() {
        List<Integer> list1 = new ArrayList<>();
        list1.add(35);
        list1.add(23);
        list1.add(67);
        System.out.println("Number of elements in the list: "+list1.size());
        list1.add(12);
        System.out.println("After adding one element:");
        System.out.println("The given list is :"+list1);
        System.out.println("The number of elements in the list: "+list1.size());
        list1.remove(2);
        System.out.println("After removing elements:");
        System.out.println("The given list is :"+list1);
    }
}
class LinkedListDemo {
    public static void Output() {
        List<Integer> list1 = new LinkedList<>();
        list1.add(35);
        list1.add(23);
        list1.add(67);
        System.out.println("Number of elements in the list: "+list1.size());
        list1.add(12);
        System.out.println("After adding one element:");
        System.out.println("The given list is :"+list1);
        System.out.println("The number of elements in the list: "+list1.size());
        list1.remove(2);
        System.out.println("After removing elements:");
        System.out.println("The given list is :"+list1);
    }
}

class VectorDemo {
    public static void Output() {
        List<Integer> list1 = new Vector<>();
        list1.add(35);
        list1.add(23);
        list1.add(67);
        System.out.println("Number of elements in the list: "+list1.size());
        list1.add(12);
        System.out.println("After adding one element:");
        System.out.println("The given list is :"+list1);
        System.out.println("The number of elements in the list: "+list1.size());
        list1.remove(2);
        System.out.println("After removing elements:");
        System.out.println("The given list is :"+list1);
    }
}

class StackDemo{
    public static void Output() {
        List<Integer> list1 = new Stack<>();
        list1.add(35);
        list1.add(23);
        list1.add(67);
        System.out.println("Number of elements in the list: "+list1.size());
        list1.add(12);
        System.out.println("After adding one element:");
        System.out.println("The given list is :"+list1);
        System.out.println("The number of elements in the list: "+list1.size());
        list1.remove(2);
        System.out.println("After removing elements:");
        System.out.println("The given list is :"+list1);
    }
}

class StackExternallyDemo {
    public static void Output() {
        Stack<Integer> stack = new Stack<>();
        stack.push(35);
        stack.push(23);
        stack.push(67);
        System.out.println("Number of elements in the list: "+stack.size());
        stack.push(12);
        System.out.println("After adding one element:");
        System.out.println("The given list is :"+stack);
        System.out.println("The number of elements in the list: "+stack.size());
        stack.pop();
        System.out.println("After removing elements:");
        System.out.println("The given list is :"+stack);
    }
}

class ArrayListThread extends Thread {
    public void run() {
        List<Integer> arrayList = new ArrayList<>();
        arrayList.add(10);
        arrayList.add(20);
        arrayList.add(30);
        arrayList.add(40);
        System.out.println("ArrayList: " + arrayList);
        arrayList.remove(2);
        System.out.println("ArrayList after removal: " + arrayList);
    }
}

class LinkedListThread extends Thread {
    public void run() {
        List<Integer> linkedList = new LinkedList<>();
        linkedList.add(50);
        linkedList.add(60);
        linkedList.add(70);
        linkedList.add(80);
        System.out.println("LinkedList: " + linkedList);
        linkedList.remove(1);
        System.out.println("LinkedList after removal: " + linkedList);
    }
}

class StackThread extends Thread {
    public void run() {
        Stack<Integer> stack = new Stack<>();
        stack.push(100);
        stack.push(200);
        stack.push(300);
        stack.push(400);
        System.out.println("Stack: " + stack);
        stack.pop();
        System.out.println("Stack after pop: " + stack);
    }
}

class VectorThread extends Thread {
    public void run() {
        Vector<Integer> vector = new Vector<>();
        vector.add(500);
        vector.add(600);
        vector.add(700);
        vector.add(800);
        System.out.println("Vector: " + vector);
        vector.remove(2);
        System.out.println("Vector after removal: " + vector);
    }
}

