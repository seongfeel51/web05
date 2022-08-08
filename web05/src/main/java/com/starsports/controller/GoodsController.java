package com.starsports.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.starsports.dto.GoodsDTO;
import com.starsports.dto.MemberDTO;
import com.starsports.service.GoodsService;

@Controller
@RequestMapping("/goods/")
public class GoodsController {
	@Autowired
	GoodsService goodsService;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping(value="list.do", method = RequestMethod.GET)
	public String goodsList(Model model) throws Exception{
		List<GoodsDTO> goodsList = goodsService.goodsList();
		model.addAttribute("goodsList", goodsList);
		return "goods/goodsList";
	}
	
	@RequestMapping(value="football", method = RequestMethod.GET)
	public String football(Model model) throws Exception{
		List<GoodsDTO> football = goodsService.football();
		model.addAttribute("football", football);
		return "goods/football";
	}
	
	@RequestMapping(value="insertGoodsForm", method = RequestMethod.GET)
	public String insertGoodsForm(Model model) throws Exception{
		return "goods/insertGoodsForm";
	}
	
	@RequestMapping(value="insertGoods", method = RequestMethod.POST)
	public String insertGoods(GoodsDTO goods, Model model) throws Exception{
		goodsService.insertGoods(goods);
		return "redirect:/goods/list.do";
	}
	
	@RequestMapping(value="getGoods.do", method = RequestMethod.GET)
    public String getGoods(int gnum, Model model) throws Exception {
		GoodsDTO goods = goodsService.getGoods(gnum);
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		int reviewCk = 0;
//		if(member!=null) {
//			String userid = member.getId();
//			reviewCk = reviewService.reviewUserCount(gnum, userid);
//		}
//		List<ReviewDTO> reviewList = reviewService.reviewList(gnum);
//		if(reviewCk >= 1) {
//			model.addAttribute("reviewCk", "yes");
//		} else {
//			model.addAttribute("reviewCk", "no");
//		}
		model.addAttribute("goods", goods);
//		model.addAttribute("reviewList", reviewList);
        return "goods/getGoods";
    }
}
