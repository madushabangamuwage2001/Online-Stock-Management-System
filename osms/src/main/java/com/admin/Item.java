package com.admin;

public class Item {
	

	private String itemcode;
	private String itemname;
	private String itemquntity;
	private String itemprice;
	private String supplier;
	
	public Item(String itemcode, String itemname, String itemquntity, String itemprice, String supplier) {
		
		this.itemcode = itemcode;
		this.itemname = itemname;
		this.itemquntity = itemquntity;
		this.itemprice = itemprice;
		this.supplier = supplier;
	}
	
	public String getItemcode() {
		return itemcode;
	}



	public String getItemname() {
		return itemname;
	}

	

	public String getItemquntity() {
		return itemquntity;
	}

	
	public String getItemprice() {
		return itemprice;
	}



	public String getSupplier() {
		return supplier;
	}

	

}
