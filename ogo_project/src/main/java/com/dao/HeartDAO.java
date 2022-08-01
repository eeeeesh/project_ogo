package com.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

public class HeartDAO {

	public int heartCount(SqlSession session, HashMap<String, Object> map) {
		int num=session.selectOne("HeartMapper.heartCount", map);
		return num;
	}

	public int heartdelete(SqlSession session, HashMap<String, Object> map) {
		int num =session.delete("HeartMapper.heartdelete", map);
		return num;
	}

}
