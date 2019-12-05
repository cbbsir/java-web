package cbb.domain;

public class Good {
    private String id;
    private String goodname;
    private String price;
    private String information;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    @Override
    public String toString() {
        return "Good{" +
                "id='" + id + '\'' +
                ", goodname='" + goodname + '\'' +
                ", price='" + price + '\'' +
                ", information='" + information + '\'' +
                '}';
    }
}
