<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>잘 키운 작물</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Roboto+Serif:wght@800&display=swap"
        rel="stylesheet">
   	<link rel="stylesheet" type="text/css" href="./resources/css/myStyle.css?after">
    <script src="https://kit.fontawesome.com/4e80b85547.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="./resources/js/board.js"></script>
</head>

<body>
    <div class="container">
        <div class="header">
			<div class="header_top">
				<div class="header_top_right" style="margin-right:1.3em">
					<c:if test="${userId ==null}">
						<a href="login.do" >로그인</a> | <a href="join.do">회원가입</a>
					</c:if>
					<c:if test = "${userId != null}">
					<a href="mypage.do">${userId }</a> | <a href="logout.do">로그아웃</a>
					</c:if>
				</div>
				<div class="header_menu">
					<a href="product_dic.do">농산물 사전</a> <a
						href="farmer_dic.do">농부 사전</a> <a href="board_sell.do">농산물
						판매</a> <a href="board.do">공유게시판</a>
				</div>
			</div>
			<div class="header_logo">
				<a href="index.do">잘 키운 작물</a>
			</div>
			<form method="get" action="search.do">
				<div class="search_div">
					<i class="fa-solid fa-magnifying-glass"></i> <input
						class="search-bar__input" type="search" placeholder="검색어를 입력하세요.">
				</div>
			</form>
		<hr>
		</div>


        <div class="main">
            <div class="board">
                <div class="board_title">
<%--                    <h3 name="board_notice">공지사항</h3>--%>
                    <h3 name="board_user">자유게시판</h3>
                </div>

                <%--<div class="board_table_notice">
                    <table>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>등록일</th>
                            </tr>
                        </thead>
                        <tbody id="tbody" class="notice_table"></tbody>
                    </table>
                </div>--%>
                <div class="board_table_qna">
                    <table>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>등록일</th>
                            </tr>
                        </thead>
                        <tbody id="tbody" class="qna_table"></tbody>
                    </table>
                    <button>문의 등록</button>
                </div>
            </div>
        </div>




        <div class="footer">
            <div class="footer_top">
                <a href="">회사소개</a> | <a href="">이용약관</a> | <a href="">개인정보 처리방침</a> | <a href="">이메일 무단 수집거부</a>
            </div>
            <div class="footer_bottom">
                <div class="footer_bottom_company">
                    <h1>쇼핑몰 이름</h1>
                    <!-- <img src="./btnG_축약형.png" > -->
                </div>
                <div class="footer_bottom_right">
                    <div class="footer_bottom_right_1">
                        <ul>
                            <li>대표이름 : 홍길동</li>
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