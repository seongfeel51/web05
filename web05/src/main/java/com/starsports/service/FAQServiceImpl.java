package com.starsports.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starsports.dao.FAQDAO;
import com.starsports.dto.FAQDTO;
import com.starsports.util.PageMaker;

@Service
public class FAQServiceImpl implements FAQService{
	@Autowired
	FAQDAO faqDAO;

//	@Override
//	public List<FAQDTO> faqList() throws Exception {
//		return faqDAO.faqList();
//	}

	@Override
	public List<FAQDTO> faqList(PageMaker page) throws Exception {
		return faqDAO.faqList(page);
	}

	@Override
	public int faqCount() throws Exception {
		return faqDAO.faqCount();
	}
	
}
