<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap')
	;

* {
	margin: 0;
	font-family: "Noto Sans KR", sans-serif;
}

a {
	text-decoration: none;
}

img {
	display: block;
}

ul, li {
	padding: 0;
	list-style: none;
	margin: 0;
}

/*컨텐츠 section*/
.content_zone {
	width: 100%;
	display: flex;
	justify-content: center;
}

.content_zone1 {
	margin-top: 7rem;
}

.content_zone1 .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}

.content_zone1 .content_menu {
	width: 100%;
	max-width: 45rem;
	display: flex;
	justify-content: space-around;
	align-items: center;
}

.content_zone1 .menu_item {
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.content_zone1 .menu_container {
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
}

.content_zone1 .menu_container a {
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
	text-decoration: none;
	/* 추가: 링크 밑줄 제거 */
}

.content_zone1 .menu_container img {
	width: 50px;
}

.content_zone1 .menu_container p {
	font-size: 14px;
	color: black;
	margin-top: 0.5rem;
	/* 이미지와 텍스트 사이 간격 조정 */
}

/*검색존*/
.content_zone2 {
	margin-top: 3rem;
}

.content_zone2 .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}

.content_zone2 .content_zone_wrap .search_box {
	width: 100%;
	max-width: 45rem;
	position: relative;
}

.content_zone2 .content_zone_wrap .search_container {
	width: 100%;
	max-width: 45rem;
	display: flex;
	justify-content: center;
	align-items: center;
}

.content_zone2 .content_zone_wrap .search_box input {
	border-radius: 10px;
	border: 2px solid #007bff;
	padding: 15px 10px;
	width: 100%;
	max-width: 1000px;
	font-size: 16px;
}

.content_zone2 .content_zone_wrap .search_box .search_img {
	position: absolute;
	top: 30%;
	right: 5%;
	color: #007bff;
}

/*이미지 슬라이드 존*/
.content_zone3 {
	margin-top: 3rem;
}

.content_zone3 .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}

.content_zone3 .content_zone_wrap {
	width: 100%;
	display: flex;
	justify-content: center;
}

.content_zone3 .content_zone_wrap .image_slide_container {
	width: 100%;
	max-width: 1000px;
	border-radius: 30px;
	position: relative;
	overflow: hidden;
}

.content_zone3 .content_zone_wrap .image_slide_container .slide {
	display: none;
	width: 100%;
}

.content_zone3 .content_zone_wrap .image_slide_container .slide img {
	width: 100%;
	height: auto;
}

/* 섹션 4 */
.content_zone4 {
	margin-top: 3rem;
}

.content_zone4 .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}

.content_zone4 .image_slide_container {
	width: 100%;
	max-width: 1000px;
	overflow: hidden;
	/* overflow: hidden 추가 */
	position: relative;
}

.content_zone4 .content_zone_wrap .image_slide_container .image_slide_title
	{
	margin-bottom: 20px;
}

.content_zone4 .content_zone_wrap .image_slide_container .image_slide_title h1
	{
	color: #007bff;
	font-weight: 500;
	font-size: 20px;
}

.content_zone4 .image_slide_container .image_wrapper {
	border-radius: 30px;
	/* border-radius 추가 */
	overflow: hidden;
}

.content_zone4 .slide_group {
	display: flex;
	transition: transform 0.5s ease;
}

.content_zone4 .slide_item {
	min-width: calc(33.33%);
	/* Adjust for margin */
	box-sizing: border-box;
	margin-right: 60px;
	/* Add margin-right for spacing */
}

.content_zone4 .slide_item img {
	width: 100%;
	max-width: 300px;
	height: auto;
}

.content_zone4 .slide_item h1 {
	font-size: 16px;
	color: black;
	font-weight: 500;
	margin-top: 0.5rem;
	text-align: left;
}

.content_zone4 .slide_item p {
	font-size: 14px;
	color: black;
	margin-top: 0.5rem;
	text-align: left;
}

/* 섹션 5 */
.content_zone5 {
	margin-top: 3rem;
	margin-bottom: 40px;
}

.content_zone5 .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}

.content_zone5 .image_slide_container {
	width: 100%;
	max-width: 1000px;
	overflow: hidden;
	/* overflow: hidden 추가 */
	position: relative;
}

.content_zone5 .content_zone_wrap .image_slide_container .image_slide_title
	{
	margin-bottom: 20px;
}

.content_zone5 .content_zone_wrap .image_slide_container .image_slide_title h1
	{
	color: #007bff;
	font-weight: 500;
	font-size: 20px;
}

