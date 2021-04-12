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
a:link { color: red; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo:wght@700&family=Noto+Sans+KR:wght@500&family=Song+Myung&display=swap');
.body{
	background-image: url("../assets/img/bg-masthead.jpg");
}

.container
{
	background-color: pink;
	border-style:outset;
	border-radius: 5px;
	position: relative;
}

#clothMixBtn
{
	background-color: pink ;
	box-shadow: 5px 5px 5px black;
	border: 10px;
}
.navbar-brand
{
	
	font-family: 'Nanum Myeongjo', serif;
	text-align: left;
	font-size: 25px;
	font-weight: bolder;
}
#page-top > .main > div.row
{
	position: absolute;
	background-color: gray;
	box-sizing:border-box;
	border-radius: 50px;
	margin-left: auto;
	margin-right: auto;
	width: 80%;
	padding: 20px 20px 20px 20px;
}
#next
{
 	font-family: 'Black Han Sans', sans-serif;
	background-color: pink;
	left : 0;
	right : 0;
	position: absolute;
	margin-left: auto;
	margin-right: auto;
	font-size: 40px;
}
#page-top > .main
{
	width: 100%; height: 100%;
	min-height: 100%; min-width: 1024px;
	 width: 100%; height: auto; 
	 overflow: visible;
	 position: absolute; top: 0; left: 0;
	 min-width:50%; min-height:50%;

}
#mainNav
{
	position: fixed;
	overflow: hidden;
}
#page-top > div > div.row
{
	left : 0;
	right : 0;
	position: absolute;
	margin-left: auto;
	margin-right: auto;
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
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/board">회원게시판</a></li>
                        <c:if test="${empty login }">
                        	<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/login">로그인</a></li>
                        </c:if>
                        <c:if test="${not empty login }">
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

		<div class="modal" id="testModal1">
              <div class="modal-dialog">
                <div class="modal-content">
                  <!-- header -->
                  <div class="modal-header">
                  <!-- 모달 팝업의 제목이 옵니다. -->
                    <h5>투표결과 보기</h5>
                  </div>
                  <!-- body -->
                  <div class="modal-body">
                    <!-- 모달 팝업의 내용은 여기에 옵니다. -->
                    투표결과 <br>
                    <div id="voteInfo"></div><br>
                  </div>
                  <!-- footer -->
                  <div class="modal-footer">
                    <!-- 모달 팝업에서 버튼 등 기타 요소들이 여기에 옵니다. -->
         			<div id="leftLinkBtn">
         			
         			</div>
					<form name="vote" action="/vote" method="get">
					
					<c:if test="${empty login}">
					<button id="leftBtn" class="btn btn-primary">투표하기</button>
					</c:if>
					<c:if test="${login.mage == 20}">
					<button id="left20Btn" class="btn btn-primary">투표하기</button>
					</c:if>
					<c:if test="${login.mage == 30}">
					<button id="left30Btn" class="btn btn-primary">투표하기</button>
					</c:if>
					</form>
<!--                     <button type="button" class="btn btn-danger" 
                     data-dismiss="modal"> 닫기 </button> -->
                  </div>
                </div>
              </div>
            </div>
            <div class="modal" id="testModal2">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <!-- header -->
                    <div class="modal-header">
                    <!-- 모달 팝업의 제목이 옵니다. -->
                      <h5>투표결과 보기</h5>
<!--                       <button type="button" class="btn btn-danger" 
                           data-dismiss="modal">&times;</button> -->
                    </div>
                    <!-- body -->
                    <div class="modal-body">
                      <!-- 모달 팝업의 내용은 여기에 옵니다. -->
                      투표결과<br>
                      <div id="voteInfoB"></div><br>
                    </div>
                    <!-- footer -->
                    <div class="modal-footer">
                      <!-- 모달 팝업에서 버튼 등 기타 요소들이 여기에 옵니다. -->
					<div id="rightLinkBtn">
					
					</div>
					<form name="vote" action="/vote" method="get">
					<c:if test="${empty login}">
					<button id="rightBtn" class="btn btn-primary">투표하기</button>
					</c:if>
					<c:if test="${login.mage == 20}">
					<button id="right20Btn" class="btn btn-primary">투표하기</button>
					</c:if>
					<c:if test="${login.mage == 30}">
					<button id="right30Btn" class="btn btn-primary">투표하기</button>
					</c:if>
					</form>
<!--                       <button type="button" class="btn btn-danger" 
                          data-dismiss="modal"> 닫기 </button> -->
                        </div>
                      </div>
                    </div>
                  </div>
				
	<div class="row">
		<div class="col-6">
			<div id="checkOne">
				
			</div>
			<div id="voteInfo"></div><br>
		
			
		</div>
		<div class="col-6">
		
			<div id="checkTwo">

			</div>
			<div id="voteInfo"></div><br>
			
		</div>
		<div class="row justify-content-center text-center">
	  		 <div class="col-lg-8 align-self-baseline">
				<a href="/vote" class="btn btn-primary btn-xl js-scroll-trigger">NEXT</a>
			</div>
		</div>
		
	</div>
	 

</div>


<script type="text/javascript">
$(document).ready(function(){
// 	alert("제이쿼리작동");
	var cglikeno = ${list};
	var cglikeno2 = ${listA};
	
	function getVote(){
	
		$.getJSON("/vote/read/" + cglikeno, function(data){
				var str = "";
				var link = "";
			
					str += "<strong> 득표수 : "+ (data.cglike_cnt + 1) + "</strong>"
					
					link += "<a href='" + data.cgupclink + "'><button type='button' class='btn btn-primary'>상의 옷정보</button></a>&nbsp;&nbsp;"
							+ "<a href='" + data.cgdownclink + "'><button type='button' class='btn btn-primary'>하의 옷정보</button></a>"
					
					console.log(data.cglike_cnt);
					
					$("#voteInfo").html(str);
					
					$("#leftLinkBtn").html(link);
					
					
					
					$("#leftBtn").on("click", function() {
						console.log(cglikeno);
						$.ajax({
							type: 'put',
							url: '/vote/' + cglikeno,
							headers : {
								"Content-Type" : "application/json",
								"X-HTTP-Method-Override" : "PUT"
							},
							dataType: "text",
							data: JSON.stringify({
								cglikeno : cglikeno
							}),
							success : function(result){
								console.log("투표성공");
							},
							error : function() {
								console.log("에러발생!!");
							}
						});//ajax
					});//leftBtn
					
					$("#left20Btn").on("click", function() {
						console.log(cglikeno);
						$.ajax({
							type: 'put',
							url: '/vote/second/' + cglikeno,
							headers : {
								"Content-Type" : "application/json",
								"X-HTTP-Method-Override" : "PUT"
							},
							dataType: "text",
							data: JSON.stringify({
								cglikeno : cglikeno
							}),
							success : function(result){
								console.log("투표성공");
							},
							error : function() {
								console.log("에러발생!!");
							}
						});//ajax
					});//leftBtn
					$("#left30Btn").on("click", function() {
						console.log(cglikeno);
						$.ajax({
							type: 'put',
							url: '/vote/third/' + cglikeno,
							headers : {
								"Content-Type" : "application/json",
								"X-HTTP-Method-Override" : "PUT"
							},
							dataType: "text",
							data: JSON.stringify({
								cglikeno : cglikeno
							}),
							success : function(result){
								console.log("투표성공");
							},
							error : function() {
								console.log("에러발생!!");
							}
						});//ajax
					});//left20Btn
		});
	}//getVote
		getVote();
		function getVoteB(){
			$.getJSON("/vote/read/" + cglikeno2, function(data){
				var str = "";
				var link = "";
					str += "<strong> 득표수 : "+ (data.cglike_cnt + 1) + "</strong>";
					link += "<a href='" + data.cgupclink + "'><button type='button' class='btn btn-primary'>상의 옷정보</button></a>&nbsp;&nbsp;"
					+ "<a href='" + data.cgdownclink + "'><button type='button' class='btn btn-primary'>하의 옷정보</button></a>"
				$("#voteInfoB").html(str);
				$("#rightLinkBtn").html(link);
				console.log(data.cgupclink);

				console.log(data.mage);
				$("#rightBtn").on("click", function(){
					console.log(cglikeno2);
					
					$.ajax({
						type: 'put',
						url: '/vote/' + cglikeno2,
						headers : {
							"Content-Type" : "application/json",
							"X-HTTP-Method-Override" : "PUT"
						},
						dataType: "text",
						data: JSON.stringify({
							cglikeno : cglikeno2
							
						}),
						success : function(result){
							console.log("투표성공");
						},
						error : function() {
							console.log("에러발생!!");
						}
					});//ajax
				});//rightBtn
				$("#right20Btn").on("click", function() {
					console.log(cglikeno);
					$.ajax({
						type: 'put',
						url: '/vote/second/' + cglikeno2,
						headers : {
							"Content-Type" : "application/json",
							"X-HTTP-Method-Override" : "PUT"
						},
						dataType: "text",
						data: JSON.stringify({
							cglikeno : cglikeno2
						}),
						success : function(result){
							console.log("투표성공");
						},
						error : function() {
							console.log("에러발생!!");
						}
					});//ajax
				});//leftBtn
				$("#right30Btn").on("click", function() {
					console.log(cglikeno);
					$.ajax({
						type: 'put',
						url: '/vote/third/' + cglikeno2,
						headers : {
							"Content-Type" : "application/json",
							"X-HTTP-Method-Override" : "PUT"
						},
						dataType: "text",
						data: JSON.stringify({
							cglikeno : cglikeno2
						}),
						success : function(result){
							console.log("투표성공");
						},
						error : function() {
							console.log("에러발생!!");
						}
					});//ajax
				});//right20Btn
				
			});
		}//getvoteB
		getVoteB();
	function getOne(){
	$.getJSON("/vote/read/" + cglikeno, function(data){
		var str = "";
			console.log(data.cgupcimg);
			str =   "<img class='img-fluid img-thumbnail'  data-toggle='modal' data-target='#testModal1' src='/resources/assets/img/cgup/"
						+ data.cgupcimg 
						+"' style='display: block; margin: 0 auto; width: 53%; height: 100%; object-fit: cover;' />"
						+"<img class='img-fluid img-thumbnail'  data-toggle='modal' data-target='#testModal1' src='/resources/assets/img/cgdown/"
						+ data.cgdowncimg 
						+"' style='display: block; margin: 0 auto; width: 53%; height: 100%; object-fit: cover;' />"
			$("#checkOne").html(str);
		});
	}//getone
	getOne();
	function getTwo(){
		$.getJSON("/vote/read/" + cglikeno2, function(data){
			
			var str = "";
				console.log(data.cgupcimg);
				str =   "<img class='img-fluid img-thumbnail' data-toggle='modal' data-target='#testModal2' src='/resources/assets/img/cgup/"
							+ data.cgupcimg 
							+"' style='display: block; margin: 0 auto; width: 53%; height: 100%; object-fit: cover;' />"
							+"<img class='img-fluid img-thumbnail'  data-toggle='modal' data-target='#testModal2' src='/resources/assets/img/cgdown/"
							+ data.cgdowncimg 
							+"' style='display: block; margin: 0 auto; width: 53%; height: 100%; object-fit: cover;' />"
				$("#checkTwo").html(str);
			});
		}//gettwo
		getTwo();
	
	


});//document


</script>


</body>
</html>


