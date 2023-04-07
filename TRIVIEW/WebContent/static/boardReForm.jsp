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

	<link rel="canonical" href="https://demo-basic.adminkit.io/pages-blank.html" />

	<title>나의 일정 수정 | TRIVIEW</title>

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

					<li class="sidebar-item active">
						<a class="sidebar-link" href="index.jsp">
              <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">메인 페이지</span>
            </a>
					</li>

					<li class="sidebar-item">
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




<!-- 옆 -> 윗칸 -->






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



<!-- 윗칸 -> 본문 -->





			<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3">나의 일정 수정</h1>

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									
<%
   // 전달되는 정보저장(파라미터)
   int num = Integer.parseInt(request.getParameter("num"));
   String pageNum = request.getParameter("pageNum");
   // DB안에 있는데이터 저장
   BoardDAO bdao = new BoardDAO();
   BoardDTO bdto = bdao.getBoard(num);

%>		
		
									<!-- 게시판 -->

			
				<!-- 드롭다운 -->
<form action ="boardRe.jsp?pageNum=<%=pageNum %>" method="post">
<input type="hidden" name="num" value="<%=bdto.getNum()%>" >
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0"> 어느지역으로 가시나요?</h5>
								</div>
						
	<div class="card-body">
	<input class="form-control form-control-lg" type="text" name="name" value="<%=bdto.getName()%>" readonly>

		<select class="form-select mb-3" name="name" value="<%=bdto.getName()%>">
          <option value="" selected>지역을 선택해 주세요</option>
          <option value="서울">서울</option>
          <option value="부산">부산</option>
          <option value="경남">경남</option>
          <option value="경상">경상</option>
          <option value="전남">전남</option>
          <option value="전북">전북</option>
          <option value="충남">충남</option>
          <option value="충북">충북</option>
          <option value="강원">강원</option>
        </select>
      		
<!-- 드롭다운! -->
			
                <label for="CheckIn">체크인 날짜</label>
               <input name="checkin" type="date" class="form-control" value="<%=bdto.getCheckin() %>" >
                                                                    
               <label for="CheckOut">체크아웃 날짜</label>
               <input name="checkout" type="date" class="form-control" value="<%=bdto.getCheckout() %>">
    
                                   
 <hr>                      
<!-- 일정표 -->	
			
				
								<div class="card-header">
									<h5 class="card-title mb-0">일정을 입력해 주세요.</h5>
								</div>	
							
							
							<div class="card-body">
									
									<h5 class="card-title mb-0">AM 10:00</h5>
									<input type="text" name="am10" class="form-control" value="<%=bdto.getAm10()%>">
							</div>
							
							<div class="card-body">
									
									<h5 class="card-title mb-0">AM 11:00</h5>
									<input type="text" name="am11" class="form-control" value="<%=bdto.getAm11()%>">
							</div>
							
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 12:00</h5>
									<input type="text" name="pm12" class="form-control" value="<%=bdto.getPm12()%>">
							</div>
							
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 13:00</h5>
									<input type="text" name="pm13" class="form-control" value="<%=bdto.getPm13()%>">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 14:00</h5>
									<input type="text" name="pm14" class="form-control" value="<%=bdto.getPm14()%>">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 15:00</h5>
									<input type="text" name="pm15" class="form-control" value="<%=bdto.getPm15()%>">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 16:00</h5>
									<input type="text" name="pm16" class="form-control" value="<%=bdto.getPm16()%>">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 17:00</h5>
									<input type="text" name="pm17" class="form-control" value="<%=bdto.getPm17()%>">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 18:00</h5>
									<input type="text" name="pm18" class="form-control" value="<%=bdto.getPm18()%>">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 19:00</h5>
									<input type="text" name="pm19" class="form-control" value="<%=bdto.getPm19()%>">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 20:00</h5>
									<input type="text" name="pm20" class="form-control" value="<%=bdto.getPm20()%>">
							</div>
							<div class="card-body">

							

																		
<!-- 일정표 끝 -->



<!-- 메모 -->
							<hr><div class="card-header">
									<h5 class="card-title mb-0">메모</h5>
								</div>
						
								<div class="card-body">
									<textarea class="form-control" name ="memo" rows="2"><%=bdto.getMemo() %></textarea>
								</div>
							</div>

	</div>
	
<!-- 메모끝 -->	
	

 <!-- 어디로 보낼지 - 처리페이지 -->                          
                                        <input type="submit" class="btn btn-primary tm-btn tm-btn-search text-uppercase" id="boardSubmit" value="수정하기">
                                        
 <!-- 드롭다운 칸 끝 -->	
 </form>		
        </div>		
           </div>
<!-- 최종단 --></div>
               </div>
				</div>
			</main>





<!-- 게시판  -->
								

			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-start">
							<p class="mb-0">
								<a class="text-muted" href="https://adminkit.io/" target="_blank"><strong>AdminKit</strong></a> &copy;
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