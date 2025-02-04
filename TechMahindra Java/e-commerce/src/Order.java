public class Order {
    private String orderId;
    private Customer customer;
    private Product product;
    public Order(String orderId, Customer customer, Product product){
            System.out.println("Order id:" + orderId);
            System.out.println("Customer id:" + customer.getId());
            System.out.println("Product id:" + product.getProductId());
            System.out.println("Product name:" + product.getProductName());
            System.out.println("Product price:" + product.getProductPrice());
            System.out.println("Customer name:" + customer.getName());
            System.out.println("Customer phone:" + customer.getPhone());

    }
}
