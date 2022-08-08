package com.starsports.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.starsports.dto.MemberDTO;

@Service
public interface MemberService {
	public List<MemberDTO> memberList() throws Exception;
	public void joinMember(MemberDTO mdto) throws Exception;
	public MemberDTO loginMember(MemberDTO member) throws Exception;
	public void deleteMember(MemberDTO member) throws Exception;
	public int idCheck(String id) throws Exception;
	public boolean loginMemberTest(MemberDTO member) throws Exception;

}
