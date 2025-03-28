/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author dangk
 */
public class productDTO {
    private int id;
    private String productname;
    private String description;
    private int category_id;
    private int quantity;
    private float price;
    private boolean status;
    private String srcimg;

    public productDTO() {
    }

    public productDTO(String productname, String description,  int quantity, float price, boolean status, String srcimg) {
        this.productname = productname;
        this.description = description;
        
        this.quantity = quantity;
        this.price = price;
        this.status = status;
        this.srcimg = srcimg;
    }

    public productDTO(int id, String productname, String description,  int quantity, float price, boolean status, String srcimg) {
        this.id = id;
        this.productname = productname;
        this.description = description;
        
        this.quantity = quantity;
        this.price = price;
        this.status = status;
        this.srcimg = srcimg;
    }

    public productDTO(int id, String productname, String description, int category_id, int quantity, float price, boolean status, String srcimg) {
        this.id = id;
        this.productname = productname;
        this.description = description;
        this.category_id = category_id;
        this.quantity = quantity;
        this.price = price;
        this.status = status;
        this.srcimg = srcimg;
    }

    public productDTO(String productname, String description, int category_id, int quantity, float price, boolean status, String srcimg) {
        this.productname = productname;
        this.description = description;
        this.category_id = category_id;
        this.quantity = quantity;
        this.price = price;
        this.status = status;
        this.srcimg = srcimg;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getSrcimg() {
        return srcimg;
    }

    public void setSrcimg(String srcimg) {
        this.srcimg = srcimg;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }
    
    
    
}
