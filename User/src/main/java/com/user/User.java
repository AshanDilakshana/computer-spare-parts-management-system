package com.user;


public class User {
    private int id;
    private String name;
    private String price;
    private String qty;
    private String total;
    
    
    
    
    
	public User(int id, String name, String price, String qty, String total) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.qty = qty;
		this.total = total;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getQty() {
		return qty;
	}
	public void setQty(String qty) {
		this.qty = qty;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
   
   
	
	
    
    
   
	

	


}
