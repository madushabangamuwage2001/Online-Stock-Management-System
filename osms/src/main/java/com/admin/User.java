package com.admin;

public class User {

	public String getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getContact() {
		return contact;
	}

	public String getAddress() {
		return address;
	}
	
	public String getEmail() {
		return email;
	}

	public String getNIC() {
		return NIC;
	}
	
	public User(String id, String name, String contact, String address, String email, String nIC) {
		
		this.id = id;
		this.name = name;
		this.contact = contact;
		this.address = address;
		this.email = email;
		NIC = nIC;
	}
	private String id;
	private String name;
	private String contact;
	private String address;
	private String email;
	private String NIC;
	
}
