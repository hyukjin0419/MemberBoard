<%@page language="java" contentType="text/html; charset=UTF-8"
			   pageEncoding="UTF-8"%>
<%@page import="com.common.dao.BoardDAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.common.bean.BoardVO" />
<jsp:setProperty property="*" name="u"/>

<%
	BoardDAO boardDAO = new BoardDAO();
	int i=boardDAO.updateBoard(u);
	response.sendRedirect("BOARD_posts.jsp");
%>