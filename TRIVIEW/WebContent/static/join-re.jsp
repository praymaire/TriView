

<%@page import="com.itwillbs.join.JoinDTO"%>
<%@page import="com.itwillbs.join.JoinDAO"%>
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

	<link rel="canonical" href="https://demo-basic.adminkit.io/upgrade-to-pro.html" />

	<title>회원 정보 수정 | TRIVIEW</title>

	<link href="css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body>
	<main class="d-flex w-100">
		<div class="container d-flex flex-column">
			<div class="row vh-100">
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">

						<div class="text-center mt-4">
							<h1 class="h2">회원 정보 수정</h1>
							<p class="lead">
								회원의 계정 정보를 변경합니다.
							</p>
						</div>

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
<%
   // 전달되는 정보저장(파라미터)
   String id =(String)session.getAttribute("id");
    JoinDAO manager= JoinDAO.getInstance();
    JoinDTO bdto = manager.getMember(id);

%>

                          <form action="join-rePro.jsp" method="post">
                                     <div class="mb-3">
											<label class="form-label">Name</label>
											<input class="form-control form-control-lg" type="text" name="name" value="<%=bdto.getName()%>" placeholder="Enter your name" />
										</div>
										<div class="mb-3">
											<label class="form-label"> USER ID</label>
											<input class="form-control form-control-lg" type="text" name="name" value="<%=bdto.getId()%>" readonly />
										</div>
										
										<div class="mb-3">
											<label class="form-label">Password</label>
											<input class="form-control form-control-lg" type="password" name="pass" value="<%=bdto.getPass()%>" placeholder="Enter password" />
										</div>
										
										<div class="mb-3">
											<label class="form-label">Email</label>
											<input class="form-control form-control-lg" type="email" name="email" value="<%=bdto.getEmail()%>" placeholder="Enter your email" />
										</div>
										
										<div class="text-center mt-3">
											<button type="submit" class="btn btn-lg btn-primary">회원정보 수정</button>
										</div>
										
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</main>

	<script src="js/app.js"></script>

</body>

</html>