package com.starsports.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.starsports.dto.FAQDTO;
import com.starsports.service.FAQService;
import com.starsports.util.PageMaker;
@Controller
@RequestMapping("/faq/")
public class FAQController {
	
	@Autowired
	FAQService faqService;
	
	@Autowired
	HttpSession session;
	
//	@RequestMapping(value="list.do", method = RequestMethod.GET)
//	public String faqList(Model model) throws Exception {
//		List<FAQDTO> faqList = faqService.faqList();
//		int cnt = faqService.faqCount();
//		model.addAttribute("cnt",cnt);
//		model.addAttribute("faqList", faqList);
//        return "FAQ/faqList";
//    }
	
	@RequestMapping(value="list.do", method = RequestMethod.GET)
    public String faqList(@RequestParam("curPage") int curPage, Model model) throws Exception {
		int cnt = faqService.faqCount();
		PageMaker page = new PageMaker(cnt, curPage, 10, 5);
		List<FAQDTO> faqList = faqService.faqList(page);
		model.addAttribute("faqList", faqList);
		model.addAttribute("page", page);
		model.addAttribute("cnt", cnt);
        return "faq/faqList";
    }
	
}