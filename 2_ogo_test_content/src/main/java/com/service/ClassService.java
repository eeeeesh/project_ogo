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

	public String selectContent(String classId, String con) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("classId", classId);
		map.put("con", con);
		
		SqlSession session= MySqlSessionFactory.getSession();
		String contents = null;
		try {
			contents= dao.selectContent(session, map);
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
