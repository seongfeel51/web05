package com.starsports.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.starsports.controller.Jumsu;

@Repository
public class JumsuDAOImpl implements JumsuDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void multiInsert(Jumsu jumsu) throws Exception {
		sqlSession.insert("jumsu.multiInsert", jumsu);
	}
}
