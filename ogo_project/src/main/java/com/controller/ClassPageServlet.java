package com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

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
@WebServlet("/ClassPage")
public class ClassPageServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int classNum= 2; //나중에 클래스id 받아오기
		
		ClassService service= new ClassService();
		ClassDTO dto= service.select(classNum);
		//System.out.println(dto);//dto 확인
		
		String userId= dto.getUserId();
		String nickName=service.selectUserName(userId);
		
		HashMap classContents =service.selectContent(classNum); //resultMap
		//System.out.println(classContents);
		
		request.setAttribute("dto", dto);
		request.setAttribute("nickName", nickName);
		request.setAttribute("classContents", classContents);
		
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
