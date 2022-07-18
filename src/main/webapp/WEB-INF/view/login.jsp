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
<script src="./resources/js/login.js"></script>
</head>

<body>
	<div class="container">
		<div class="header">
			<div class="header_top">
				<div class="header_top_right" style="margin-right: 1.3em">
					<c:if test="${userId ==null}">
						<a href="login.do">로그인</a> | <a href="join.do">회원가입</a>
					</c:if>
					<c:if test="${userId != null}">
						<a href="mypage.do">${userId }</a> | <a href="logout.do">로그아웃</a>
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
						class="search-bar__input" type="search" placeholder="네이버,카카오로그인 버튼도 나중에 api연결하려 합니다..">
				</div>
			</form>
		</div>

		<div>
			<div class="main">
				<hr>
				<div class="join_form">
					<fieldset>
						<legend>로그인</legend>
						<form class="loginform" method="post" action="./afterlogin.do">

							아이디 <input type="text" name="id" id="id"> <span
								title="id"></span><br> 비밀번호 <input type="password"
								name="pw" id="pw"> <span title="pw"></span><br>
							<button id="logbtn">로그인</button>
							<div class="lostinfo">
								<a class="findpw">비밀번호 찾기</a> | <a class="findid">아이디 찾기</a><br />
								<a href="./join.do">회원가입</a>
							</div>
						</form>
						<div class="socialbtn">
							<a href="" class="naverbtn"><img
								src="./resources/images/naver.png" alt="네이버 로그인" /></a> <a
								href="" class="kakaobtn"><img
								src="./resources/images/kakao.png" alt="카카오 로그인" /></a>
						</div>
					</fieldset>
				</div>
			</div>

			<div class="pwmain">
				<hr>
				<div class="join_form">
					<fieldset>
						<legend>비밀번호 찾기</legend>
						<form class="pwform" action="./findpw.do" method="POST">
							아이디 <input type="text" name="pid" id="pid"> <span
								title="pid"></span><br> 이메일 <input type="text"
								name="pemail" id="pemail"> <span title="pemail"></span><br>
							<button id="findpwbtn">비밀번호 찾기</button>
							<div class="lostinfo">
								<a class="findid">아이디 찾기</a> | <a href="./join.do">회원가입</a>
							</div>
						</form>
					</fieldset>
				</div>
			</div>
			<div class="idmain">
				<hr>
				<div class="join_form">
					<fieldset>
						<legend>아이디 찾기</legend>
						<form class="idform">
							이름 <input type="text" name="name" id="iname"> <span
								title="name"></span><br> 이메일 <input type="text"
								name="email" id="iemail"> <span title="email"></span><br>
							<button id="findidbtn">아이디 찾기</button>
							<div class="lostinfo">
								<a class="findpw">비밀번호 찾기</a> | <a href="./join.do">회원가입</a>
							</div>
						</form>
					</fieldset>
				</div>
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