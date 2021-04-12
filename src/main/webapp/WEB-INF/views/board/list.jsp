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
#page-top > div > div:nth-child(2)
{
	margin-top: 60px;
	font-family: 'Nanum Myeongjo', serif;
	
}
#page-top > div > div:nth-child(3) > div
{
	margin-top: 10px;
	margin-left: 20px;
	font-family: 'Nanum Myeongjo', serif;
	
}
#searchBtn
{
color: gray;
background-color: #D8BFD8;
size: 80%;
}
#page-top > div > table
{

	background-color: #FFE4E1;
	border: medium;
	border-radius: 10px;
	font-family: 'Nanum Myeongjo', serif;
	border-radius: 20px;

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
 <div class="container">
 	<br>
 	<div class="row">
	<h1 style="text-align: center; font-family: 'Black Han Sans', sans-serif;"> 회원 게시판 </h1>
 	</div>
 	<div class="row">
 		<div class="box-body">
 			<select name="searchType">
 				<option value="n"
 				<c:out value="${cri.searchType == null ? 'selected' : '' }" />>
 				-           
 				</option>
 				<option value="t"
 				<c:out value="${cri.searchType eq 't' ? 'selected' : '' }"/>>
 				제목
 				</option>
 				<option value="c"
  				<c:out value="${cri.searchType eq 'c' ? 'selected' : '' }" />>	
  				본문
  				</option>
  				<option value="w"
  				<c:out value="${cri.searchType eq 'w' ? 'selected' : '' }" />>	
  				글쓴이
  				</option>
  				<option value="tc"
  				<c:out value="${cri.searchType eq 'tc' ? 'selected' : '' }" />>	
  				제목+본문
  				</option>
  				<option value="cw"
  				<c:out value="${cri.searchType eq 'cw' ? 'selected' : '' }" />>	
  				본문+글쓴이
  				</option>
  				<option value="tcw"
  				<c:out value="${cri.searchType eq 'tcw' ? 'selected' : '' }" />>	
  				제목+본문+글쓴이
  				</option>
 				
 			</select>
 			
 			<input type="text"
 				name="keyword"
 				id="keywordInput"
 				value="${cri.keyword }">
 			<button id="searchBtn btn" >검색</button>
 		</div>
 	</div>
 	<br><br>
	<table class="table table-hover">
	<thead>
		<tr>
		 <th>번 호</th>
		 <th>제 목</th>
		 <th>글쓴이</th>
		 <th>작성일</th>
		 <th>수정날짜</th>
		</tr>
    </thead>
    <c:forEach items="${list }" var="list">
	    <tr>
		  <td>${list.bno}</td>
		  <td><a href="http://localhost:8181/board/get?bno=${list.bno}&page=${cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}">
		  	${list.title}&#91;${list.replyCount}&#93;
		  </a></td>
		  <td>${list.writer}</td>
		  <td>${list.regDate}</td>
		  <td>${list.updateDate}</td>
	    </tr>
    </c:forEach>
	</table>
	<hr>
  <ul class="pagination justify-content-center">
  	<c:if test="${pageMaker.prev }">
    	<li class="page-item">
    		<a class="page-link" href="/board/list?page=${pageMaker.startPage -1 }">&laquo;</a>
    	</li>
    </c:if>
    <c:forEach begin="${pageMaker.startPage }" 
    			end="${pageMaker.endPage }"
    			var="idx">
    <li class="page-item
    	<c:out value="${ pageMaker.cri.page == idx ? 'active' : ''}" />">
    	<a class="page-link" href="http://localhost:8181/board/list?page=${idx }
    			&searchType=${cri.searchType}&keyword=${cri.keyword}">${idx }</a></li>
    </c:forEach>
    <c:if test="${pageMaker.next && pageMaker.endPage > 0 }">  
    	<li class="page-item">
    		<a class="page-link" href="/board/list?page=${pageMaker.endPage +1 }">&raquo;</a></li>
    </c:if>
  </ul>
  <a href="http://localhost:8181/board/register" class="btn btn-primary right" 
  		style="float: right;" role="button">글쓰기</a>
  		
</div><!-- div container end -->
<!-- 하단에 script태그를 이용해 ${bno}를 콘솔에 출력하는
구문을 작성해 list페이지의 개발자 도구 console창에 출력해보세요. -->
<script type="text/javascript">
	$(document).ready(function(){
		
		// 삭제된 글 번호는 controller에서 넘어옵니다.
		// ${bno}라는 명칭으로 넘어오므로 변수에 저장합니다.
		// 문자열 형태로 받아오도록 처리
		// 그렇지 않으면 콘솔창에서 받은 자료가 없을 때 에러가 남
		
		var bno = "${bno}";
		console.log(bno);
		
		// alert()구문을 이용해 글을 삭제할때마다
		// n번 글이 삭제되었습니다 라는 안내문구를 띄워주세요.
		
		// 조건문을 이용해 삭제일 때만 실행하도록 로직을 수정합니다.
		
		if(bno !== ''){
			alert(bno + "번 글이 삭제되었습니다.");
		}


	})
	$('#searchBtn').on("click", function(event) {
		self.location = "list"
			+ "?page=1"
			+ "&searchType="
			+ $("select option:selected").val()
			+ "&keyword=" + $("#keywordInput").val();
	})
</script>


</body>
</html>