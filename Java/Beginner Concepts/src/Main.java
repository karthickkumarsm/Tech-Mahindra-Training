public class Main {
    public static void main(String[] args) {
        Customer customer = new Customer("ID001","Karthick Kumar SM",123456789L);
        Product product = new Product("ID001","Television",699);
        product.displayProduct();
        Order order = new Order("OD001",customer,product);
    }
}