.content_zone5 .image_slide_container .image_wrapper {
	border-radius: 30px;
	/* border-radius 추가 */
	overflow: hidden;
}

.content_zone5 .slide_group {
	display: flex;
	transition: transform 0.5s ease;
}

.content_zone5 .slide_item {
	min-width: calc(33.33%);
	/* Adjust for margin */
	box-sizing: border-box;
	margin-right: 60px;
	/* Add margin-right for spacing */
}

.content_zone5 .slide_item img {
	width: 100%;
	max-width: 300px;
	height: auto;
}

.content_zone5 .slide_item h1 {
	font-size: 16px;
	color: black;
	font-weight: 500;
	margin-top: 0.5rem;
	text-align: left;
}

.content_zone5 .slide_item p {
	font-size: 14px;
	color: black;
	margin-top: 0.5rem;
	text-align: left;
}

/**/
.content_zone6 {
	margin-top: 50px;
}

.content_zone6 .content_zone_wrap {
	width: 100%;
	max-width: 900px;
}

.content_zone6 .content_menu {
	width: 100%;
}

.content_zone6 .content_zone_wrap .local_title {
	margin-bottom: 20px;
}

.content_zone6 .content_zone_wrap .local_title h1 {
	color: #007bff;
	font-weight: 500;
	font-size: 20px;
}

.content_zone6 .content_menu .content_container {
	width: 100%;
	display: flex;
	justify-content: space-around;
	align-items: center;
}

.content_zone6 .content_menu .content_container .maps_bg {
	width: 100%;
	max-width: 400px;
	height: 600px;
	background-image: url(${pageContext.request.contextPath}/resources/img/maps.png);
	background-position: center;
	background-repeat: no-repeat;
	background-size: contain;
}

.content_zone6 .content_menu .content_container .maps_bg ul {
	width: 100%;
	height: 100%;
	position: relative;
}

.content_zone6 .content_menu .content_container .maps_bg ul li {
	position: absolute;
}

.content_zone6 .content_menu .content_container .maps_bg ul li a {
	color: white;
	transition: all 0.4s ease;
}

.content_zone6 .content_menu .content_container .maps_bg ul li a:hover {
	border-radius: 10px;
	padding: 5px 20px;
	background-color: white;
	color: #007bff;
}

