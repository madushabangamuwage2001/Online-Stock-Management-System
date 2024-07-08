package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("userCode");
		String name = request.getParameter("username");
		String con = request.getParameter("useusercontact");
		String add = request.getParameter("uaeradd");
		String ema = request.getParameter("useremail");
		String nic = request.getParameter("nic");
		
		boolean isTrue;
		

		isTrue = ItemDBUtil.updateUserDetails(id, name, con, add, ema, nic);
		//check update user
		if(isTrue == true) {
			
			List<User> user = ItemDBUtil.getUserDetails();
			request.getSession().setAttribute("user",user);
			
			RequestDispatcher dis = request.getRequestDispatcher("smdashboard.jsp");
		    dis.forward(request, response);
		}
		else {
			System.out.println("data not updated");
		}
	}

}
