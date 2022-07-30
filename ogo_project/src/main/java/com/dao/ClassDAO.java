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


//	public String selectClass(SqlSession session, String classId) {
//		String con_class = session.selectOne("ClassMapper.selectClass", classId);
//		return con_class;
//	}
	public HashMap selectContent(SqlSession session, String classId) {
		HashMap con_class = session.selectOne("ContentMapper.selectContent", classId);
		return con_class;
	}

}
