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
<style>
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo:wght@700&family=Noto+Sans+KR:wght@500&family=Song+Myung&display=swap');
.container
{
	background-color: pink;
	border-style:outset;
	border-radius: 5px;
	position: relative;
}

.navbar-brand
{
	
	font-family: 'Nanum Myeongjo', serif;
	text-align: left;
	font-size: 25px;
	font-weight: bolder;
}
.box{
	width: 250px; height: 100px;
	margin: 20px; padding: 20px;
	float: center;
	position: relative;
}

.nav-link
{
 	font-style: normal;
 	font-size: 70px;
 	font-weight: bold;
}

.main
{
	margin: 0 auto;
	
}
#footer
{
	position: absolute;
	margin-top: 20px;
	height: 50px;
	bottom: 0;
	
}
.upImg
{
	overflow: scroll;
	box-sizing: content-box;
	width: 400px;
	height: 800px;
	max-height: 300px;
}
.downImg
{
	overflow: scroll;
	box-sizing: content-box;
	width: 400;
	height: 800;
	max-height: 300px;
	
}
.pickUp
{
	border: 3px solid pink;
	border-radius: 15px;
	position: absolute;
	
}
.pickDown
{
	border: 3px solid pink;
	border-radius: 15px;
	position: absolute;
}
#upImg{
	width: 25%;
	padding: 30px;
	margin-right: 20px;
	margin-bottom: 20px;
	float: left;
	border: 5px outset pink;
	overflow: scroll;
	border-radius: 15px;
	margin-left: auto; 
	margin-right: auto;
	display:block; 
    margin:auto;
    text-align: center;
}
#downImg{
	
	width: 25%;
	padding: 20px;
	margin-bottom: 20px;
	float: left;
	border: 5px outset pink;
	overflow: scroll;
	border-radius: 15px;
	margin-left: auto;
	margin-right: auto;
	display:block; 
    margin:auto;
    text-align: center;
}
.pickUp
{
	width: 50%;
	padding: 20px;
	margin-bottom: 20px;
	margin-right: 20px;
	margin-left: 50px;
	float: right;
	border: 10px solid pink;
	right: 10px;
	position: absolute;
	overflow: scroll;
	margin-left: auto; 
	margin-right: auto;
	display:block; 
    margin:auto;
    text-align: center;
}
.pickDown
{
	width: 50%;
	padding: 20px;
	margin-bottom: 20px;
	margin-right: 20px;
	margin-left: 50px;
	float: right;
	border: 10px solid pink;
	right: 10px;
	position: absolute;
	overflow: scroll;
	margin-left: auto; 
	margin-right: auto;
	display:block; 
    margin:auto;
    text-align: center;
}

