<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.example.dao.MemberDAO"%>
<%@page import="com.example.bean.MemberVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>정보수정 - 실전프로젝트 회원관리 V1</title>
    <link rel="stylesheet" href="member.css">
</head>
<body>
<%
    MemberDAO memberDAO = new MemberDAO();
    String id = request.getParameter("id");
    MemberVO u = memberDAO.getOne(Integer.parseInt(id));
    request.setAttribute("vo",u);
%>
</body>
    <h1>회원 정보 수정</h1>
    <form action="edit_ok.jsp" method="post" enctype="multipart/form-data">
        <table id="edit">
            <tr>
                 <td>User Id</td><td><input type="text" name="userid" value></td>
            </tr>
            <tr>
                <td>Name</td><td><input type="text" name="username" ></td>
            </tr>
            <tr>
                <td>Photo</td><td><input type="file" name="photo" ></td>
            </tr>
            <tr>
                <td>Email</td><td><input type="email" name="email" ></td>
            </tr>
            <tr>
                <td>Detail</td><td><textarea cols="50" rows="5" name="detail" ></textarea></td>
            </tr>
        </table>
        <button type="button" onclick="history.back()">뒤로 보기</button>
        <button type="submit">회원정보 수정</button>
    </form>
</html>
