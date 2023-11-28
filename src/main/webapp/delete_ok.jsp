<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.common.dao.MemberDAO"%>
<%@ page import="com.common.bean.MemberVO"%>
<%@ page import="com.common.common.FileUpload"%>
<%
  String sid = request.getParameter("id");
  if(sid != ""){
    int id = Integer.parseInt(sid);
    MemberDAO memberDAO = new MemberDAO();
    String filename = memberDAO.getPhotoFilename(id);
    if(filename != null)
      FileUpload.deleteFile(request, filename);

    memberDAO.deleteMember(id);
  }
  response.sendRedirect("list.jsp");
%>