<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원추가 - 실전프로젝트 회원관리 V1</title>
  <link rel="stylesheet" href="member.css">
</head>
<body>
  <h1>신규 회원 추가</h1>
  <form action="add_ok.jsp" method="post" enctype="multipart/form-data">
    <table id="edit">
      <tr>
        <td>User Id</td><td><input type="text" name="userid" ></td>
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
        <td>Detail</td><td><input cols="50" rows="5" name="detail" ></td>
      </tr>
    </table>
    <button type="button" onclick="location.href='list.jsp'">목록 보기</button>
    <button type="submit">회원 추가</button>
  </form>
</body>
</html>
