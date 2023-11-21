<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.example.dao.MemberDAO, com.example.bean.MemberVO,java.util.*"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>짱구 컴퍼니 </title>
    <link rel="stylesheet" href="member.css">
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='delete_ok.jsp?id=' + id;
        }
    </script>
</head>
<body>

<h1>회원목록</h1>
<%
    MemberDAO boardDAO = new MemberDAO();
    List<MemberVO> list = boardDAO.getMemberList();
    request.setAttribute("list",list);
%>
<table id="list" width="90%">
    <tr>
        <th>No</th>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Regdate</th>
        <th>View</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u" varStatus="status">
        <tr>
            <td>${fn:length(list)-status.index}</td>
            <td>${u.getUserid()}</td>
            <td>${u.getUsername()}</td>
            <td>${u.getEmail()}</td>
            <td>${u.getRegdate()}</td>
            <td><a href="view.jsp?id=${u.getSid()}">View</a></td>
            <td><a href="editform.jsp?id=${u.getSid()}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.getSid()}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<button class="btn_add" type="button" onclick="location.href='addform.jsp'">회원 추가</button>
</body>
</html>