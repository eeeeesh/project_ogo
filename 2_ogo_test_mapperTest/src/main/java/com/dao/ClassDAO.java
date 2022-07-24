package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.ClassDTO;

public class ClassDAO {

	public List<ClassDTO> select(SqlSession session, String classId) {
		List<ClassDTO> list =session.selectList("ClassMapper.select", classId);
		return list;
	}

	public String selectUserName(SqlSession session, String userId) {
		String name =session.selectOne("ClassMapper.selectUserName", userId);
		return name;
	}

	public HashMap<String, Object> selectContent(SqlSession session, String classId) {
		HashMap<String, Object> contents= session.selectOne("ClassMapper.selectContent", classId);
		return contents;
	}

	public String selectClass(SqlSession session, String classId) {
		String con_class = session.selectOne("ClassMapper.selectClass", classId);
		return con_class;
	}

}
