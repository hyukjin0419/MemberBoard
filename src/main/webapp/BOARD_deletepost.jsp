<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.common.dao.BoardDAO, com.common.bean.BoardVO"%>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		BoardVO u = new BoardVO();
		u.setSeq(id);
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.deleteBoard(u);
	}
	response.sendRedirect("BOARD_posts.jsp");
%>