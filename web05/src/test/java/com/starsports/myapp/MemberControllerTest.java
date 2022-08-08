package com.starsports.myapp;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.starsports.controller.MemberController;
import com.starsports.dto.MemberDTO;
import com.starsports.service.MemberService;

public class MemberControllerTest {
	
	MemberService memberService;

	@Test
	public final void login() throws Exception {
		MemberDTO member = new MemberDTO();
		member.setMname("hello");
		member.setMpw("1234");
		
	}

}
