
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
<h1>WebContent/center/join-DelPro.jsp</h1>
 <%
    // 한글처리
    request.setCharacterEncoding("UTF-8");
    // 전달되는 정보 저장 (pass)
    String id =request.getParameter("id");
    String pass = request.getParameter("pass");
    
    JoinDAO bdto = JoinDAO.getInstance();
    int check= bdto.userCheck(id, pass);
    
    if(check==1){
        bdto.deleteMember(id);
        session.invalidate();        
%>       
    <script>
        alert("회원탈퇴 완료");
        location.href="indexOrigin.html";
    </script>
		
</body>
</html>
<%}else{%>
    <!-- 무엇이 틀렸는지 안알려준다  보안! -->
    <script>
        alert("id 또는 비밀번호가 맞지 않습니다.");
        history.go(-1);
    </script>
<%}%>