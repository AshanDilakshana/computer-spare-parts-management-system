package com.inventory;


public class User {
    private int id;
    private String name;
    private String url;
    private String ptype;
    private String type;
    private String available;
    private String price;
	public User(int id, String name, String url, String ptype, String type, String available, String price) {
		super();
		this.id = id;
		this.name = name;
		this.url = url;
		this.ptype = ptype;
		this.type = type;
		this.available = available;
		this.price = price;
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
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAvailable() {
		return available;
	}
	public void setAvailable(String available) {
		this.available = available;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
    
    
   
	

	


}
