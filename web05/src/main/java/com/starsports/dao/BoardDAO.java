package com.starsports.dao;

import java.util.List;

import com.starsports.dto.BoardDTO;
import com.starsports.util.PageMaker;

public interface BoardDAO {
	public List<BoardDTO> BoardPageList(PageMaker page) throws Exception;
	public BoardDTO BoardRead(int seq) throws Exception;
	public int BoardCount() throws Exception;
	public void addBoard(BoardDTO board) throws Exception; 
	public void deleteBoard(BoardDTO board) throws Exception;
	public void updateBoard(BoardDTO board) throws Exception;
}
