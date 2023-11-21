<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.example.dao.MemberDAO"%>
<%@page import="com.example.bean.MemberVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>정보수정 - 실전프로젝트 회원관리 V1</title>
    <link rel="stylesheet" href="member.css">
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
</head>
<body>
<%
    MemberDAO memberDAO = new MemberDAO();
    String id = request.getParameter("id");
    MemberVO u = memberDAO.getOne(Integer.parseInt(id));
    request.setAttribute("vo",u);
%>
    <div class="container" style="width:600px">
        <div class="h2_title">
            <h2>회원 정보 수정</h2>
        </div>
    <form class="row g-3" action="edit_ok.jsp" method="post" enctype="multipart/form-data">
        <input type="hidden" name="sid" value="${vo.getSid()}"/>
        <label for="UserID" class="form-label">User ID</label>
        <input
                type="text"
                class="form-control"
                id="UserID"
                name="userid"
                value="${vo.getUserid()}"
        />
        <label for="Name" class="form-label">Name</label>
        <input
                type="text"
                class="form-control"
                id="Name"
                name="username"
                value="${vo.getUsername()}"
        />
        <label for="Photo" class="form-label">Photo</label>
        <input
                type="file"
                class="form-control"
                id="Photo"
                name="photo"
        />
        <!--<c:if test="${vo.getPhoto() ne ''}"><br /><img src="${pageContext.request.contextPath }/upload/${vo.getPhoto()}" class="photo"></c:if>-->
        <label for="Email" class="form-label">Email</label>
        <input
                type="email"
                class="form-control"
                id="Email"
                name="email"
                value="${vo.getEmail()}"
        />
        <label for="Detail" class="form-label">Detail</label>
        <textarea
                class="form-control"
                id="Detail"
                name="detail">${vo.getDetail()}</textarea>


        <button class="btn btn-primary" type="submit">회원정보 수정</button>
        <button class="btn btn-primary" type="button" onclick="history.back()">뒤로 가기</button>
    </form>
    </div>
</body>
</html>
