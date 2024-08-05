<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.al.biz.board.*" %>
<%@ page import="com.al.biz.board.imple.*" %> 
<%
	String idx = request.getParameter("idx");

	BoardDAO dao = new BoardDAO();
	BoardVO vo = new BoardVO();
	
	vo.setIdx(Integer.parseInt(idx));
	
	dao.deleteBoard(vo);
	
	response.sendRedirect("getBoardList.jsp");
%>