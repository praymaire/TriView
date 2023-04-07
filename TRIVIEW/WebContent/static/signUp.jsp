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

	<link rel="canonical" href="https://demo-basic.adminkit.io/pages-sign-up.html" />

	<title>Sign Up | TRIVIEW</title>

	<link href="css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
	
	
	
<script type="text/javascript">
/* 하나라도 걸리면 경고창과 포커스를 처리한후 false를  반환한다.  */
    function checkIt(){    
        var user=document.user;

        if(!user.name.value){
            alert("사용자 이름을 입력하세요");
            user.name.focus();
            return false;
        }
        
        
        if(!user.id.value){
            alert("ID를 입력하세요");
            user.id.focus();
            return false;
        }
        if(!user.pass.value){
            alert("비밀번호를 입력하세요");
            user.pass.focus();
            return false;
        }
        if(!user.email.value){
            alert("이메일을 입력하세요");
            user.email.focus();
            return false;
        }
        return true;
    }
    //아이디 중복 여부를 판단
    function openConfirmid(user){
        //아이디를 입력했는지 검사
        if(user.id.value==""){
            alert("아이디를입력하세요");
            user.id.focus();
            return;
        }
        //url과 사용자 입력 id를 조합합니다.
        url="confirmId.jsp?id="+user.id.value;
        
        //새로운 윈도우를 엽니다.
        open(url,"confirm","toolbar=no,location=no,status=no,menubar=no,scrllbar=no,resizable=no,width=300,height=200");
    }
</script>	
</head>

<body>
	<main class="d-flex w-100">
		<div class="container d-flex flex-column">
			<div class="row vh-100">
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">

						<div class="text-center mt-4">
							<h1 class="h2">회원 가입</h1>
							<p class="lead">
								하나의 계정으로 모든 TRIVIEW 서비스를 이용하세요.
							</p>
						</div>

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
								
									<form action="signUpPro.jsp" method="post" name="user" onSubmit="return checkIt()">
									
									
										<div class="mb-3">
											<label class="form-label">Name</label>
											<input class="form-control form-control-lg" type="text" name="name" placeholder="Enter your name" />
										</div>
										<div class="mb-3">
											<label class="form-label"> USER ID</label>
											<input class="form-control form-control-lg" type="text" name="id" placeholder="Enter USER ID"  />
											<input type="button" value="중복확인" class="btn btn-lg btn-primary" name="confirm_id" onClick="openConfirmid(this.form)">
										</div>
										
										<div class="mb-3">
											<label class="form-label">Password</label>
											<input class="form-control form-control-lg" type="password" name="pass" placeholder="Enter password" />
										</div>
										
										<div class="mb-3">
											<label class="form-label">Email</label>
											<input class="form-control form-control-lg" type="email" name="email" placeholder="Enter your email" />
										</div>
										
										<div class="text-center mt-3">
											<input type="submit" value="회원가입" class="btn btn-lg btn-primary">
											<input type="reset" value="다시 입력" class="btn btn-lg btn-primary">
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