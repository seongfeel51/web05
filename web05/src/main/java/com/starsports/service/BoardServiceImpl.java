package com.starsports.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.starsports.dao.BoardDAO;
import com.starsports.dto.BoardDTO;
import com.starsports.util.PageMaker;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public List<BoardDTO> BoardPageList(PageMaker page) throws Exception {
		return boardDAO.BoardPageList(page);
	}

	@Override
	public BoardDTO BoardRead(int seq) throws Exception {
		return boardDAO.BoardRead(seq);
	}

	@Override
	public int BoardCount() throws Exception {
		return boardDAO.BoardCount();
	}

	@Override
	public void addBoard(BoardDTO board) throws Exception {
		boardDAO.addBoard(board);
	}

	@Override
	public void deleteBoard(BoardDTO board) throws Exception {
		boardDAO.deleteBoard(board);
	}

	@Override
	public void updateBoard(BoardDTO board) throws Exception {
		boardDAO.updateBoard(board);
	}
	
}
