package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class ItemDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;
	
	public static List<Item> getItemDetails(){
		
		
		ArrayList<Item> item = new ArrayList<>();
		
		
		try {
			
			con = DBConnect.getConnection();
			stat = con.createStatement();
			
			String sql = "select * from stock_management.items";
			rs = stat.executeQuery(sql);	
			
			while(rs.next()) {
				
				String code = rs.getString(1);
				String name = rs.getString(2);
				String qtv = rs.getString(3);
				String price = rs.getString(4);
				String supp = rs.getString(5);
				
				Item it = new Item(code,name,qtv,price,supp);
				item.add(it);
			}

			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return item;
		
	}
	
	public static boolean insertItemDetails(String name,String qtv,String price,String supp) {
		
		isSuccess= false;
		
		try {
			
			 con = DBConnect.getConnection(); 
			 stat = con.createStatement();
			 
			 String sql = "insert into stock_management.items values (0,'"+name+"','"+qtv+"','"+price+"','"+supp+"')";
			 int rs = stat.executeUpdate(sql);
			 
			 if(rs > 0) {
				 
				 isSuccess = true;
				 
			 }
			 else {
				 
				 isSuccess = false;
			 }

		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static boolean updateItemDetails(String code,String name,String qtv,String price,String supp) {
		
		try {
			
			con = DBConnect.getConnection();
	        stat = con.createStatement();
	        
	        String sql = "update stock_management.items set item_name='"+name+"',item_quntity='"+qtv+"',item_price='"+price+"',supplier='"+supp+"'"
	        		+ "where item_code='"+code+"'";
	        int rs = stat.executeUpdate(sql);
	        
	        if(rs > 0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
	 


		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean deleteItem(String code) {
		
		
		try {
			
			con = DBConnect.getConnection();
	        stat = con.createStatement();
	        
	        
	        String sql = "delete from stock_management.items where item_code='"+code+"'";
	        int rs = stat.executeUpdate(sql);
	        
	        
	        if(rs > 0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
	 

			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<User> getUserDetails(){
		
		
		ArrayList<User> user = new ArrayList<>();
		
		
		try {
			
			con = DBConnect.getConnection();
			stat = con.createStatement();
			
			String sql = "select * from stock_management.stockmanagement";
			rs = stat.executeQuery(sql);	
			
			while(rs.next()) {
				
				String id = rs.getString(1);
				String name = rs.getString(2);
				String cont = rs.getString(3);
				String add = rs.getString(4);
				String email = rs.getString(5);
				String nic = rs.getString(6);
				
				User u = new User(id,name,cont,add,email,nic);
				user.add(u);
				
			}

			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return user;
	}
	
	public static boolean insertUserDetails(String name,String contact,String address,String email,String NIC) {
		
		isSuccess= false;
		
		try {
			
			 con = DBConnect.getConnection(); 
			 stat = con.createStatement();
			 
			 String sql = "insert into stock_management.stockmanagement values (0,'"+name+"','"+contact+"','"+address+"','"+email+"','"+NIC+"')";	
			 int rs = stat.executeUpdate(sql);
			 
			 if(rs > 0) {
				 
				 isSuccess = true;
				 
			 }
			 else {
				 
				 isSuccess = false;
			 }

		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		return isSuccess;
	}
	public static boolean updateUserDetails(String code, String name, String cont, String ad, String em, String nic) {
	    try {
	        con = DBConnect.getConnection();
	        stat = con.createStatement();

	        String sql = "update stock_management.stockmanagement set username='" + name + "', usercontact='" + cont + "', useraddress='" + ad + "', usereemail='" + em + "', usernic='" + nic + "' where UserID='" + code + "'";
	        int rs = stat.executeUpdate(sql);

	        if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	        System.out.println(isSuccess);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}
	
public static boolean deleteUser(String code) {
		
		
		try {
			
			con = DBConnect.getConnection();
	        stat = con.createStatement();
	        
	        
	        String sql = "delete from stock_management.stockmanagement where UserID='"+code+"'";
	        int rs = stat.executeUpdate(sql);
	        
	        
	        if(rs > 0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
	 

			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	



	
	
}