package com.starsports.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.starsports.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList("member.memberList");
	}

	@Override
	public void joinMember(MemberDTO mdto) throws Exception {
		sqlSession.insert("member.joinMember", mdto);
	}

	@Override
	public MemberDTO loginMember(MemberDTO member) throws Exception {
		return sqlSession.selectOne("member.loginMember", member);	
	}

	@Override
	public void deleteMember(MemberDTO member) throws Exception {
		sqlSession.delete("member.deleteMember", member);
	}

	@Override
	public int idCheck(String id) throws Exception {
		return sqlSession.selectOne("member.idCheck", id);
	}
	
}
