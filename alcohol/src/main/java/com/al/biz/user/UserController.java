package com.al.biz.user;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("user")  // session 영역에 저장
public class UserController {
	
	@Resource(name="userService")
	private UserService userService;

	//////////////////////////////////////////////////////////////////////////////////////////

	// 회원가입 폼페이지
	@RequestMapping(value="/joinMemForm.do")
	public String insertUserForm(UserVO vo, BindingResult result, Model model) throws IllegalStateException, IOException { 
		//boardDAO.insertBoard(vo);
		
		if (result.hasErrors()) {
	        // 유효성 검증 실패 시, 다시 회원가입 페이지로 돌아감
	        model.addAttribute("errorMessage", "회원 정보 입력에 오류가 있습니다. 다시 확인해주세요.");
	        return "/member/joinMember.jsp";
	    }

		  try {
		        userService.insertUser(vo);
		        return "redirect:/member/Login.jsp";

		    } catch (Exception e) {
		        // 예외 발생 시
		        model.addAttribute("errorMessage", "시스템 오류가 발생했습니다. 관리자에게 문의하세요.");
		        return "member/joinMember.jsp";
		    }
	}
	
	// 회원가입
	@RequestMapping(value="/joinMem.do")
	public String insertUser(UserVO vo, HttpServletRequest request) throws IllegalStateException, IOException { 
		//boardDAO.insertBoard(vo);
		   String email = (String)request.getParameter("email");
		   String emailSelect = (String)request.getParameter("emailSelect");
		   
		   String realEmail = email+"@"+emailSelect;
		   vo.setEmail(realEmail);
		   
		   userService.insertUser(vo); 
		   return "redirect:/member/Login.jsp";
	}
	
	
	
	// 로그인 링크보내기
	@RequestMapping(value="/LoginForm.do")
	public String getUserForm(UserVO vo, BindingResult result, HttpServletRequest request, Model model) throws IllegalStateException, IOException {
		
		HttpSession session = request.getSession();
		
		String viewName = "/";
		
		
		if(session.getAttribute("sessId") == null) {
			return "/member/Login.jsp";
		}else {
		    return "/";
		}
	}
	
	
	//login행위
	@RequestMapping(value="/login.do")
	public String getUser(UserVO vo, HttpServletRequest request) throws IllegalStateException, IOException {
		HttpSession session = request.getSession();
		
		String viewName = "/";
		
		vo = userService.getUser(vo);
		if(vo.getId() == null) {
			viewName = "redirect:/member/Login.jsp";
		}else {
			session.setAttribute("sessId", vo.getId());
			session.setAttribute("sessName", vo.getName());
			session.setAttribute("sessPhone", vo.getPhone());
		}
		
		return viewName;
	}

	// 글 수정
//	@RequestMapping("/updateBoard.do")
//	public String updateBoard(@ModelAttribute("board") BoardVO vo/* , BoardDAO boardDAO */) {
//		
//		
//		System.out.println(vo.getSeq());
//		System.out.println(vo.getTitle());
//		System.out.println(vo.getWriter());
//		System.out.println(vo.getContent());
//		System.out.println(vo.getRegDate());
//		System.out.println(vo.getCnt());
//
//	
//		//boardDAO.updateBoard(vo);
//		boardService.updateBoard(vo);
//		return "redirect:getBoardList.do";
//	}
	
	// 글 삭제
//	@RequestMapping("/deleteBoard.do")
//	public String deleteBoard(BoardVO vo/* , BoardDAO boardDAO */) {
//		//boardDAO.deleteBoard(vo);
//		boardService.deleteBoard(vo);
//		return "redirect:getBoardList.do";
//	}
	
	// 글 상세 조회
//	@RequestMapping("/getBoard.do")
//	public String getBoard(BoardVO vo/* , BoardDAO boardDAO */, Model model/*ModelAndView mav*/) {
//		
//		model.addAttribute("board", boardService.getBoard(vo));     // request영역에 저장
//		return "getBoard.jsp";
//		
//		mav.addObject("board", boardDAO.getBoard(vo)); // Model 정보 저장
//		mav.setViewName("getBoard.jsp"); // View 정보 저장
//		return mav;	
//	}
}













