package com.service;

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

}
