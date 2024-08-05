<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.al.biz.board.*" %>
<%@ page import="com.al.biz.board.imple.*" %>  
<%
	request.setCharacterEncoding("UTF-8");
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");

	BoardDAO dao = new BoardDAO();
	BoardVO vo = new BoardVO();
	
	vo.setTitle(title);
	vo.setContent(content);
	
	dao.insertBoard(vo);
	
	response.sendRedirect("getBoardList.jsp");
%>