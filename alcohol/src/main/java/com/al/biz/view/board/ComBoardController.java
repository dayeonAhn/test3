package com.al.biz.view.board;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.al.biz.board.ComBoardService;
import com.al.biz.board.ComBoardVo;

@Controller
@SessionAttributes("comm")  // session 영역에 저장
public class ComBoardController {
	
	@Autowired
	private ComBoardService comboardservice;
	
	//글 목록 보기
//	@RequestMapping("/getComBoardList.do") //HTTP 요청 경로 지정
//	public String getComBoardList(ComBoardVo vo, Model model) {
//        List<ComBoardVo> comboardList = comboardservice.getComBoardList(vo);
//        System.out.println("Controller에서 받은 데이터: " + comboardList);
//        model.addAttribute("comboardList", comboardList);
//        return "getComBoardList.jsp";
//    }
	
	//글 목록 보기(페이징 기능)
	@RequestMapping("/getComBoardList.do") //HTTP 요청 경로 지정
	public String getComBoardList(ComBoardVo vo, Model model,@RequestParam(value = "page", defaultValue = "1") int page) {
		int pageSize = 10;
	    List<ComBoardVo> comboardList = comboardservice.getComBoardList(vo, page, pageSize);
	    
	    int totalCount = comboardservice.getTotalCount(); // 전체 게시물 수
	    int totalPages = (int) Math.ceil(totalCount / (double) pageSize);

	    model.addAttribute("comboardList", comboardList);
	    model.addAttribute("currentPage", page);
	    model.addAttribute("totalPages", totalPages);

	    return "./comboard/getComBoardList.jsp";
    }
	
	//글 상세 조회
	@RequestMapping("/getComBoard.do")
	public String getComBoard(ComBoardVo vo, Model model) {
		System.out.println("글 상세 조회");
		model.addAttribute("comboard", comboardservice.getComBoard(vo));
		return "getComBoard.jsp";
	}	
	
	//글 등록
	@RequestMapping(value="/insertComBoard.do")
	public String insertComBoard(ComBoardVo vo) {
		comboardservice.insertComBoard(vo);
		return "redirect:getComBoardList.do";
	}
	
	//글 삭제
	@RequestMapping("/deleteComBoard.do")
	public String deleteComBoard(ComBoardVo vo) {
		comboardservice.deleteComBoard(vo);
		return "redirect:getComBoardList.do";
	}
	
	// 글 수정
	@RequestMapping("/updateComBoard.do")
	public String updateBoard(@ModelAttribute("comboard") ComBoardVo vo) {
		comboardservice.updateComBoard(vo);  //boardDAO를 command 객체로 사용하지 않고 boardService를 사용하여 기능할 수 있다
		return "redirect:getBoardList.do";
	}
}












