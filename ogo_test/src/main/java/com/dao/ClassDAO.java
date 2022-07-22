package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.ClassDTO;

public class ClassDAO {

	public List<ClassDTO> select(SqlSession session) {
		List<ClassDTO> list =session.selectList("select");
		return list;
	}

}
