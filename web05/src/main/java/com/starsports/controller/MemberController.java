package com.starsports.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.starsports.dto.MemberDTO;
import com.starsports.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	@Autowired
	MemberService memberService;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	HttpServletRequest request;
	
	BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
	
	@RequestMapping(value="list.do", method = RequestMethod.GET)
	public String memberList(Model model) throws Exception {
		List<MemberDTO> memberList = memberService.memberList();
		model.addAttribute("memberList", memberList);
		return "member/list";
	}
	
	@RequestMapping(value="joinForm.do", method = RequestMethod.GET)
	public String joinMember(Model model) throws Exception{
		return "member/joinForm";
	}
	
	@RequestMapping(value="add.do", method = RequestMethod.POST)
	public String memberWrite(MemberDTO mdto, Model model) throws Exception {
		String reqpass = mdto.getMpw();
    	String Mpw = pwdEncoder.encode(reqpass);	
    	mdto.setMpw(Mpw);
		
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		if(email1 != null && email2 != null) {
			mdto.setEmail(email1+"@"+email2);
		}
		String mtel1 = request.getParameter("mtel1");
		String mtel2 = request.getParameter("mtel2");
		String mtel3 = request.getParameter("mtel3");
		if(mtel1 != null && mtel2 != null && mtel3 != null) {
			mdto.setPhone(mtel1+"-"+mtel2+"-"+mtel3);
		}
		
		System.out.println("비번"+Mpw);
		System.out.println("번호"+mtel1+mtel2+mtel3);
		System.out.println("메일"+email1+email2);
		
		memberService.joinMember(mdto);
		return "redirect:/";
	}
	
	@RequestMapping(value="loginForm.do", method = RequestMethod.GET)
    public String loginForm() {
        return "member/loginForm";
    }
    
    @RequestMapping(value="loginPro.do", method=RequestMethod.POST)
	public String loginPro(MemberDTO member, RedirectAttributes rttr) throws Exception {
    		MemberDTO login = memberService.loginMember(member);
    		boolean passMatch = pwdEncoder.matches(member.mpw, login.mpw);
    		if(login != null && passMatch == true) {
    			session.setAttribute("member", login);
    			session.setAttribute("sid", member.getMid());
    			return "redirect:/";
    		} else {
    			session.setAttribute("member", null);
    			rttr.addFlashAttribute("msg", false);
    			return "redirect:loginForm.do";
    		}
	}
    @RequestMapping(value="idCheck.do", method = RequestMethod.POST)
    @ResponseBody
    public String idCheck(@RequestParam("id") String id, MemberDTO member, RedirectAttributes rttr) throws Exception {
    	int cnt = memberService.idCheck(id);
    	String result = "";
    	if(cnt>0) {
    		result="false";
        	rttr.addAttribute("msg", false);
    	} else {
    		result="true";
        	rttr.addAttribute("msg", true);
    	}
    	rttr.addAttribute("result", result);
    	return result;
    }
    
    @RequestMapping(value="logout.do", method = RequestMethod.GET)
    public String logout(HttpSession session) {
    	session.invalidate();
        return "redirect:/";
    }

    @RequestMapping(value="deleteMember.do", method = RequestMethod.GET)
    public String deleteMember(MemberDTO member) throws Exception {
		memberService.deleteMember(member);
		return "member/logout.do";
    }
    
    @RequestMapping(value="updateMember.do", method = RequestMethod.GET)
	public String updateMember() {				
		return "member/update";
	}
}
