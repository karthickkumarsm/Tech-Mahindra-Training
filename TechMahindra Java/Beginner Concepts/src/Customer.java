public class Customer {
    private String id;
    private String name;
    private long phone;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public double getPhone() {
        return phone;
    }
    public void setPhone(long phone) {
        this.phone = phone;
    }
    public Customer(String id, String name, long phone){
        System.out.println("Name:" + name);
        System.out.println("Phone:" + phone);
        System.out.println("Id:" + id);
    }
}
