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
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="shortcut icon" href="img/icons/icon-48x48.png" />

	<link rel="canonical" href="https://demo-basic.adminkit.io/" />

	<title>TRIVIEW</title>

	<link href="css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">


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


<!-- 사이드바 로그인 후 설정 -->










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








<!-- 본문 설정 -->



			<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3"><strong>메인</strong> 페이지 </h1>
					<div class="col-xl-6 col-xxl-7">
							<div class="card flex-fill w-100">
								<div class="card-header">	
								</div>
								
								
								<div class="card-body py-3">
									<div class="chart chart-sm">
										<iframe width="100%" height="245" src="https://forecast.io/embed/#lat=37.5662&lon=126.9785&name=서울&color=#F6A8A6&font=arial&units=si" frameborder="0"></iframe>
									</div>
								</div>
								
							</div>
						</div>
					
					
<!-- 텀 -->					
					
					<div class="row">
						<div class="col-xl-6 col-xxl-5 d-flex">
							<div class="w-100">
								<div class="row">
			
								</div>
							</div>
						</div>
			    </div>						
										
										



	<!-- Home -->

						<div class="col-xl-6 col-xxl-7">
							<div class="card flex-fill w-100">


	<div class="home">
		
		<!-- Home Slider -->

		<div class="home_slider_container">
			
			<div class="owl-carousel owl-theme home_slider">

				<!-- Slider Item -->
				<div class="owl-item home_slider_item">
					<!-- Image by https://unsplash.com/@anikindimitry -->
					<div class="home_slider_background" style="background-image:url(images/home_slider.jpg)"></div>

					<div class="home_slider_content text-center">
						<div class="home_slider_content_inner" data-animation-in="flipInX" data-animation-out="animate-out fadeOut">
							<h1>discover</h1>
							<h1>Seoul</h1>
							<div class="button home_slider_button"><div class="button_bcg"></div><a href="https://www.google.co.kr/travel/things-to-do?dest_src=ut&tcfs=EhsKCC9tLzBoc3FmEg_shJzsmrjtirnrs4Tsi5xSAmAB&dest_mid=%2Fm%2F0hsqf&ved=0CAUQyJABahcKEwiY-6qPnqf1AhUAAAAAHQAAAAAQeQ&ictx=3&hl=ko-KR&gl=kr&g2lb=2502548%2C2503781%2C4605861%2C4641139%2C4624411%2C2503771%2C4401769%2C4317915%2C4270442%2C4689837%2C4685401%2C4649665%2C4640247%2C4306835%2C4596364%2C4258168%2C4679296%2C4371334%2C4419364%2C4597339%2C4284970%2C4270859%2C4291517&dest_state_type=main#ttdm=37.531762_127.037604_12&ttdmf=%252Fm%252F02qpf1">explore now<span></span><span></span><span></span></a></div>
						</div>
					</div>
				</div>

				<!-- Slider Item -->
				<div class="owl-item home_slider_item">
					<div class="home_slider_background" style="background-image:url(images/home_slider.jpg)"></div>

					<div class="home_slider_content text-center">
						<div class="home_slider_content_inner" data-animation-in="flipInX" data-animation-out="animate-out fadeOut">
							<h1>discover</h1>
							<h1>Busan</h1>
							<div class="button home_slider_button"><div class="button_bcg"></div><a href="https://www.google.co.kr/travel/things-to-do?g2lb=4624411%2C2503771%2C4401769%2C2503781%2C2502548%2C4641139%2C4605861%2C4371334%2C4258168%2C4679296%2C4596364%2C4597339%2C4419364%2C4270442%2C4689837%2C4317915%2C4649665%2C4640247%2C4306835%2C4685401%2C4284970%2C4270859%2C4291517&hl=ko-KR&gl=kr&ssta=1&dest_mid=%2Fm%2F0hv7l&dest_state_type=main&dest_src=ts&q=%EC%A0%84%EB%9D%BC%EB%82%A8%EB%8F%84%20%EC%B6%94%EC%B2%9C%EC%97%AC%ED%96%89%EC%A7%80&sa=X&ved=2ahUKEwj_pbPDn6f1AhWzwTgGHbFCAYMQuL0BegQICRAy&tcfs=EhsKCC9tLzBodjdsEg_rtoDsgrDqtJHsl63si5w#ttdm=35.140542_129.116952_11">explore now<span></span><span></span><span></span></a></div>
						</div>
					</div>
				</div>

				<!-- Slider Item -->
				<div class="owl-item home_slider_item">
					<div class="home_slider_background" style="background-image:url(images/home_slider.jpg)"></div>

					<div class="home_slider_content text-center">
						<div class="home_slider_content_inner" data-animation-in="flipInX" data-animation-out="animate-out fadeOut">
							<h1>discover</h1>
							<h1>Gyeonbuk</h1>
							<div class="button home_slider_button"><div class="button_bcg"></div><a href="https://www.google.co.kr/travel/things-to-do/see-all?dest_src=ut&tcfs=EjMKCS9tLzAxdHExcxIM6rK97IOB67aB64-EGhgKCjIwMjItMDEtMjYSCjIwMjItMDEtMzBSAmAB&dest_mid=%2Fm%2F01tq1s&ved=0CAUQyJABahcKEwiY-6qPnqf1AhUAAAAAHQAAAAAQeQ&ictx=3&hl=ko-KR&gl=kr&g2lb=2502548%2C2503781%2C4605861%2C4641139%2C4624411%2C2503771%2C4401769%2C4317915%2C4270442%2C4689837%2C4685401%2C4649665%2C4640247%2C4306835%2C4596364%2C4258168%2C4679296%2C4371334%2C4419364%2C4597339%2C4284970%2C4270859%2C4291517&dest_state_type=sattd#ttdm=35.607085_129.380348_10&ttdmf=%252Fg%252F1q66rsykf">explore now<span></span><span></span><span></span></a></div>
						</div>
					</div>
				</div>

			</div>
			
			<!-- Home Slider Nav - Prev -->
			<div class="home_slider_nav home_slider_prev">
				<svg version="1.1" id="Layer_2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
					<defs>
						<linearGradient id='home_grad_prev'>
							<stop offset='0%' stop-color='#fa9e1b'/>
							<stop offset='100%' stop-color='#8d4fff'/>
						</linearGradient>
					</defs>
					<path class="nav_path" fill="#F3F6F9" d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
					M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
					C22.545,2,26,5.541,26,9.909V23.091z"/>
					<polygon class="nav_arrow" fill="#F3F6F9" points="15.044,22.222 16.377,20.888 12.374,16.885 16.377,12.882 15.044,11.55 9.708,16.885 11.04,18.219 
					11.042,18.219 "/>
				</svg>
			</div>
			
			<!-- Home Slider Nav - Next -->
			<div class="home_slider_nav home_slider_next">
				<svg version="1.1" id="Layer_3" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
				width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
					<defs>
						<linearGradient id='home_grad_next'>
							<stop offset='0%' stop-color='#fa9e1b'/>
							<stop offset='100%' stop-color='#8d4fff'/>
						</linearGradient>
					</defs>
				<path class="nav_path" fill="#F3F6F9" d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
				M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
				C22.545,2,26,5.541,26,9.909V23.091z"/>
				<polygon class="nav_arrow" fill="#F3F6F9" points="13.044,11.551 11.71,12.885 15.714,16.888 11.71,20.891 13.044,22.224 18.379,16.888 17.048,15.554 
				17.046,15.554 "/>
				</svg>
			</div>

			<!-- Home Slider Dots -->

			<div class="home_slider_dots">
				<ul id="home_slider_custom_dots" class="home_slider_custom_dots">
					<li class="home_slider_custom_dot active"><div></div>01.</li>
					<li class="home_slider_custom_dot"><div></div>02.</li>
					<li class="home_slider_custom_dot"><div></div>03.</li>
				</ul>
			</div>
			
		</div>

	</div>
								
						
						</div>
					</div>


	<!-- Home -->


