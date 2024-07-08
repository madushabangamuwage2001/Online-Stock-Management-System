package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteItemServlet")
public class DeleteItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String code = request.getParameter("code");
		
		boolean isTrue;
		
		isTrue = ItemDBUtil.deleteItem(code);
		//check the item details are deleted
		if(isTrue == true) {
			
			List<Item> itemsdetails = ItemDBUtil.getItemDetails();
			request.getSession().setAttribute("itemsdetails",itemsdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("admin dashboard.jsp");
		    dis.forward(request, response);
		}
		else {
			
			System.out.println("not deleted");
		}
		
	}

}