#page-top > div > div.upcloth > div
{
	font-size: 30px;
	font-family: 'Black Han Sans', sans-serif;
	text-align: left;
	
}
#page-top > div > div.downcloth > div
{
	font-size: 30px;
	font-family: 'Black Han Sans', sans-serif;
	text-align: left;
}
#page-top > div > div.upcloth
{
	color: #fff;
}
#footer > div
{
 position: fixed;
 top : 55px;
 right: 80px;
 padding-right: 20px;
}
#leftbtn
{
position: fixed;
left: 80%;
}
#rightbtn
{
position: fixed;
left: 90%;
}
#allimg
{
 padding-left: 20px;
 padding-right: 20px;
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
        <div class="upcloth">
           <!-- 전체 감싸는 div 상하의 -->
           <div id="allimg">
           <div>상의와 하의를 선택 후 투표 올리기, 내 옷장 넣기를 선택하세요.</div>
           <div id="upImg">
           </div>
           </div>
              <div class="downcloth">
                 </div>
              <div id="downImg">
              </div>
           
           <div class="pickUp">
              <div id="pickUpImg">
              
              </div>
              <div id="pickDownImg">
              
              </div>
           </div>
           </div>
            	<div id="footer"> 
            	<div class="box">
            	<div id="leftbtn">
					 <a id="likeBtn" position="left" class="btn btn-primary btn-xm js-scroll-trigger">투표 올리기</a>
            	</div>
					<c:if test="${not empty login }">
					<div id="rightbtn">
					 <a id="clothMixBtn" position="right" class="btn btn-primary btn-xm js-scroll-trigger">내 옷장으로</a>
					</div>
					</c:if>
            	</div>
            	</div> 
	</div><!-- container -->
<script type="text/javascript">
       		
	$(document).ready(function(){
				
		function getUpList() {
			$.getJSON("/mix/upList", function(data){
				var str = "";

				$(data).each(function(){
					str += "<div class='upc' data-upno='"
						+ this.cgUpcNo
						+ "'><img class='img-fluid img-thumbnail' src='/resources/assets/img/cgup/"
						+ this.cgUpcImg
						+ "' style='width: 100px; height: 100px; object-fit: cover;' /></div>"
				});//each
				$("#upImg").html(str);
       		});//JSON
       	}//getUpList
		getUpList();
		       		
		function getDownList() {
			$.getJSON("/mix/downList", function(data){
				var str = "";
     				
				$(data).each(function(){
					str +="<div class='downc' data-downno='"
						+ this.cgDowncNo 
						+ "'><img class='img-fluid img-thumbnail' src='/resources/assets/img/cgdown/" 
						+ this.cgDowncImg
						+ "' style='width: 100px; height: 100px; object-fit: cover;' /></div>"
				});//each
				$("#downImg").html(str);
			});//JSON
		}//getDownList
		getDownList();
       		
   		var strUp = "";
		var strDown = "";
		var imgUp = "";
		var imgDown = "";
		var noUp = "";
		var noDown = "";
       		
       	$("#upImg").on("click", ".upc img", function(){
       		var upc = $(this).parent();
       		noUp = upc.data("upno");
       		imgUp = this.src;
			strUp = "<img class='img-fluid' src='"
				+ imgUp
				+ "' style='width: 390px; height: 390px; object-fit: cover;' />";
			$("#pickUpImg").html(strUp);                
		});//onclick
		$("#downImg").on("click", ".downc img", function(){
			var downc = $(this).parent();
			noDown = downc.data("downno");
			imgDown = this.src;
			strDown = "<img class='img-fluid' src='"
					+ imgDown
					+ "' style='width: 390px; height: 390px; object-fit: cover;' />";
			$("#pickDownImg").html(strDown);                     
		});//onclick
       		
		$("#pickUpImg").on("click", "img", function(){
			imgUp = "";
			strUp = "";
			$("#pickUpImg").html(strUp);
		});//onclick
       		
		$("#pickDownImg").on("click", "img", function(){
			imgDown = "";
			strDown = "";
			$("#pickDownImg").html(strDown);
		});//onclick

		$("#clothMixBtn").on("click", function(){
			var cgupcno = noUp;
			var cgdowncno = noDown;
 			var mno = "${login.mno}";
			
			$.ajax({
				type : 'post',
				url : '/mix/closet',
				headers: {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					cgUpcNo : cgupcno,
					cgDowncNo : cgdowncno,
					mno : mno
				}),
				success : function(result) {
						alert("등록 되었습니다.");
				}
			})//ajax
		})//clothMixBtn
		
		$("#likeBtn").on("click", function(){
			var cgupcno = noUp;
			var cgdowncno = noDown;
			var mno = "${login.mno}";
			
			$.ajax({
				type : 'post',
				url : '/mix/like',
				headers: {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					cgUpcNo : cgupcno,
					cgDowncNo : cgdowncno,
					mno : mno
				}),
				success : function(result) {
						alert("등록 되었습니다.");
				}
			})//ajax
		})//likeBtn
	});//document
</script>
            
    </body>
</html>
