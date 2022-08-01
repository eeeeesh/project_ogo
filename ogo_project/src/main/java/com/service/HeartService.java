package com.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.HeartDAO;

public class HeartService {
	
	HeartDAO dao;
	
	public HeartService() {
		dao= new HeartDAO();
	}

	public int heartCount(HashMap<String, Object> map) {
		SqlSession session= MySqlSessionFactory.getSession();
		int n=0;
		try {
			n= dao.heartCount(session, map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return n;
	}

	public int heartdelete(HashMap<String, Object> map) {
		SqlSession session= MySqlSessionFactory.getSession();
		int n=0;
		try {
			n= dao.heartdelete(session, map);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return n;
	}

}
