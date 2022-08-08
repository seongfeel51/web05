package com.starsports.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;
import com.starsports.dto.BoardDTO;
import com.starsports.service.BoardService;
import com.starsports.util.PageMaker;

@Controller
@RequestMapping("/board/")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	HttpSession session;
	
	//페이지메이커를 활용한 페이지 분리하기 목록
	@RequestMapping(value="pageList.do", method = RequestMethod.GET)
    public String boardPageList(@RequestParam("curPage") int curPage, Model model) throws Exception {
		int cnt = boardService.BoardCount();
		//PageMaker page = new PageMaker(cnt, curPage);
		//PageMaker page = new PageMaker(cnt, curPage, 10);
		PageMaker page = new PageMaker(cnt, curPage, 9, 10);
		List<BoardDTO> boardPageList = boardService.BoardPageList(page);
		model.addAttribute("boardPageList", boardPageList);
		model.addAttribute("page", page);
		model.addAttribute("cnt", cnt);
        return "board/boardPageList";
    }
	
//	//일반 글쓰기 폼을 호출 
//	@RequestMapping(value="addBoardForm.do", method = RequestMethod.GET)
//    public String addBoardForm(Model model) throws Exception {
//        return "board/addBoardForm";
//    }
	
//	//일반 글쓰기 처리
//	@RequestMapping(value="addNotice.do", method = RequestMethod.POST)
//    public String addBoard(BoardDTO board, Model model) throws Exception {
//		boardService.addBoard(board);
//        return "redirect:/board/list.do";
//    }
//	
	/* ckeditor 폼 호출 */ 
	@RequestMapping(value="addBoardForm.do", method = RequestMethod.GET)
    public String addBoardSmartForm(Model model) throws Exception {
        return "board/addBoardForm";
    }
	
	/* ckeditor를 활용한 글쓰기 처리 */
	@RequestMapping(value="addBoard.do", method = RequestMethod.POST)
    public String addSmartBoard(BoardDTO board, Model model) throws Exception {
		boardService.addBoard(board);
        return "redirect:/board/list.do";
    }
	
	//파일 업로드
	@ResponseBody
	@RequestMapping(value = "fileupload.do")
    public void communityImageUpload(HttpServletRequest req, HttpServletResponse resp, MultipartHttpServletRequest multiFile) throws Exception{
		JsonObject jsonObject = new JsonObject();
		PrintWriter printWriter = null;
		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");
		
		if(file != null) {
			if(file.getSize() >0 && StringUtils.isNotBlank(file.getName())) {
				if(file.getContentType().toLowerCase().startsWith("image/")) {
				    try{
				    	 
			            String fileName = file.getOriginalFilename();
			            byte[] bytes = file.getBytes();
			           
			            //String uploadPath = req.getSession().getServletContext().getRealPath("/views/upload"); //저장경로
			            String uploadPath = "D:\\kimjunho\\jsp3\\web05\\src\\main\\webapp\\WEB-INF\\views\\upload";
			            System.out.println("uploadPath:"+uploadPath);

			            File uploadFile = new File(uploadPath);
			            if(!uploadFile.exists()) {
			            	uploadFile.mkdir();
			            }
			            String fileName2 = UUID.randomUUID().toString();
			            uploadPath = uploadPath + "/" + fileName2 +fileName;
			            
			            out = new FileOutputStream(new File(uploadPath));
			            out.write(bytes);
			            
			            printWriter = resp.getWriter();
			            //String fileUrl = "/views/upload/"+fileName2+fileName;
			            String fileUrl = "D:\\kimjunho\\jsp3\\web05\\src\\main\\webapp\\WEB-INF\\views\\upload"+fileName2+fileName; //url경로
			            System.out.println("fileUrl :" + fileUrl);
			            JsonObject json = new JsonObject();
			            json.addProperty("uploaded", 1);
			            json.addProperty("fileName", fileName);
			            json.addProperty("url", fileUrl);
			            printWriter.print(json);
			            System.out.println(json);
			 
			        }catch(IOException e){
			            e.printStackTrace();
			        } finally {
			            if (out != null) {
		                    out.close();
		                }
		                if (printWriter != null) {
		                    printWriter.close();
		                }
			        }
				}
			}
		}
	}
	
	@RequestMapping(value="boardRead.do", method = RequestMethod.GET)
    public String boardRead(@RequestParam("seq") int seq, Model model) throws Exception {
		BoardDTO board = boardService.BoardRead(seq);
		model.addAttribute("board", board);
        return "board/boardRead";
    }
	
	@RequestMapping(value="updateBoard.do", method = RequestMethod.POST)
    public String updateBorad(BoardDTO board, Model model) throws Exception {
		boardService.updateBoard(board);
		return "redirect:/board/list.do";
    }
	
	@RequestMapping(value="deleteBoard.do", method = RequestMethod.GET)
    public String deleteBoard(@RequestParam("seq") int seq, Model model) throws Exception {
		BoardDTO board = new BoardDTO();
		board.setSeq(seq);
		boardService.deleteBoard(board);
		return "redirect:/board/list.do";
    }
}