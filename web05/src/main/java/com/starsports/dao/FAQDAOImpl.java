package com.starsports.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.starsports.dto.FAQDTO;
import com.starsports.util.PageMaker;

@Repository
public class FAQDAOImpl implements FAQDAO{
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<FAQDTO> faqList(PageMaker page) throws Exception {
		return sqlSession.selectList("faq.faqList", page);
	}

	@Override
	public int faqCount() throws Exception {
		return sqlSession.selectOne("faq.faqCount");
	}
	
}
