<%@page import="com.itwillbs.join.JoinDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");

    String id =request.getParameter("id");
    String pass =request.getParameter("pass");
    
    JoinDAO manager =JoinDAO.getInstance();
    int check=manager.userCheck(id, pass);
    
    //userCheck에서 x를 return 받아서 로긴체크 
    //history.go(-1); : 전페이지로 (입력창)
    if(check==1){
        //로그인 성공
        session.setAttribute("id",id);
        response.sendRedirect("index.jsp");
        
    }else if(check==0){    
%>  
    <script>
        alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
        history.go(-1);        
    </script>
<%}else{ %>
    <script>
        alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
        history.go(-1);        
    </script>
<%} %>