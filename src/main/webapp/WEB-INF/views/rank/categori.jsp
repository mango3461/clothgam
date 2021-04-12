<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <!-- Bootstrap core JS-->
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
<style>
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo:wght@700&family=Noto+Sans+KR:wght@500&family=Song+Myung&display=swap');

#thumbnails
{
 size: 80%;
}
#thumbnails > div > div
/* #thumbnails > div > div > div:nth-child > a > div */
{
    font-family: 'Black Han Sans', sans-serif;
    font-weight: lighter;
    box-sizing: content-box;
   text-align: center;
   margin: 20px 20px 20px 20px;
   padding: 20px 20px 20px 20px;
}
#thumbnails > div > div > div:nth-child(1) > a
{
 	background-color: #D3D3D3;
}
#thumbnails > div > div > div:nth-child(2) > a
{
 	background-color: #ADD8E6;
}
#thumbnails > div > div > div:nth-child(3) > a
{
	background-color: 	#B0C4DE;
}
#thumbnails > div > div > div:nth-child(4) > a
{
	background-color: #E6E6FA
}
#thumbnails > div > div > div:nth-child(5) > a
{
	background-color: #EEE8AA
}
#thumbnails > div > div > div:nth-child(6) > a
{
	background-color: 	#F5F5DC
}
	
</style>
</head>

<body id="page-top">
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
            <div id="thumbnails">
                <div class="container-fluid p-2">
                    <div class="row no-gutters">
                        <div class="col-lg-4 col-sm-6 p-2">
                            <a class="img-thumbnail" href="/rank/list">
                                <img class="img-fluid" src="/resources/assets/img/portfolio/thumbnails/1.jpg" alt="" />
                                <div class="text-center"><img src="/resources/assets/img/portfolio/thumbnails/icon-1.png">전체 좋아요 순위</div>
                            </a>
                        </div>
                        <div class="col-lg-4 col-sm-6 p-2">
                            <a class="img-thumbnail" href="/rank/youngList">
                                <img class="img-fluid" src="/resources/assets/img/portfolio/thumbnails/2.jpg" alt="" />
                                <div class="text-center">20대의 좋아요 순위</div>
                            </a>
                        </div>
                        <div class="col-lg-4 col-sm-6 p-2">
                            <a class="img-thumbnail" href="/rank/secondList">
                                <img class="img-fluid" src="/resources/assets/img/portfolio/thumbnails/3.jpg" alt="" />
                                <div class="text-center">20대가 투표한 좋아요 순위</div>
                            </a>
                        </div>
                        <div class="col-lg-4 col-sm-6 p-2">
                            <a class="img-thumbnail" href="/rank/thirdList">
                                <img class="img-fluid" src="/resources/assets/img/portfolio/thumbnails/4.jpg" alt="" />
                                <div class="text-center">30대가 투표한 좋아요 순위</div>
                            </a>
                        </div>
                        <div class="col-lg-4 col-sm-6 p-2">
                            <a class="img-thumbnail" href="/rank/youngMList">
                                <img class="img-fluid" src="/resources/assets/img/portfolio/thumbnails/5.jpg" alt="" />
                                <div class="text-center">20대 남성의 좋아요 순위</div>
                            </a>
                        </div>
                        <div class="col-lg-4 col-sm-6 p-2">
                            <a class="img-thumbnail" href="/rank/youngGList">
                                <img class="img-fluid" src="/resources/assets/img/portfolio/thumbnails/6.jpg" alt="" />
                                <div class="text-center">20대 여성의 좋아요 순위</div>
                            </a>
                        </div>

                    </div>
                </div>
            </div>

        </div>

</body>
</html>