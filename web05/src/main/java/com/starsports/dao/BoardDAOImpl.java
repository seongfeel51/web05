package com.starsports.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.starsports.dto.BoardDTO;
import com.starsports.util.PageMaker;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	SqlSession sqlSession;
	

	@Override
	public List<BoardDTO> BoardPageList(PageMaker page) throws Exception {
		return sqlSession.selectList("board.boardPageList", page);
	}

	@Override
	public BoardDTO BoardRead(int seq) throws Exception {
		return sqlSession.selectOne("board.boardRead", seq);
	}

	@Override
	public int BoardCount() throws Exception {
		return sqlSession.selectOne("board.boardCount");
	}

	@Override
	public void addBoard(BoardDTO board) throws Exception {
		sqlSession.insert("board.addBoard", board);
	}

	@Override
	public void deleteBoard(BoardDTO board) throws Exception {
		sqlSession.delete("board.deleteBoard", board);
	}

	@Override
	public void updateBoard(BoardDTO board) throws Exception {
		sqlSession.update("board.updateBoard", board);
	}
	
}
