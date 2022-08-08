package com.starsports.service;

import java.util.List;

import com.starsports.dto.GoodsDTO;

public interface GoodsService {
	public List<GoodsDTO> goodsList() throws Exception;
	public List<GoodsDTO> football() throws Exception;
	public void insertGoods(GoodsDTO goods) throws Exception;
	public GoodsDTO getGoods(int gnum) throws Exception;
}
