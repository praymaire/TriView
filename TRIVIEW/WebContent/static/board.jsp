<%@page import="java.util.List"%>
<%@page import="com.itwillbs.board.BoardDTO"%>
<%@page import="com.itwillbs.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="shortcut icon" href="img/icons/icon-48x48.png" />

	<link rel="canonical" href="https://demo-basic.adminkit.io/pages-profile.html" />

	<title>회원 정보 | TRIVIEW</title>

	<link href="css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body>
	<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand" href="index.jsp">
          <span class="align-middle">TRIVIEW</span>
        </a>

				<ul class="sidebar-nav">
					<li class="sidebar-header">
						Pages
					</li>

					<li class="sidebar-item">
						<a class="sidebar-link" href="index.jsp">
              <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">메인 페이지</span>
            </a>
					</li>

					<li class="sidebar-item active">
						<a class="sidebar-link" href="board.jsp">
              <i class="align-middle" data-feather="user"></i> <span class="align-middle">회원 정보</span>
            </a>
					</li>

					

					<li class="sidebar-item">
						<a class="sidebar-link" href="plan.jsp">
              <i class="align-middle" data-feather="book"></i> <span class="align-middle">새로운 일정추가</span>
            </a>
					</li>

					
				</ul>

			</div>
		</nav>


<!-- 위 -->


			<div class="main">
			<nav class="navbar navbar-expand navbar-light navbar-bg">
				<a class="sidebar-toggle js-sidebar-toggle">
          <i class="hamburger align-self-center"></i>
        </a>

				<div class="navbar-collapse collapse">
					<ul class="navbar-nav navbar-align">
						<li class="nav-item dropdown">
							
							<a class="nav-icon dropdown-toggle" href="#" id="alertsDropdown" data-bs-toggle="dropdown">
								<div class="mb-2">
										<i class="align-middle me-2" data-feather="bookmark"></i> <span class="align-middle"></span>
									</div>
							</a>
	
						</li>
						
						
						
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle" href="#" id="messagesDropdown" data-bs-toggle="dropdown">
								<div class="mb-2">
										<i class="align-middle me-2" data-feather="mail"></i> <span class="align-middle"></span>
									</div>
							</a>
							
						</li>
						
						
						
						
						
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
                <i class="align-middle" data-feather="settings"></i>
              </a>

							<a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                <img src="img/avatars/basic_blue.jpg" class="avatar img-fluid rounded me-1" alt="USER" /> <span class="text-dark"><%=session.getAttribute("id")%></span>
              </a>
							<div class="dropdown-menu dropdown-menu-end">
								<a class="dropdown-item" href="board.jsp"><i class="align-middle me-1" data-feather="user"></i> 회원 정보</a>
								
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="Logout.jsp">
										<i class="align-middle me-2" data-feather="log-out"></i>Log out</a>
							</div>
						</li>
					</ul>
				</div>
			</nav>

			
			
			
			
			
			
			
			
			
			
			

			<main class="content">
				<div class="container-fluid p-0">

					<div class="mb-3">
						<h1 class="h3 d-inline align-middle">회원 정보</h1>
						<a class="badge bg-dark text-white ms-2" href="join-re.jsp">
      회원 정보 수정
  </a>
  <a class="badge bg-dark text-white ms-2" href="join-Del.jsp">
      회원 탈퇴
  </a>
					</div>
					<div class="row">
						<div class="col-md-4 col-xl-3">
							<div class="card mb-3">
								<div class="card-header">
									<h5 class="card-title mb-0">Profile Details</h5>
								</div>
								<div class="card-body text-center">
									<img src="img/avatars/basic_blue.jpg" alt="SORI JUNG" class="img-fluid rounded-circle mb-2" width="128" height="128" />
									<h5 class="card-title mb-0"><%=session.getAttribute("id")%></h5>
									<br>

									<div>
										<a class="btn btn-primary btn-sm" href="#">Follow</a>
										<a class="btn btn-primary btn-sm" href="#"><span data-feather="bookmark"></span> Bookmark</a>
									</div>
								</div>
								<hr>
								<div class="card-body">
									<h5 class="h6 card-title">About</h5>
									<ul class="list-unstyled mb-0">
										<li class="mb-1"><span data-feather="home" class="feather-sm me-1"></span> Lives in <a href="#">BUSAN, KR</a></li>

										
										<li class="mb-1"><span data-feather="map-pin" class="feather-sm me-1"></span> From <a href="#">Busan</a></li>
									</ul>
								</div>
								<hr class="my-0" />
								<div class="card-body">
									<h5 class="h6 card-title">Elsewhere</h5>
									<ul class="list-unstyled mb-0">
										<li class="mb-1"><a href="#">Naver</a></li>
										<li class="mb-1"><a href="#">Kakao</a></li>
										<li class="mb-1"><a href="#">Google</a></li>
						
									</ul>
								</div>
							</div>
						</div>

