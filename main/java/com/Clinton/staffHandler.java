package com.Clinton;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Statement;


public class staffHandler extends HttpServlet {       
   
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String CategoryLine = request.getParameter("category");
		String Contact = request.getParameter("phone");
		String address = request.getParameter("address");
		
		try {
			dbConnection con = new dbConnection();
			
			Statement st = con.database();
			
			
			st.executeUpdate("insert into employee(name,Category,contactno,address) values('"+name+"','"+CategoryLine+"','"+Contact+"','"+address+"')"); 
		} catch (Exception e) {
			out.println("Error: " + e.getMessage());
						
		}			
					
			request.getRequestDispatcher("registerStaff.jsp").forward(request, response);
			
					
		}
		
	
		
		
}

	
	


