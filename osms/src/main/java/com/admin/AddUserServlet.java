package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username = request.getParameter("username");
		String usercontact = request.getParameter("useusercontact");
		String uaeradd = request.getParameter("uaeradd");
		String useremail = request.getParameter("useremail");
		String nic = request.getParameter("nic");
		
		boolean isTrue;
		
		isTrue = ItemDBUtil.insertUserDetails(username, usercontact, uaeradd, useremail, nic);
		
		if(isTrue == true) {
			
			List<User> user = ItemDBUtil.getUserDetails();
			request.getSession().setAttribute("user",user);
			
			RequestDispatcher dis = request.getRequestDispatcher("smdashboard.jsp");
		    dis.forward(request, response);
		}
		else {
			System.out.println("data not insert");
		}
	}

}
