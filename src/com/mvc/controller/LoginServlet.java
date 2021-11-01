package com.mvc.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;

import com.mvc.bean.LoginBean;
import com.mvc.dao.LoginDao;

public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest  request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
	
	
	 LoginBean loginBean = new LoginBean();
	 loginBean.setUserName(userName);
	 loginBean.setPassword(password);
	 
	 LoginDao loginDao = new  LoginDao();
	 String userValidate = loginDao.authenticateUser(loginBean);
	 
	 if (userValidate.equals("SUCCESS")) {
		 
		request.setAttribute("userName", userName);	
		request.getRequestDispatcher("/HomeLogin.jsp").forward(request, response);
	 }
	 else {
		 
		 request.setAttribute("errMessage", userValidate);	
			request.getRequestDispatcher("/Login.jsp");
		 
	 	  }
	}
	
}
