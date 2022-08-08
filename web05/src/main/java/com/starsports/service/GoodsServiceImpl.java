package com.starsports.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starsports.dao.GoodsDAO;
import com.starsports.dto.GoodsDTO;

@Service
public class GoodsServiceImpl implements GoodsService{
	@Autowired
	GoodsDAO goodsDAO;
	
	
	@Override
	public List<GoodsDTO> goodsList() throws Exception {
		return goodsDAO.goodsList();
	}


	@Override
	public List<GoodsDTO> football() throws Exception {
		return goodsDAO.football();
	}


	@Override
	public void insertGoods(GoodsDTO goods) throws Exception {
		goodsDAO.insertGoods(goods);
	}


	@Override
	public GoodsDTO getGoods(int gnum) throws Exception {
		return goodsDAO.getGoods(gnum);
	}
	

}
