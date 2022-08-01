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
import com.service.HeartService;

/**
 * Servlet implementation class ClassPageServlet
 */
@WebServlet("/ClassPage")
public class ClassPageServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int classNum= 2; //나중에 클래스Num 받아오기
		
		ClassService service= new ClassService();
		//클래스 정보
		ClassDTO dto= service.select(classNum);
			//System.out.println(dto);//dto 확인
		
		String userId= dto.getUserId();
			//System.out.println(userId);//id확인
		
		//튜터 닉네임
		String nickName=service.selectUserName(userId);
		//클래스소개,튜터소개,일정장소,유의사항,공지사항-resultMap
		HashMap classContents =service.selectContent(classNum); 
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
