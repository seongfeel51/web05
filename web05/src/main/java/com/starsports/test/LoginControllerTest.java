package com.starsports.test;

import javax.servlet.http.HttpSession;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;

import com.starsports.dto.MemberDTO;
import com.starsports.service.MemberService;

@Controller
public class LoginControllerTest {

	@Autowired
	MemberService memberService;
	
	@Autowired
	HttpSession session;
	
	@Test
	public void test() throws Exception {  //로그인 테스트
		System.out.println("Controller Test~!");
		MemberDTO member = new MemberDTO();
		member.setMid("admin");
		member.setMpw("1234");
		System.out.println("Controller id : "+member.getMid());
		boolean login = memberService.loginMemberTest(member);
		if(login==true) {
			System.out.println("로그인 성공");
		} else {
			System.out.println("로그인 실패");
		}
	}
}