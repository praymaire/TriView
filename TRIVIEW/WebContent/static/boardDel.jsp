<%@page import="com.itwillbs.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/static/boardDel.jsp</h1>
  
  <%
    // 한글처리
    request.setCharacterEncoding("UTF-8");
    // 전달되는 정보 저장 (pageNum,num)
   	String pageNum = request.getParameter("pageNum");
    int num = Integer.parseInt(request.getParameter("num"));
    
    // DAO 객체 생성 - deleteBoard(num)
    BoardDAO bdao = new BoardDAO();
    int result =  bdao.deleteBoard(num);
      
    // 처리결과에 따른 페이지이동  
   if(result == 1){ // 수정완료
		 %>
		  <script type="text/javascript">
		     alert(" 게시글 삭제완료! ");
		     location.href='board.jsp';
		  </script>		 
		 <%		 
	 }else{
		 %>
		  <script type="text/javascript">
		     alert(" 게시글 없음!! ");
		     location.href='board.jsp';
		  </script>
		 <%
	 }
	%>
</body>
</html>