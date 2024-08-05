<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.*" %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	try{
	    String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
	     String dbId = "admin";
	     String dbPass = "1234";
	
	
	   Connection conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	
	out.println("success");
	}catch(Exception e){
	   out.print("error");
	}
%>
ww