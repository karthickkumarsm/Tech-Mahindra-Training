public class Product {
    private String productId;
    private String productName;
    private double productPrice;
    public String getProductId() {
        return productId;
    }
    public void setProductId(String productId) {
        this.productId = productId;
    }
    public String getProductName() {
        return productName;
    }
    public void setProductName(String productName) {
        this.productName = productName;
    }
    public double getProductPrice() {
        return productPrice;
    }
    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }
    public Product(String productId, String productName, double productPrice){
        this.productId = productId;
        this.productName = productName;
        this.productPrice = productPrice;
    }
    public void displayProduct(){
        System.out.println("Product id:" + productId);
        System.out.println("Product name:" + productName);
        System.out.println("Product price:" + productPrice);
    }
}
