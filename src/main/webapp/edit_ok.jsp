<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.common.dao.MemberDAO"%>
<%@page import="com.common.bean.MemberVO"%>
<%@page import="com.common.common.FileUpload"%>
<%
  request.setCharacterEncoding("utf-8");
  MemberDAO memberDAO = new MemberDAO();
  FileUpload upload = new FileUpload();
  MemberVO u = upload.uploadPhoto(request);

  int i = memberDAO.updateMember(u);
  String msg = "데이터 수정 성공 !";
  if(i == -1) msg = "[에러] 데이터 수정 실패 ";
%>

<script>
  alert('<%=msg%>');
  location.href='list.jsp';
</script>