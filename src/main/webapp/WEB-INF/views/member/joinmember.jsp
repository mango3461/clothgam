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
	body > div > form
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
	body > div > form > div > h1
	{
	font-family: 'Black Han Sans', sans-serif;
	}
	body > div > form > div > div.form-group.has-feedback > span
	{
	margin-top: 20px;
	}
	#idCheckBtn
	{
	margin-top: 20px;
	border-radius: 10px;
	background-color: #FFB6C1;
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
<form action="joinmember" method="post">
	<div class="container">
		<h1>회원가입</h1>
		<br>
		<div class="form-group has-feedback">
			<input type="text" name="mid" class="form-control" placeholder="ID" />
			<button type="button" id="idCheckBtn">아이디 중복체크</button>
		</div>
		<br><br>
		<div class="for-group has-feedback">
			<input type="password" name="mpw" class="form-control" placeholder="PW" />
			<span class="glyphicon glyphicon-lock form-control-feedback"></span>
		</div>
		<br><br>
		<input type="radio" name="mgen" value="true">남자
		<input type="radio" name="mgen" value="false">여자
		<br><br>
		<input type="radio" name="mage" value="10">10대
		<input type="radio" name="mage" value="20">20대
		<input type="radio" name="mage" value="30">30대
		<input type="radio" name="mage" value="40">40대
		<input type="radio" name="mage" value="50">50대
		<br><br>
		<div>
			<button type="submit" class="btn btn-primary btn-block btn-flat">가입하기</button>
		</div>
	</div>
</form>
	</div>
<script type="text/javascript">
	$(document).ready(function() {
		$(#"idCheckBtn").on("click", function(){
			$.ajax({
				type : 'post',
				url : '/member/check/' + midValue,
				headers: {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',				
				success : function(result) {
						if(result.mid === midValue) {
							str += "아이디 체크 완료";
							$("resultComment").html(str);
						}
						console.log(result);
					},
					error : function(result){
						console.log("에러발생");
					}
				})
		})
	})

</script>
</body>
</html>