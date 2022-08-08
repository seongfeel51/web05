package com.starsports.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starsports.dao.MemberDAO;
import com.starsports.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDAO.memberList();
	}

	@Override
	public void joinMember(MemberDTO mdto) throws Exception {
		memberDAO.joinMember(mdto);
	}

	@Override
	public MemberDTO loginMember(MemberDTO member) throws Exception {
		return memberDAO.loginMember(member);	
	}

	@Override
	public void deleteMember(MemberDTO member) throws Exception {
		memberDAO.deleteMember(member);
	}

	@Override
	public int idCheck(String id) throws Exception {
		return memberDAO.idCheck(id);
	}

	@Override
	public boolean loginMemberTest(MemberDTO member) throws Exception {
		if(member.getMid().equals("admin") && member.getMpw().equals("1234")) {
			return true;	
		} else {
			return false;
		}
	}
}
