package com.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.HeartService;

/**
 * Servlet implementation class HeartServlet
 */
@WebServlet("/HeartServlet")
public class HeartServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//userId와 classNum은 classPage.jsp에서 ajax로 받아와서 처리
		String userId= "id1";
		int classNum= 2;
		
		//찜 
		HeartService service= new HeartService();
		HashMap<String, Object> map= new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("classNum", classNum);
		//클래스의 찜 여부 확인
		//classPage.jsp에서 클릭 시 발생해야 함 
		int count=service.heartCount(map);
		System.out.println("count: "+count);
//		if (count==1) { //찜 되어 있는 경우 - heart에서 delete
//			int num = service.heartdelete(map);
//			System.out.println("delete 성공:"+num);
//			//num이 1인 경우 delete 성공 -> 알림창
//			
//			
//		}else { //찜 되어 있지 않은 경우 - heart에 insert
//			
//		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
