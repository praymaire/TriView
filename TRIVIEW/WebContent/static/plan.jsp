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

	<title>새로운 일정추가 | TRIVIEW</title>

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

					<li class="sidebar-item">
						<a class="sidebar-link" href="board.jsp">
              <i class="align-middle" data-feather="user"></i> <span class="align-middle">회원 정보</span>
            </a>
					</li>

					

					<li class="sidebar-item active">
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

					<h1 class="h3 mb-3">새로운 일정 추가하기(게시판 CRUD)</h1>

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									
		
		
									<!-- 게시판 -->

			
				<!-- 드롭다운 -->
<form action ="boardPro.jsp" method="post">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0"> 어느지역으로 가시나요?</h5>
								</div>

						
	<div class="card-body">
		<select class="form-select mb-3" name="name">
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
               <input name="checkin" type="date" class="form-control"  >
                                                                    
               <label for="CheckOut">체크아웃 날짜</label>
               <input name="checkout" type="date" class="form-control" >
    
    
                                   
      <hr>               
<!-- 일정표 -->	
			
				
							<div class="card-body">	
							<h5 class="card-title mb-0">일정을 입력해 주세요.</h5>
							</div>	
							
							
							<div class="card-body">
									
									<h5 class="card-title mb-0">AM 10:00</h5>
									<input type="text" name="am10" class="form-control" placeholder="일정을 입력하세요">
							</div>
							
							<div class="card-body">
									
									<h5 class="card-title mb-0">AM 11:00</h5>
									<input type="text" name="am11" class="form-control" placeholder="일정을 입력하세요">
							</div>
							
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 12:00</h5>
									<input type="text" name="pm12" class="form-control" placeholder="일정을 입력하세요">
							</div>
							
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 13:00</h5>
									<input type="text" name="pm13" class="form-control" placeholder="일정을 입력하세요">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 14:00</h5>
									<input type="text" name="pm14" class="form-control" placeholder="일정을 입력하세요">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 15:00</h5>
									<input type="text" name="pm15" class="form-control" placeholder="일정을 입력하세요">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 16:00</h5>
									<input type="text" name="pm16" class="form-control" placeholder="일정을 입력하세요">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 17:00</h5>
									<input type="text" name="pm17" class="form-control" placeholder="일정을 입력하세요">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 18:00</h5>
									<input type="text" name="pm18" class="form-control" placeholder="일정을 입력하세요">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 19:00</h5>
									<input type="text" name="pm19" class="form-control" placeholder="일정을 입력하세요">
							</div>
							<div class="card-body">
									
									<h5 class="card-title mb-0">PM 20:00</h5>
									<input type="text" name="pm20" class="form-control" placeholder="일정을 입력하세요">
							</div>
							

							

																		
<!-- 일정표 끝 -->



<!-- 메모 -->
							<hr><div class="card-header">
									<h5 class="card-title mb-0">메모</h5>
								</div>
						
								<div class="card-body">
									<textarea class="form-control" name="memo" rows="2" placeholder="세부사항을 메모하세요"></textarea>
								</div>
						

	</div>
	
<!-- 메모끝 -->	
	
	
	
<!-- 체크박스 -->
<!-- 				<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">체크 박스</h5>
								</div>
								<div class="card-body">
									<div>
										<label class="form-check">
            <input class="form-check-input" type="checkbox" value="">
            <span class="form-check-label">
              Option one is this and that&mdash;be sure to include why it's great
            </span>
          </label>
										<label class="form-check">
            <input class="form-check-input" type="checkbox" value="" disabled>
            <span class="form-check-label">
              Option two is disabled
            </span>
          </label>
									</div>
									<div>
										<label class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" value="option1">
            <span class="form-check-label">
              1
            </span>
          </label>
										<label class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" value="option2">
            <span class="form-check-label">
              2
            </span>
          </label>
										<label class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" value="option3" disabled>
            <span class="form-check-label">
              3
            </span>
          </label>
									</div>
								</div>
							</div>

						</div>
 -->
			
<!-- 체크박스 종단-->
 <!-- 어디로 보낼지 - 처리페이지 -->                          
                        <input type="submit" value = "저장하기" class="btn btn-primary tm-btn tm-btn-search text-uppercase" >                
 <!-- 드롭다운 칸 끝 -->	
 </div>
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
								<a class="text-muted" href="https://adminkit.io/" target="_blank"><strong>TRIVIEW</strong></a> &copy;
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