package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.ClassDAO;
import com.dto.ClassDTO;

public class ClassService {
	ClassDAO dao;
	
	public ClassService() {
		dao= new ClassDAO();
	}
	
	public ClassDTO select(int classNum) {
		
		SqlSession session= MySqlSessionFactory.getSession();
		ClassDTO dto= null;
		try {
			dto= dao.select(session, classNum);
		} finally {
			session.close();
		}
		return dto;
	}

	public String selectUserName(String userId) {
		SqlSession session= MySqlSessionFactory.getSession();
		String name="";
		try {
			name= dao.selectUserName(session, userId);
		} finally {
			session.close();
		}
		return name;
	}

//	public String selectClass(String classId) {
//		SqlSession session= MySqlSessionFactory.getSession();
//		String con_class = null;
//		try {
//			con_class= dao.selectClass(session, classId);
//		} finally {
//			session.close();
//		}
//		return con_class;
//	}
	
	public HashMap selectContent(int classNum) {
		SqlSession session= MySqlSessionFactory.getSession();
		HashMap con_class = null;
		try {
			con_class= dao.selectContent(session, classNum);
		} finally {
			session.close();
		}
		return con_class;
	}

}
