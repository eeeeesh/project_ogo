package com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.ClassDTO;
import com.service.ClassService;

/**
 * Servlet implementation class ClassPageServlet
 */
@WebServlet("/ClassPageServlet")
public class ClassPageServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String classId= "a001"; //나중에 클래스id getParameter로 받아오면 될 듯
		ClassService service= new ClassService();
		List<ClassDTO> list =service.select(classId);
		String userId= "user01";
		String userName=service.selectUserName(userId);
		
//		String con = "con_class";
//		String con_class =service.selectContent(classId, con);
//		System.out.println(con_class);
		
		String con_class =service.selectClass(classId);
		System.out.println(con_class);
		
		HttpSession session= request.getSession();
		session.setAttribute("list", list);
		session.setAttribute("userName", userName);
		session.setAttribute("con_class", con_class);
		
		RequestDispatcher dis =request.getRequestDispatcher("ClassPage.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