.content_zone6 .content_menu .content_container .maps_bg ul .seoul {
	top: 110px;
	left: 130px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .incheon {
	top: 120px;
	left: 90px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .busan {
	bottom: 180px;
	right: 70px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .ulsan {
	bottom: 240px;
	right: 60px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .deajeon {
	top: 260px;
	left: 120px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .deagu {
	bottom: 250px;
	right: 120px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .gwangju {
	bottom: 180px;
	left: 70px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .gyeong_gido
	{
	top: 150px;
	left: 120px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .gang_wondo
	{
	top: 100px;
	right: 120px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .chungbug {
	top: 200px;
	left: 160px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .chungnam {
	top: 230px;
	left: 70px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .jeonbug {
	bottom: 240px;
	left: 100px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .jeongnam {
	bottom: 140px;
	left: 70px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .gyeongbug {
	bottom: 310px;
	right: 80px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .gyeongnam {
	bottom: 180px;
	right: 140px;
}

.content_zone6 .content_menu .content_container .maps_bg ul .jejudo {
	bottom: 8px;
	left: 30px;
}

.content_zone6 .content_menu .content_container .maps_menu {
	width: 100%;
	flex: 0.7;
}

.content_zone6 .content_menu .content_container .maps_menu h1 {
	text-align: center;
	font-weight: 500;
	font-size: 18px;
	margin-bottom: 20px;
}

.content_zone6 .content_menu .content_container .maps_menu ul {
	display: flex;
	justify-content: space-between;
	margin-bottom: 15px;
}

.content_zone6 .content_menu .content_container .maps_menu .recommend_ai
	{
	width: 100%;
	height: 150px;
	position: relative;
	border-radius: 10px;
	overflow: hidden;
}

.content_zone6 .content_menu .content_container .maps_menu .recommend_ai a
	{
	color: white;
	font-weight: bold;
	font-size: 24px;
}

.content_zone6 .content_menu .content_container .maps_menu .recommend_ai img
	{
	width: 100%;
}

.content_zone6 .content_menu .content_container .maps_menu .recommend_ai p
	{
	position: absolute;
	top: 25%;
	left: 5%;
}

.content_zone6 .content_menu .content_container .maps_menu li {
	width: 100%;
	max-width: 100px;
	border-radius: 10px;
	border: 1px solid #007bff;
	transition: all 0.4s ease;
}

.content_zone6 .content_menu .content_container .maps_menu li:hover {
	background-color: #007bff;
}

.content_zone6 .content_menu .content_container .maps_menu li:hover a {
	color: white;
}

.content_zone6 .content_menu .content_container .maps_menu li a {
	display: block;
	width: 100%;
	color: #007bff;
	text-align: center;
	font-weight: 500;
	box-sizing: border-box;
	padding: 10px 20px; /* li 태그의 패딩을 a 태그로 이동 */
	transition: all 0.4s ease;
}
</style>
<script>
	let slideIndex = 0;

	function showSlides() {
		let slides = document.getElementsByClassName("slide");
		for (let i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		slideIndex++;
		if (slideIndex > slides.length) {
			slideIndex = 1
		}
		slides[slideIndex - 1].style.display = "block";
		setTimeout(showSlides, 2000); // Change image every 2 seconds
	};

	let slideIndex2 = 0; // 초기 인덱스

	function showSlides2() {
		let slides = document.querySelectorAll('.content_zone4 .slide_item');
		let slideGroup = document.querySelector('.content_zone4 .slide_group');
		let slideWidth = slides[0].offsetWidth + 60; // Adjusting for margin (20px added)

		// 현재 슬라이드를 표시
		slideGroup.style.transform = 'translateX('
				+ (-slideWidth * slideIndex2) + 'px)';

		// 슬라이드 인덱스 증가
		slideIndex2++;

		// 무한 루프를 위해 슬라이드 그룹이 원래 위치로 돌아오도록 설정
		if (slideIndex2 >= slides.length - 2) {
			slideIndex2 = 0; // 슬라이드를 처음으로 돌아감
		}

		// 슬라이드 전환 효과 적용
		slideGroup.style.transition = 'transform 0.5s ease';
		slideGroup.style.transform = 'translateX('
				+ (-slideWidth * slideIndex2) + 'px)';

		// 슬라이드 전환 주기 설정
		setTimeout(showSlides2, 3000); // Change slide every 3 seconds
	}

	let slideIndex3 = 0; // 초기 인덱스

	function showSlides3() {
		let slides = document.querySelectorAll('.content_zone5 .slide_item');
		let slideGroup = document.querySelector('.content_zone5 .slide_group');
		let slideWidth = slides[0].offsetWidth + 60; // Adjusting for margin (20px added)

		// 현재 슬라이드를 표시
		slideGroup.style.transform = 'translateX('
				+ (-slideWidth * slideIndex3) + 'px)';

		// 슬라이드 인덱스 증가
		slideIndex3++;

		// 무한 루프를 위해 슬라이드 그룹이 원래 위치로 돌아오도록 설정
		if (slideIndex3 >= slides.length - 2) {
			slideIndex3 = 0; // 슬라이드를 처음으로 돌아감
		}

		// 슬라이드 전환 효과 적용
		slideGroup.style.transition = 'transform 0.5s ease';
		slideGroup.style.transform = 'translateX('
				+ (-slideWidth * slideIndex3) + 'px)';

		// 슬라이드 전환 주기 설정
		setTimeout(showSlides3, 3000); // Change slide every 3 seconds
	}

	document.addEventListener("DOMContentLoaded", function() {
		showSlides();
		showSlides2();
		showSlides3();
	});
</script>
</head>


<body>

	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<div class="content_menu">
				<div class="menu_item menu_item1">
					<div class="menu_container">
						<a href="/mw/bolgguriMain">
							<div class="menu_icon">
								<img src="${pageContext.request.contextPath}/resources/img/view_icon.png" alt="볼거리">
							</div>
							<p>볼거리</p>
						</a>
					</div>
				</div>
				<div class="menu_item menu_item2">
					<div class="menu_container">
						<a href="">
							<div class="menu_icon">
								<img src="${pageContext.request.contextPath}/resources/img/play_icon.png" alt="놀거리">
							</div>
							<p>놀거리</p>
						</a>
					</div>
				</div>
				<div class="menu_item menu_item3">
					<div class="menu_container">
						<a href="">
							<div class="menu_icon">
								<img src="${pageContext.request.contextPath}/resources/img/food_icon.png" alt="먹거리">
							</div>
							<p>먹거리</p>
						</a>
					</div>
				</div>
				<div class="menu_item menu_item4">
					<div class="menu_container">
						<a href="">
							<div class="menu_icon">
								<img src="${pageContext.request.contextPath}/resources/img/hotel_icon.png" alt="숙박업">
							</div>
							<p>숙박업</p>
						</a>
					</div>
				</div>
				<div class="menu_item menu_item5">
					<div class="menu_container">
						<a href="">
							<div class="menu_icon">
								<img src="${pageContext.request.contextPath}/resources/img/ai_icon.png" alt="여행추천 AI">
							</div>
							<p>여행추천 AI</p>
						</a>
					</div>
				</div>
				<div class="menu_item menu_item6">
					<div class="menu_container">
						<a href="/UNoticeBoard">
							<div class="menu_icon">
								<img src="${pageContext.request.contextPath}/resources/img/help_icon.png" alt="고객센터">
							</div>
							<p>고객센터</p>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="content_zone content_zone2">
		<div class="content_zone_wrap">
			<a href="" class="search_container">
				<form class="search_box">
					<input type="search" placeholder="키워드를 입력해주세요.">
					<div class="search_img">
						<span class="material-symbols-outlined"> search </span>
					</div>
				</form>
			</a>
		</div>
	</section>

	<section class="content_zone content_zone6">

		<div class="content_zone_wrap">

			<div class="content_menu">

				<div class="local_title">
					<h1>지역별 여행 정보</h1>
				</div>
				<div class="content_container">
					<div class="maps_bg">
						<ul>
							<li class="seoul"><a href="">서울</a></li>
							<li class="incheon"><a href="">인천</a></li>
							<li class="busan"><a href="">부산</a></li>
							<li class="deajeon"><a href="">대전</a></li>
							<li class="deagu"><a href="">대구</a></li>
							<li class="ulsan"><a href="">울산</a></li>
							<li class="gwangju"><a href="">광주</a></li>
							<li class="gyeong_gido"><a href="">경기도</a></li>
							<li class="gang_wondo"><a href="">강원도</a></li>
							<li class="chungbug"><a href="">충청북도</a></li>
							<li class="chungnam"><a href="">충청남도</a></li>
							<li class="jeonbug"><a href="">전라북도</a></li>
							<li class="jeongnam"><a href="">전라남도</a></li>
							<li class="gyeongbug"><a href="">경상북도</a></li>
							<li class="gyeongnam"><a href="">경상남도</a></li>
							<li class="jejudo"><a href="">제주</a></li>
						</ul>

					</div>
					<div class="maps_menu">
						<h1>가고 싶은 여행지 선택</h1>
						<ul>
							<li><a href=""> 서울 </a></li>
							<li><a href=""> 인천 </a></li>
							<li><a href=""> 부산 </a></li>
						</ul>
						<ul>
							<li><a href=""> 대전 </a></li>
							<li><a href=""> 대구 </a></li>
							<li><a href=""> 울산 </a></li>
						</ul>
						<ul>
							<li><a href=""> 광주 </a></li>
							<li><a href=""> 경기도 </a></li>
							<li><a href=""> 강원도 </a></li>
						</ul>
						<ul>
							<li><a href=""> 충청북도 </a></li>
							<li><a href=""> 충청남도 </a></li>
							<li><a href=""> 전라북도 </a></li>
						</ul>
						<ul>
							<li><a href=""> 전라남도 </a></li>
							<li><a href=""> 경상북도 </a></li>
							<li><a href=""> 경상남도 </a></li>
						</ul>
						<ul>
							<li><a href=""> 제주도 </a></li>
						</ul>
						<div class="recommend_ai">
							<a href="">
								<p>
									여행지 고민 ? NO<br>AI 추천 받자
								</p> <img src="${pageContext.request.contextPath}/resources/img/recommend_ai.png">
						</div>
						</a>
					</div>
				</div>
			</div>

		</div>

		</div>
	</section>


	<section class="content_zone content_zone3">
		<div class="content_zone_wrap">
			<div class="image_slide_container">
				<div class="slide">
					<a href="#"> <img src="${pageContext.request.contextPath}/resources/img/banner_img1.png" alt="Slide 1">
					</a>
				</div>
				<div class="slide">
					<a href="#"> <img src="${pageContext.request.contextPath}/resources/img/banner_img2.png" alt="Slide 2">
					</a>
				</div>
				<div class="slide">
					<a href="#"> <img src="${pageContext.request.contextPath}/resources/img/banner_img3.png" alt="Slide 3">
					</a>
				</div>
				<div class="slide">
					<a href="#"> <img src="${pageContext.request.contextPath}/resources/img/banner_img4.png" alt="Slide 4">
					</a>
				</div>
			</div>
		</div>
	</section>

	<section class="content_zone content_zone4">
		<div class="content_zone_wrap">

			<div class="image_slide_container">
				<div class="image_slide_title">
					<h1>볼거리 TOP 10</h1>
				</div>
				<div class="slide_group">
					<div class="slide_item">
						<a href="#">
							<div class="image_wrapper">
								<!-- Added wrapper div -->
								<img src="${pageContext.request.contextPath}/resources/img/content_img1.jfif" alt="Item 1">
							</div>
							<h1>신난다! 재미난다! 에버랜드</h1>
							<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
						</a>
					</div>
					<div class="slide_item">
						<a href="#">
							<div class="image_wrapper">
								<!-- Added wrapper div -->
								<img src="${pageContext.request.contextPath}/resources/img/content_img2.jfif" alt="Item 2">
							</div>
							<h1>극도의 스릴과 공포를 느끼자!</h1>
							<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
						</a>
					</div>
					<div class="slide_item">
						<a href="#">
							<div class="image_wrapper">
								<!-- Added wrapper div -->
								<img src="${pageContext.request.contextPath}/resources/img/content_img3.jfif" alt="Item 3">
							</div>
							<h1>여름 밤에는 역시 폭죽이지!</h1>
							<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
						</a>
					</div>
					<div class="slide_item">
						<a href="#">
							<div class="image_wrapper">
								<!-- Added wrapper div -->
								<img src="${pageContext.request.contextPath}/resources/img/content_img4.jfif" alt="Item 4">
							</div>
							<h1>무더운 여름 시원하게 날려버리자</h1>
							<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
						</a>
					</div>
					<div class="slide_item">
						<a href="#">
							<div class="image_wrapper">
								<!-- Added wrapper div -->
								<img src="${pageContext.request.contextPath}/resources/img/content_img5.jfif" alt="Item 5">
							</div>
							<h1>산뜻한 바람과 나무를 느끼는 하루</h1>
							<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
						</a>
					</div>
					<div class="slide_item">
						<a href="#">
							<div class="image_wrapper">
								<!-- Added wrapper div -->
								<img src="${pageContext.request.contextPath}/resources/img/content_img6.jfif" alt="Item 6">
							</div>
							<h1>헨텔 스텐젤 여름 특가 할인 중</h1>
							<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="content_zone content_zone5">
		<div class="content_zone_wrap">

			<div class="image_slide_container">
				<div class="image_slide_title">
					<h1>즐길거리 TOP 10</h1>
				</div>
				<div class="slide_group">
					<div class="slide_item">
						<a href="#">
							<div class="image_wrapper">
								<!-- Added wrapper div -->
								<img src="${pageContext.request.contextPath}/resources/img/hotel_img1.jpg" alt="Item 1">
							</div>
							<h1>신난다! 재미난다! 에버랜드</h1>
							<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
						</a>
					</div>
					<div class="slide_item">
						<a href="#">
							<div class="image_wrapper">
								<!-- Added wrapper div -->
								<img src="${pageContext.request.contextPath}/resources/img/hotel_img2.jpg" alt="Item 2">
							</div>
							<h1>극도의 스릴과 공포를 느끼자!</h1>
							<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
						</a>
					</div>
					<div class="slide_item">
						<a href="#">
							<div class="image_wrapper">
								<!-- Added wrapper div -->
								<img src="${pageContext.request.contextPath}/resources/img/hotel_img3.jpg" alt="Item 3">
							</div>
							<h1>여름 밤에는 역시 폭죽이지!</h1>
							<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
						</a>
					</div>
					<div class="slide_item">
						<a href="#">
							<div class="image_wrapper">
								<!-- Added wrapper div -->
								<img src="${pageContext.request.contextPath}/resources/img/hotel_img4.jpg" alt="Item 4">
							</div>
							<h1>무더운 여름 시원하게 날려버리자</h1>
							<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
						</a>
					</div>
					<div class="slide_item">
						<a href="#">
							<div class="image_wrapper">
								<!-- Added wrapper div -->
								<img src="${pageContext.request.contextPath}/resources/img/hotel_img5.jpg" alt="Item 5">
							</div>
							<h1>산뜻한 바람과 나무를 느끼는 하루</h1>
							<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
						</a>
					</div>
					<div class="slide_item">
						<a href="#">
							<div class="image_wrapper">
								<!-- Added wrapper div -->
								<img src="${pageContext.request.contextPath}/resources/img/hotel_img6.jpg" alt="Item 6">
							</div>
							<h1>헨텔 스텐젤 여름 특가 할인 중</h1>
							<p>상품관련한 상세내용이 해당란에 입력됩니다. 상품관련한 상세내용이 해당란에 입력됩니다.</p>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>
	
	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>
	
	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>

</body>
</html>