<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.example.dao.MemberDAO"%>
<%@page import="com.example.bean.MemberVO"%>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원정보 - 실전프로젝트 회원관리 V1</title>
  <link rel="stylesheet" href="member.css">
</head>
<body>
<%
  MemberDAO memberDAO = new MemberDAO();
  String id = request.getParameter("id");
  MemberVO u = memberDAO.getOne(Integer.parseInt(id));
  request.setAttribute("vo",u);
%>
  <h1>회원 정보 보기</h1>
  <table id="edit">
    <tr>
      <td class="td1">User ID</td><td>${vo.getUserid()}</td>
    </tr>
    <tr>
      <td class="td1">Name</td><td>${vo.getUsername()}</td>
    </tr>
    <tr>
      <td class="td1">Photo</td><td><c:if test="${vo.getPhoto() ne ''}"><br />
      <img src="${pageContext.request.contextPath }/upload/${vo.getPhoto()}" class="photo"></c:if></td>
    </tr>
    <tr>
      <td class="td1">Email</td><td>${vo.getEmail()}</td>
    </tr>
    <tr>
      <td class="td1">Detail</td><td>${vo.getDetail()}</td>
    </tr>
  </table>
  <button class="btn_form_do" type="button" onclick="location.href='editform.jsp?id=${vo.getSid()}'">수정하기</button>
  <button class="btn_form_back" type="button" onclick="history.back()">뒤로 가기</button>



</body>
</html>