<!-- 지도 -->
						<div class="col-12 col-md-12 col-xxl-6 d-flex order-3 order-xxl-2">
							<div class="card flex-fill w-100">
								<div class="card-header">

									<h5 class="card-title mb-0">Real-Time</h5>
								</div>
								<div class="card-body px-4">
									<div id="world_map" style="height:350px;"></div>
								</div>
							</div>
						</div>
					
					
<!-- 날씨 / 캘린더 -->					
						<div class="col-12 col-md-6 col-xxl-3 d-flex order-1 order-xxl-1">
							<div class="card flex-fill">
								<div class="card-header">

									<h5 class="card-title mb-0">Calendar</h5>
								</div>
								<div class="card-body d-flex">
									<div class="align-self-center w-100">
										<div class="chart">
											<div id="datetimepicker-dashboard"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>




<!-- 최근 여행플랜(게시판 main ver) -->
					<div class="row">
						<div class="col-12 col-lg-8 col-xxl-9 d-flex">
							<div class="card flex-fill">
								<div class="card-header">

									<h5 class="card-title mb-0">최근 저장한 일정</h5>
								</div>
								<table class="table table-hover my-0">
									<thead>
										<tr>
											<th>NO.</th>
											<th class="d-none d-xl-table-cell">Start Date</th>
											<th class="d-none d-xl-table-cell">End Date</th>
											<th>Status</th>
											<th class="d-none d-md-table-cell">Assignee</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Project Apollo</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-success">Done</span></td>
											<td class="d-none d-md-table-cell">Vanessa Tucker</td>
										</tr>
										<tr>
											<td>Project Fireball</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-danger">Cancelled</span></td>
											<td class="d-none d-md-table-cell">William Harris</td>
										</tr>
										<tr>
											<td>Project Hades</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-success">Done</span></td>
											<td class="d-none d-md-table-cell">Sharon Lessman</td>
										</tr>
										<tr>
											<td>Project Nitro</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-warning">In progress</span></td>
											<td class="d-none d-md-table-cell">Vanessa Tucker</td>
										</tr>
										<tr>
											<td>Project Phoenix</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-success">Done</span></td>
											<td class="d-none d-md-table-cell">William Harris</td>
										</tr>
										<tr>
											<td>Project X</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-success">Done</span></td>
											<td class="d-none d-md-table-cell">Sharon Lessman</td>
										</tr>
										<tr>
											<td>Project Romeo</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-success">Done</span></td>
											<td class="d-none d-md-table-cell">Christina Mason</td>
										</tr>
										<tr>
											<td>Project Wombat</td>
											<td class="d-none d-xl-table-cell">01/01/2021</td>
											<td class="d-none d-xl-table-cell">31/06/2021</td>
											<td><span class="badge bg-warning">In progress</span></td>
											<td class="d-none d-md-table-cell">William Harris</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
