package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateItemServlet")
public class UpdateItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String code = request.getParameter("itemCode");
		String itemname = request.getParameter("itemName");
		String qtv = request.getParameter("itemQuantity");
		String price = request.getParameter("itemPrice");
		String supp = request.getParameter("supplier");
		
		boolean isTrue;
		
		isTrue = ItemDBUtil.updateItemDetails(code, itemname, qtv, price, supp);
		//check update item
		if(isTrue == true) {
			
			List<Item> itemsdetails = ItemDBUtil.getItemDetails();
			request.getSession().setAttribute("itemsdetails",itemsdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("admin dashboard.jsp");
		    dis.forward(request, response);
		}
		else {
			System.out.println("data not updated");
		}
		
	
	}

}
