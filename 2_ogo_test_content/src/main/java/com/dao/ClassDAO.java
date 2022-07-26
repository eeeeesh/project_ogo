package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.ClassDTO;

public class ClassDAO {

	public ClassDTO select(SqlSession session, String classId) {
		ClassDTO dto =session.selectOne("ClassMapper.select", classId);
		return dto;
	}

	public String selectUserName(SqlSession session, String userId) {
		String name =session.selectOne("ClassMapper.selectUserName", userId);
		return name;
	}

	public String selectContent(SqlSession session, HashMap<String, String> map) {
		String contents = session.selectOne("ClassMapper.selectContent", map);
		return contents;
	}

//	public String selectClass(SqlSession session, String classId) {
//		String con_class = session.selectOne("ClassMapper.selectClass", classId);
//		return con_class;
//	}
	public HashMap selectClass(SqlSession session, String classId) {
		HashMap con_class = session.selectOne("ClassMapper.selectClass2", classId);
		return con_class;
	}

}
