package cbb.domain;

//中间表，数据库中并没有实体
public class OrderUserAndGoodName {
    String id;
    String username;
    String goodname;
    String price;

    @Override
    public String toString() {
        return "OrderUserAndGoodName{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", goodname='" + goodname + '\'' +
                ", price='" + price + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getGoodname() {
        return goodname;
    }

    public void setGoodname(String goodname) {
        this.goodname = goodname;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
