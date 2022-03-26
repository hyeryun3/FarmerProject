<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>잘 키운 작물</title>
<link rel="stylesheet" type="text/css"
	href="./resources/css/myStyle.css?ver=1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Roboto+Serif:wght@800&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/4e80b85547.js"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>

<body>
	<div class="main_container">
		<div class="header">
			<div class="header_top">
				<div class="header_top_right" style="margin-right: 1.3em">
					<c:if test="${loginid ==null}">
						<a href="login.do">로그인</a> | <a href="join.do">회원가입</a>
					</c:if>
					<c:if test="${loginid != null}">
						<a href="mypage.do">${loginid }</a> | <a href="logout.do">로그아웃</a>
					</c:if>
				</div>
				<div class="header_menu">
					<a href="./product_dic.do">농산물 사전</a> <a href="./farmer_dic.do">농부
						사전</a> <a href="./board_sell.do">농산물 판매</a> <a href="./board.do">공유게시판</a>
				</div>
			</div>
			<div class="header_logo">
				<a href="./index.do">잘 키운 작물</a>
			</div>
			<form method="get" action="./search.do">
				<div class="search_div">
					<i class="fa-solid fa-magnifying-glass"></i> <input
						class="search-bar__input" type="search" placeholder="검색어를 입력하세요.">
				</div>
			</form>
		</div>

		<div class="banner">
			<div>
				<img src="./resources/images/banner.jpg" />
			</div>
		</div>

		<div class="intro">
			<div>
				<h1>잘 키운 작물을 소개합니다.</h1>
				<hr>
				<span> 작물을 직접 키우는 것은 환경에도 좋고, 우리 아이들 정서에도 좋은 일이지요!<br>
					개인 텃밭을 소유하고, 주말 농장을 가꾸며 직접 농작물을 키우는 자연친화적인 문화를 즐기는 사람들이 많아졌습니다.<br>
					나만 알고있기엔 너무 잘 키운 내 농작물!<br> 내가 키운 작물을 여러 사람들에게 소개하고, 소통하며 판매까지
					할 수 있는 사이트입니다.
				</span>
			</div>
			<br> <br> <br>
			<div>
				<h2>어떤 종류의 농작물을 취급하나요?</h2>
				<hr>
				<span> 감자, 고구마, 각종 채소 및 과일류 등 개인이 직접 기른 작물이면 모두 가능합니다! <br>
					아! 그리고 본인이 어부라면, 직접 잡은 어류도 가능합니다! <br> 잘 키운 우리 작물들을 많은 사람들에게
					소개해주세요:)
				</span>
			</div>
			<br> <br> <br>
			<div>
				<h2>사이트를 이용하면 뭐가 좋은가요?</h2>
				<hr>
				<span> 자신만의 농작물을 키우는 노하우를 공유하며, 키우는 재미와 먹는 즐거움을 나눕니다.<br>
					그리고 그 과정에서 나와 같은 취미를 가지고 있는 우리 동네 농부들을 만나볼 수 있습니다:)
				</span>
			</div>
		</div>

		<div class="footer">
			<div class="footer_top">
				<a href="">회사소개</a> | <a href="">이용약관</a> | <a href="">개인정보 처리방침</a>
				| <a href="">이메일 무단 수집거부</a>
			</div>
			<div class="footer_bottom">
				<div class="footer_bottom_company">
					<h1>잘 키운 작물</h1>
				</div>
				<div class="footer_bottom_right">
					<div class="footer_bottom_right_1">
						<ul>
							<li>대표이름 : 뚱이</li>
							<li>TEL : 02-1234-5678</li>
							<li>주소 : 서울시 강남구 테헤란로 152</li>
							<li>개인정보관리책임자 : 스펀지밥</li>
						</ul>
					</div>
				</div>
				<div class="footer_bottom_right">
					<div class="footer_bottom_right_2">
						<ul>
							<li>고객센터</li>
							<li>월-금 : AM 10:00 ~ PM 05:00</li>
							<li>주말 및 공휴일은 휴무입니다.</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>