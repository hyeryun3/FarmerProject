<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" type="text/css" href="./myStyle.css"> -->
    <title>잘 키운 작물</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Roboto+Serif:wght@800&display=swap"
        rel="stylesheet">
   	<link rel="stylesheet" type="text/css" href="./resources/css/myStyle.css">
    <script src="https://kit.fontawesome.com/4e80b85547.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="./resources/js/mypage.js"></script>
</head>
<body>
 <div class="container">
        <div class="header">
			<div class="header_top">
				<div class="header_top_right" style="margin-right:1.3em">
					<c:if test="${loginid ==null}">
						<a href="login.do" >로그인</a> | <a href="join.do">회원가입</a>
					</c:if>
					<c:if test = "${loginid != null}">
					<a href="mypage.do">${loginid }</a> | <a href="logout.do">로그아웃</a>
					</c:if>
				</div>
				<div class="header_menu">
					<a href="./product_dic.do">농산물 사전</a> <a
						href="./farmer_dic.do">농부 사전</a> <a href="./board_sell.do">농산물
						판매</a> <a href="./board.do">공유게시판</a>
				</div>
			</div>
			<div class="header_logo">
				<a href="./index.do">잘 키운 작물</a>
			</div>
			<form method="get" action="./productList.do">
				<div class="search_div">
					<i class="fa-solid fa-magnifying-glass"></i> <input
						class="search-bar__input" type="search" placeholder="검색어를 입력하세요.">
				</div>
			</form>
		</div>
		<hr>
		</div>
</body>
</html>