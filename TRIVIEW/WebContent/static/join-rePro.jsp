<%@page import="com.itwillbs.join.JoinDTO"%>
<%@page import="com.itwillbs.join.JoinDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/static/join-rePro.jsp</h1>
	
	<%
	
        request.setCharacterEncoding("utf-8");
	 
	 
	 // => 액션태그	
	%>
	<jsp:useBean id="bdto" class="com.itwillbs.join.JoinDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="bdto"/>
	
	<%
	bdto.setId((String)session.getAttribute("id"));

    JoinDAO manager = JoinDAO.getInstance();
    manager.updateMember(bdto);
    %>

		 <script>
        alert(" 회원정보가 정상적으로 수정되었습니다. ");
        location.href="board.jsp";
        </script>
		  
</body>
</html>
