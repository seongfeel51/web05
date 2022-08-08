package com.starsports.dao;

import java.util.List;

import com.starsports.dto.FAQDTO;
import com.starsports.util.PageMaker;

public interface FAQDAO {
	public List<FAQDTO> faqList(PageMaker page) throws Exception;
	public int faqCount() throws Exception;
}