<%
  // BoardDAO 객체 생성
  BoardDAO bdao = new BoardDAO();
  // 게시판 DB에 있는 글 개수를 확인
  int cnt = bdao.getBoardCount(); 
  
  
  ///////////////////////////////////////////////////////////////////////////////
  // 페이징 처리
  
  // 한 페이지에 출력될 글 개수
  int pageSize = 3;
  
  // 현 페이지 정보 설정
  String pageNum = request.getParameter("pageNum");
  if(pageNum == null){
	  pageNum = "1";
  }
  
  
  // 첫행번호를 계산
  int currentPage = Integer.parseInt(pageNum);
  int startRow = (currentPage-1)*pageSize+1;
  
  ///////////////////////////////////////////////////////////////////////////////
%>


<!-- 본문시작 --> 

						<div class="col-md-8 col-xl-9">
							<div class="card">
								<div class="card-header">

									<h5 class="card-title mb-0">나의 여행일정(게시판 CRUD)[글 개수 : <%=cnt %>]</h5>
								</div>
								<div class="card-body h-100">
								
							
	<!-- 최근 여행플랜(게시판 main ver) -->
			
								<table class="table table-hover my-0">
									<thead>
										<tr>
											<th>NO.</th>
											<th class="d-none d-xl-table-cell">Where</th>
											<th class="d-none d-xl-table-cell">When</th>
											<th class="d-none d-xl-table-cell">Date</th>									
											<th class="d-none d-md-table-cell">Read</th>
										</tr>
									</thead>
<% if(cnt != 0){ 
    // DB에 있는 게시판의 글정보 모두를 가져오기
    
    //List boardList = bdao.getBoardList();
    List boardList = bdao.getBoardList(startRow,pageSize);
    for(int i=0;i<boardList.size();i++){
    	 BoardDTO bdto = (BoardDTO) boardList.get(i);    	
%>  										
									<tbody>
										<tr>
											<td><%=bdto.getNum() %></td>
											<td class="d-none d-xl-table-cell"><%=bdto.getName() %></td>
											<td class="d-none d-xl-table-cell">
											<%if(bdto.getRe_lev()>0){ //답글일때  %>
	    <img src="level.gif" height="10" width="<%=bdto.getRe_lev()*10%>">
	    <img src="re.gif">
	 <%} %> 
											<a href="content.jsp?num=<%=bdto.getNum()%>&pageNum=<%=pageNum%>"><%=bdto.getCheckin() %></a></td>
											<td class="d-none d-md-table-cell"><%=bdto.getDate() %></td>
											<td class="d-none d-md-table-cell"><%=bdto.getReadcount() %></td>
										</tr>
										
<% 
    }// for
   }else{
%>



									
                                             <tr>
													<td colspan="5">새로운 일정이 없습니다. <br> 새 일정을 추가해 보세요!</td>											
											</tr>
											<%} %>
									</tbody>
								</table>
							</div>
						</div>
						
<!-- 게시판 -->						
	
	

		                           <div class="d-grid">
										<a href="plan.jsp" class="btn btn-primary">일정 추가하기</a>
										</div>
<% if(cnt != 0){ 
	     ////////////////////////////////////////////////////////////
	     // 페이징 처리
	     // 전체 페이지수 계산
	     int pageCount = cnt / pageSize + (cnt%pageSize==0? 0:1);
	     
	     // 한 페이지에 보여줄 페이지블럭
	     int pageBlock = 3;
	     
	     // 한 페이지에 보여줄 페이지 블럭 시작번호 계산
	     int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
	     
	     // 한 페이지에 보여줄 페이지 블럭 끝번호 계산
	     int endPage = startPage + pageBlock-1;
	     if(endPage > pageCount){
	    	 endPage = pageCount;
	     }
	  
	  %>
	    <% if(startPage>pageBlock){ %>
			<a class="btn btn-secondary" href="board.jsp?pageNum=<%=startPage-pageBlock%>">Prev</a>
		<% } %>
		
		<% for(int i=startPage;i<=endPage;i++){ %>
			<a class="btn btn-secondary" href="board.jsp?pageNum=<%=i%>"><%=i %></a>
		<% }%>
		
		<% if(endPage < pageCount){%>
			<a class="btn btn-secondary" href="board.jsp?pageNum=<%=startPage+pageBlock%>">Next</a>
		<% }%>
		
	  <% } %>
																	

					
									</div>
							
							</div>
						</div>
					</div>

				</div>
			</main>
















			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-start">
							<p class="mb-0">
								<a class="text-muted" href="https://adminkit.io/" target="_blank"><strong>
								TRIVIEW</strong></a> &copy;
							</p>
						</div>
						<div class="col-6 text-end">
							<ul class="list-inline">
								<li class="list-inline-item">
									<a class="text-muted" href="https://adminkit.io/" target="_blank">Support</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="https://adminkit.io/" target="_blank">Help Center</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="https://adminkit.io/" target="_blank">Privacy</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="https://adminkit.io/" target="_blank">Terms</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

	<script src="js/app.js"></script>

</body>

</html>