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
	
	public List<ClassDTO> select(String classId) {
		SqlSession session= MySqlSessionFactory.getSession();
		List<ClassDTO> list= null;
		try {
			list= dao.select(session, classId);
		} finally {
			session.close();
		}
		return list;
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

	public HashMap<String, Object> selectContent(String classId) {
		
		HashMap<String, Object> contents = null;
		SqlSession session= MySqlSessionFactory.getSession();
		try {
			contents= dao.selectContent(session, classId);
		} finally {
			session.close();
		}
		return contents;
	}

	public String selectClass(String classId) {
		SqlSession session= MySqlSessionFactory.getSession();
		String con_class = null;
		try {
			con_class= dao.selectClass(session, classId);
		} finally {
			session.close();
		}
		return con_class;
	}

}