<!-- 게시판 -->						
	
					
						
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

	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var ctx = document.getElementById("chartjs-dashboard-line").getContext("2d");
			var gradient = ctx.createLinearGradient(0, 0, 0, 225);
			gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
			gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
			// Line chart
			new Chart(document.getElementById("chartjs-dashboard-line"), {
				type: "line",
				data: {
					labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
					datasets: [{
						label: "Sales ($)",
						fill: true,
						backgroundColor: gradient,
						borderColor: window.theme.primary,
						data: [
							2115,
							1562,
							1584,
							1892,
							1587,
							1923,
							2566,
							2448,
							2805,
							3438,
							2917,
							3327
						]
					}]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					tooltips: {
						intersect: false
					},
					hover: {
						intersect: true
					},
					plugins: {
						filler: {
							propagate: false
						}
					},
					scales: {
						xAxes: [{
							reverse: true,
							gridLines: {
								color: "rgba(0,0,0,0.0)"
							}
						}],
						yAxes: [{
							ticks: {
								stepSize: 1000
							},
							display: true,
							borderDash: [3, 3],
							gridLines: {
								color: "rgba(0,0,0,0.0)"
							}
						}]
					}
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Pie chart
			new Chart(document.getElementById("chartjs-dashboard-pie"), {
				type: "pie",
				data: {
					labels: ["Chrome", "Firefox", "IE"],
					datasets: [{
						data: [4306, 3801, 1689],
						backgroundColor: [
							window.theme.primary,
							window.theme.warning,
							window.theme.danger
						],
						borderWidth: 5
					}]
				},
				options: {
					responsive: !window.MSInputMethodContext,
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					cutoutPercentage: 75
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Bar chart
			new Chart(document.getElementById("chartjs-dashboard-bar"), {
				type: "bar",
				data: {
					labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
					datasets: [{
						label: "This year",
						backgroundColor: window.theme.primary,
						borderColor: window.theme.primary,
						hoverBackgroundColor: window.theme.primary,
						hoverBorderColor: window.theme.primary,
						data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79],
						barPercentage: .75,
						categoryPercentage: .5
					}]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					scales: {
						yAxes: [{
							gridLines: {
								display: false
							},
							stacked: false,
							ticks: {
								stepSize: 20
							}
						}],
						xAxes: [{
							stacked: false,
							gridLines: {
								color: "transparent"
							}
						}]
					}
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var markers = [{
					coords: [31.230391, 121.473701],
					name: "Shanghai"
				},
				{
					coords: [28.704060, 77.102493],
					name: "Delhi"
				},
				{
					coords: [6.524379, 3.379206],
					name: "Lagos"
				},
				{
					coords: [35.689487, 139.691711],
					name: "Tokyo"
				},
				{
					coords: [23.129110, 113.264381],
					name: "Guangzhou"
				},
				{
					coords: [40.7127837, -74.0059413],
					name: "New York"
				},
				{
					coords: [34.052235, -118.243683],
					name: "Los Angeles"
				},
				{
					coords: [41.878113, -87.629799],
					name: "Chicago"
				},
				{
					coords: [51.507351, -0.127758],
					name: "London"
				},
				{
					coords: [40.416775, -3.703790],
					name: "Madrid "
				}
			];
			var map = new jsVectorMap({
				map: "world",
				selector: "#world_map",
				zoomButtons: true,
				markers: markers,
				markerStyle: {
					initial: {
						r: 9,
						strokeWidth: 7,
						stokeOpacity: .4,
						fill: window.theme.primary
					},
					hover: {
						fill: window.theme.primary,
						stroke: window.theme.primary
					}
				},
				zoomOnScroll: false
			});
			window.addEventListener("resize", () => {
				map.updateSize();
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var date = new Date(Date.now() - 5 * 24 * 60 * 60 * 1000);
			var defaultDate = date.getUTCFullYear() + "-" + (date.getUTCMonth() + 1) + "-" + date.getUTCDate();
			document.getElementById("datetimepicker-dashboard").flatpickr({
				inline: true,
				prevArrow: "<span title=\"Previous month\">&laquo;</span>",
				nextArrow: "<span title=\"Next month\">&raquo;</span>",
				defaultDate: defaultDate
			});
		});
	</script>





<script>

$(document).ready(function () {
  setTimeout(
    function () {
      window.location.reload(1);
    },
    30000
  );
});
</script>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/custom.js"></script>
</body>
<script type="text/javascript">
 window.history.forward();
 function noBack(){window.history.forward();}
</script>
</html>