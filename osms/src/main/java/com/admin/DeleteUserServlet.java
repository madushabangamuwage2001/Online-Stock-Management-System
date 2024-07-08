package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String code = request.getParameter("code");
		
		boolean isTrue;
		
		isTrue = ItemDBUtil.deleteUser(code);
		//check the user details are deleted
		if(isTrue == true) {
			
			List<User> user = ItemDBUtil.getUserDetails();
			request.getSession().setAttribute("user",user);
			
			RequestDispatcher dis = request.getRequestDispatcher("smdashboard.jsp");
		    dis.forward(request, response);
		}
		else {
			
			System.out.println("not deleted");
		}
	}

}
