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
        <td class="td1">User ID</td><td><input class="td_input" type="text" name="userid" ></td>
      </tr>
      <tr>
        <td class="td1">Name</td><td><input class="td_input" type="text" name="username" ></td>
      </tr>
      <tr>
        <td class="td1">Photo</td><td><input class="td_input" type="file" name="photo" ></td>
      </tr>
      <tr>
        <td class="td1">Email</td><td><input class="td_input" type="email" name="email" ></td>
      </tr>
      <tr>
        <td class="td1">Detail</td><td><textarea cols="33" rows="5" name="detail" ></textarea></td>
      </tr>
    </table>
    <button class="btn_form_do" type="submit">회원 추가</button>
    <button class="btn_form_back" type="button" onclick="location.href='list.jsp'">목록 보기</button>
  </form>
</body>
</html>
