<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.common.dao.MemberDAO"%>
<%@page import="com.common.bean.MemberVO"%>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원정보 - 실전프로젝트 회원관리 V1</title>
  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
          crossorigin="anonymous"
  />
  <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
          crossorigin="anonymous"
  ></script>
  <link rel="stylesheet" href="member.css">
</head>
<body>
<%
  MemberDAO memberDAO = new MemberDAO();
  String id = request.getParameter("id");
  MemberVO u = memberDAO.getOne(Integer.parseInt(id));
  request.setAttribute("vo",u);
%>
  <div class="container text-center" style="width:600px" >
    <div class="h2_title">
      <h2>회원 정보 보기</h2>
    </div>
    <div class="row g-3">
      <div class="view_text">User ID: ${vo.getUserid()}</div>
      <div class="view_text">Name: ${vo.getUsername()}</div>
      <div class="view_text">Photo: </div>
      <c:if test="${vo.getPhoto() ne ''}"><br />
        <img src="${pageContext.request.contextPath }/upload/${vo.getPhoto()}" class="photo"></c:if></td>
      <div class="form-label">Email: ${vo.getEmail()}</div>
      <div class="form-label">Detail: ${vo.getDetail()}</div>
      <button class="btn btn-primary" type="button" onclick="location.href='editform.jsp?id=${vo.getSid()}'">수정하기</button><br/>
      <button class="btn btn-primary" type="button" onclick="history.back()">뒤로 가기</button>
    </div>



</div>
</body>
</html>
