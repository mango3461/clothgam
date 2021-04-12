<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo:wght@700&family=Noto+Sans+KR:wght@500&family=Song+Myung&display=swap');
#page-top > div > h1
{
font-family: 'Black Han Sans', sans-serif;
}
#page-top > div > div.row > table > tbody :not(#page-top > div > div.row)
{
font-size: 50px;
}
body > .main > div.row > table
{
	border-collapse: collapse;
  	line-height: 1.5;
	margin-left: auto;
	margin-right: auto;
	width: 80%;
	min-width: 500px;
	text-align: center;
	overflow-x: auto;
	border-top: 5px solid #444444;
	border-bottom: 5px solid #444444;
	border-color: solid #444444;
	font-family: 'Black Han Sans', sans-serif;
}
body > .main > div.row > table > tbody
	{
	color : white;
	font-weight: bold;
	font-family: 'Black Han Sans', sans-serif;
	}
body > .main > div.row > table > tbody > tr:nth-child(1)
 {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #369;
  border-bottom: 3px solid #036;
  font-family: 'Black Han Sans', sans-serif;
  font-weight: lighter;
  }
body > .main > div.row > table > tbody
{
	text-align: center;
	text-decoration:overline;
	border-collapse: collapse;
	line-height: 1.5;
	border: 1px solid #ccc;
	margin: 20px 10px;
	font-family: 'Black Han Sans', sans-serif;
	font-weight: lighter;
}
#testModal1
{
	text-align: center;
}
#testModal1 > div > div > div.modal-header
{
	text-align: center;
	font-size: small;
}
#page-top > .main > div.row > table
{
background-color: #B0C4DE;
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
	<h1 class="text-center">20대가 투표한 좋아요 순위</h1>
<div class="modal" id="testModal1">
              <div class="modal-dialog">
                <div class="modal-content">
                  <!-- header -->
                  <div class="modal-header">
                  <!-- 모달 팝업의 제목이 옵니다. -->
                    <h5>상세정보</h5>
                    <button type="button" class="btn btn-danger btn-lg"
                        data-dismiss="modal" aria-label="Close">&times;</button>
                  </div>
                  <!-- body -->
                  <div class="modal-body">
                    <!-- 모달 팝업의 내용은 여기에 옵니다. -->
                    <div id="upcloth"></div><br>
                  </div>
                  <!-- footer -->
                  <div class="modal-footer">
                    <!-- 모달 팝업에서 버튼 등 기타 요소들이 여기에 옵니다. -->
                    <div id="linkBtn">
	
                    </div>
                    <button type="button" class="btn btn-danger" 
                     data-dismiss="modal"> 닫기 </button> 
                  </div>
                </div>
              </div>
            </div>


<div class="row">
	<table class="table table-hover">
	<tr>
 		<th>순위</th>
		<th>이미지</th> 
		<th>득표 수</th>
		
	</tr>
 	<c:forEach var="a" items="${list}"> 
	<tr>
 	<td><img src="/resources/assets/img/portfolio/icon/${a.cglist}.png"></td>
	<td><img class='img-fluid img-thumbnail' data-cglikeno='${a.cglikeno}' data-toggle='modal' data-target='#testModal1' src='/resources/assets/img/cgup/${a.cgupcimg}'
							style='display: block; weith:100px; height:100px; margin: 0 auto; object-fit: cover;' />
		<img class='img-fluid img-thumbnail' data-cglikeno='${a.cglikeno}'data-toggle='modal' data-target='#testModal1' src='/resources/assets/img/cgdown/${a.cgdowncimg}'
							style='display: block; weith:100px; height:100px; margin: 0 auto; object-fit: cover;' />
							</td>
	<td>${a.cglikeA_cnt}</td>
	</tr>
 	</c:forEach> 

	</table>
</div>
</div>
<!-- </header> -->
<script type="text/javascript">

$(document).ready(function(data){
// 	var cgrno = 1;
// 			console.log(cgrno);
// 	function getImg(){
// 		$.getJSON("/list" + cgrno, function(){
// 			var str = "";
// 			$(data).each(function(){
// 				str += "<img class='img-fluid img-thumbnail' src='/resources/assets/img/portfolio/fullsize/"
// 					+ this.cgmiximg
// 					+ "' style='display: block; margin: 0 auto; object-fit: cover;' />";
// 					)};
// 			$("#aa").html(str);
// 		})
// 	}
// 	getImg();
	function getLink(){
		
		$("tr").on("click", "td img", function(){
			
			var cglike = $(this)
	 		var cglikeno = cglike.data("cglikeno");
			
			console.log("------------");
			console.log(cglikeno);
		
		$.getJSON("/rank/list/" + cglikeno, function(data){
		console.log($("#number").val());
			
		
		var str = "";
			
			str += "<a href='" + data.cgupclink + "'><img class='img-fluid img-thumbnail' src='/resources/assets/img/cgup/"
				+ data.cgupcimg
				+"' style='display:block; margin: 0 auto; object-fit: cover;' /></a>"
				+"<a href='" + data.cgdownclink + "'><img class='img-fluid img-thumbnail' src='/resources/assets/img/cgdown/"
				+ data.cgdowncimg
				+"' style='display:block; margin: 0 auto; object-fit: cover;' /></a>";
				
				$("#upcloth").html(str);
				
				console.log(data.cgupclink);
			});//모달안에 사진
		});//이벤트 위임
	};//getLink
	getLink();
	
	function LinkBtn(){
		$("tr").on("click", "td img", function(){
			
			var cglike = $(this)
	 		var cglikeno = cglike.data("cglikeno");
		$.getJSON("/rank/list/" + cglikeno, function(data){
		console.log($("#number").val());
			
		
		var str = "";
			
			str += "<a href='" + data.cgupclink + "'><button type='button' class='btn btn-primary'>상의 옷정보</button></a>&nbsp;&nbsp;"
				+ "<a href='" + data.cgdownclink + "'><button type='button' class='btn btn-primary'>하의 옷정보</button></a>"
				
				$("#linkBtn").html(str);
				
				console.log(data.cgupclink);
		});//getJSON 버튼
		});//이벤트 위임
	};//LinkBtn
	LinkBtn();
	
	


})//document


</script>

</body>
</html>