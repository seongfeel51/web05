package com.starsports.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.starsports.dto.MemberDTO;

@Repository
public interface MemberDAO {
	public List<MemberDTO> memberList() throws Exception;
	public void joinMember(MemberDTO mdto) throws Exception;
	public MemberDTO loginMember(MemberDTO member) throws Exception;
	public void deleteMember(MemberDTO member) throws Exception;
	public int idCheck(String id) throws Exception;
}
