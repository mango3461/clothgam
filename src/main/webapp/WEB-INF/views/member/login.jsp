<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap core JS-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>옷감</title>
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
<!-- Third party plugin CSS-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/styles.css" rel="stylesheet" />
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo:wght@700&display=swap');

body > div > div > form
{
	
	background-color: #FFE4E1;
	padding-top: 10px;
	padding-bottom: 10px;
	border: medium;
	border-radius: 10px;
	border-style: outset;
	
}
body > div > div > form > div.row > div > div
{
	background-color: #FFE4E1;
	padding-top: 10px;
	padding-bottom: 10px;
	border: medium;
	border-radius: 10px;
	border-style: outset;
	font-family: 'Black Han Sans', sans-serif;
	margin-left: 25px;
	margin-right: 25px;
	border-radius: 20px;
}
</style>
</head>
<body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
            	<a class="navbar-brand js-scroll-trigger dropdown" style="font-family: 'Song Myung', serif;" href="/">옷감</a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/mix">옷 조합 만들기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/vote">내 옷 취향 찾기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/rank">랭킹보기</a></li>
                        <c:if test="${empty login }">
                        	<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/login">로그인</a></li>
                        </c:if>
                        <c:if test="${not empty login }">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/board">회원게시판</a></li>
	                        <li class="nav-item dropdown">
	                        <a class="nav-link js-scroll-trigger dropdown-toggle" data-toggle="dropdown" href="#">내 정보</a>
	                            <div class="dropdown-menu">
	                                <a class="dropdown-item" href="/closet/${mno}">내 옷장</a>
	                          </div>
	                        </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>
	<div class="main">
	<div class="container">
	<form action="/member/loginPost" method="post">
		<div class="form-group has-feedback">
			<input type="text" name="mid" class="form-control" placeholder="ID" />
			<span class="glyphion glyphion-envelope form-control-feedback"></span>
		</div>
		<div class="for-group has-feedback">
			<input type="password" name="mpw" class="form-control" placeholder="PW" />
			<span class="glyphicon glyphicon-lock form-control-feedback"></span>
		</div>
		<div class="row">
			<div class="col-xs-8">
				<div class="checkbox icheck">
					<label>
						<input type="checkbox" name="useCookie">Remember Me
					</label>
				</div>
			</div><!-- .col -->
		</div><!-- .row -->
		<div class="col-xs=4">
			<button type="submit" class="btn btn-primary btn-block btn-flat">Sign in</button>
		</div><!-- .col -->

	</form>
	
	<form action="/member/joinmember" method="get">
	<br><br>
		<div>
			<button type="submit" class="btn btn-primary btn-block btn-flat">JOIN</button>
		</div>
	</form>
	</div>
	</div>
</body>
</html>