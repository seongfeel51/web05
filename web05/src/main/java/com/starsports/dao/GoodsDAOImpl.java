package com.starsports.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.starsports.dto.GoodsDTO;

@Repository
public class GoodsDAOImpl implements GoodsDAO{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<GoodsDTO> goodsList() throws Exception {
		return sqlSession.selectList("goods.goodsList");
	}

	@Override
	public List<GoodsDTO> football() throws Exception {
		return sqlSession.selectList("goods.football");
	}

	@Override
	public void insertGoods(GoodsDTO goods) throws Exception {
		sqlSession.insert("goods.insertGoods", goods);	
	}

	@Override
	public GoodsDTO getGoods(int gnum) throws Exception {
		return sqlSession.selectOne("goods.getGoods", gnum);
	}
	
}
