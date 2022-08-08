package com.starsports.service;

import java.util.List;

import com.starsports.dto.FAQDTO;
import com.starsports.util.PageMaker;

public interface FAQService {
//	public List<FAQDTO> faqList() throws Exception;
	public List<FAQDTO> faqList(PageMaker page) throws Exception;
	public int faqCount() throws Exception;
}
