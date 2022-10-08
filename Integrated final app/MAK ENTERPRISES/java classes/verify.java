/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myClasses;


import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import org.Klint.*;
import com.Nahurira.*;

@WebServlet("/loginServlet")
public class verify extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		
		if(action == null) {
			Account account = checkCookie(request);
			if(account == null) {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else {
					AccountModel accountmodel = new AccountModel();
					if(accountmodel.login(account.getUsername(), account.getPassword())) {
						session.setAttribute("username", account.getUsername());
						request.getRequestDispatcher("dashboard.jsp").forward(request, response);
					}else {
						request.setAttribute("Error", "Account is Invalid");
						request.getRequestDispatcher("login.jsp").forward(request, response);
					}
					
				}
			
			
		}else {
			if(action.equalsIgnoreCase("logout")) {
				//delete session
				session.removeAttribute("username");
				//delete cookie
				Cookie[] cookies = request.getCookies();
				for(Cookie ck: cookies) {
					
				if(ck.getName().equalsIgnoreCase("username")){
					ck.setMaxAge(0);
					response.addCookie(ck);
				}
				
				if(ck.getName().equalsIgnoreCase("password")){
					ck.setMaxAge(0);
					response.addCookie(ck);
				}
			}
				request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
}
	
	private Account checkCookie(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		Account account = null;
		
		if(cookies == null) {
			return null;
		}else {
			String username=""; String password = "";
			for(Cookie ck:cookies) {
				if(ck.getName().equalsIgnoreCase("username"))
					username = ck.getValue();
				if(ck.getName().equalsIgnoreCase("password"))
					username = ck.getValue();
			}
			
			
			if(!username.isEmpty()&&!password.isEmpty())
				account = new Account(username,password);
		}
		return account;
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		AccountModel accountmodel = new AccountModel();
		if(action == null) {
			String username = request.getParameter("email");
			String password = request.getParameter("password");
			boolean remember = request.getParameter("remember") != null;
			if(accountmodel.login(username, password)) {
				session.setAttribute("username", username);
				if(remember) {
					Cookie ckUserName = new Cookie("username", username);
					ckUserName.setMaxAge(3600);
					response.addCookie(ckUserName);
					Cookie ckPassword = new Cookie("password", password);
					ckPassword.setMaxAge(3600);
					response.addCookie(ckPassword);
				}
				response.sendRedirect("customer/my-cart.jsp");
			}
		else {
			request.setAttribute("Error", "Invalid Account");
			response.sendRedirect("http://localhost:8080/MAK_ENTERPRISES/customer/login.jsp");
		}
	}
	}

}
