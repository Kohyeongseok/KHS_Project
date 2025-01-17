<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<!-- 별점 이미지 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap')
	;

/* 성훈형 css */
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
	background-image:
		url(${pageContext.request.contextPath}/resources/img/maps.png);
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
/* 여기까지 */
.header .wrap {
	display: flex;
	align-items: center;
	width: 100%;
	justify-content: space-between;
}

.header .logo {
	margin-right: 20px;
	margin-top: -10px;
}

.header .logo_link {
	display: inline-block;
	background: url('<c:url value="/resources/logo.png"/>');
	background-position: 0 0;
	width: 144px;
	height: 54px;
	font-size: 0;
	line-height: 0;
	background-size: cover;
}

.header nav {
	flex: 1;
}

.header .language, .header .lnb_search {
	margin-left: 20px;
}

.language .gnb_site {
	position: relative;
	display: inline-block;
}

.language .gnb_site .list {
	display: none;
	position: absolute;
	top: 100%;
	left: 0;
	background-color: #fff;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	list-style: none;
	padding: 10px 0;
	margin: 0;
	z-index: 1000;
}

.language .gnb_site .list li {
	padding: 10px 20px;
}

.language .gnb_site .list li a {
	color: #333;
	text-decoration: none;
}

.language .gnb_site .list li a:hover {
	background-color: #f0f0f0;
}

.lnb_search {
	display: flex;
	align-items: center;
}

.search_wrap {
	display: flex;
	align-items: center;
}

.search_wrap input[type="search"] {
	width: 200px;
	padding: 5px 10px;
	margin-right: 5px;
}

.search_wrap input[type="button"] {
	padding: 5px 10px;
	cursor: pointer;
}

.banner_visual {
	position: relative;
	height: 300px;
	background: url('<c:url value="/resources/bannerImg.jpg"/>') no-repeat
		center center;
}

.banner_visual .title {
	padding-top: 110px;
	font-size: 50px;
	text-align: center;
	color: #fff;
}

.menu {
	display: flex;
	justify-content: space-between;
	padding: 10px 0;
	width: 100%;
}

.menu>li {
	position: relative;
	list-style: none;
	flex: 1;
	text-align: center;
}

.menu>li>a {
	text-decoration: none;
	padding: 10px 20px;
	display: block;
	color: #333;
	font-size: 1.5em;
}

.menu>li:hover>ul {
	display: block;
}

.menu>li>ul {
	display: none;
	position: absolute;
	top: 100%;
	left: 0;
	background-color: #477c9d;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	list-style: none;
	padding: 10px 0;
	margin: 0;
	z-index: 1000;
	width: 100%;
}

.menu>li>ul>li>a {
	padding: 10px 20px;
	display: block;
	color: #FFFFFF;
	text-decoration: none;
}

.menu>li>ul>li>a:hover {
	background-color: #477c9d;
}

div {
	display: block;
	unicode-bidi: isolate;
}

.view {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	min-height: calc(100vh - 300px);
}

.view .view-header_intro {
	width: 45%;
	padding: 25px 0;
}

.view .view-header {
	padding: 40px 0 45px;
	/* 	border-top: 3px solid #333;
	border-bottom: 1px solid #e0e0e0; */
	text-align: center;
}

.view .subject {
	font-size: 45px;
	text-align: center;
	line-height: 1.2;
	letter-spacing: -3px;
	font-weight: 400;
}

.view location {
	margin-top: 23px;
	text-align: center;
}

.view .location .list {
	text-align: center;
}

ol, ul, ul li {
	list-style: none;
}

.view .location .list .title {
	font-weight: 500;
	font-weight: bold;
}

.view .location .list .text {
	font-weight: 300;
}

.view .tag {
	margin-top: 8px;
	font-weight: 300;
	text-align: center;
	color: #999;
}

.view .photos {
	position: relative;
	width: 820px;
	height: 544px;
	margin: 55px auto 0;
}

.slick-slider {
	position: relative;
	height: 100%;
}

.view .photos .slick-arrow.slick-prev {
	left: 15px;
}

.view .photos .slick-arrow {
	position: absolute;
	top: calc(50% - 20px);
	z-index: 10;
	width: 40px;
	height: 40px;
	background-color: #414344;
	border-radius: 50%;
}

.slick-list {
	overflow: hidden;
	position: relative;
}

element.style {
	opacity: 1;
	width: 7380px;
	transform: translate3d(-3280px, 0px, 0px);
}

.slick-track {
	position: relative;
	top: 0;
	left: 0;
	margin-right: auto;
	margin-left: auto;
}

element.style {
	width: 820px;
}

.view .photos .item {
	text-align: center;
	line-height: 544px;
	font-size: 0;
}

.view .photos .item img {
	vertical-align: middle;
}

.container {
	position: relative;
}

.mySlides {
	display: none;
}

.cursor {
	cursor: pointer;
}

.container .prev, .container .next {
	cursor: pointer;
	position: absolute;
	top: 40%;
	width: auto;
	padding: 16px;
	margin-top: -50px;
	color: white;
	font-weight: bold;
	font-size: 20px;
	border-radius: 0 3px 3px 0;
	user-select: none;
	-webkit-user-select: none;
}

.next {
	right: 0;
	border-radius: 3px 0 0 3px;
	right: 7.5%;
}

.prev {
	left: 7.5%;
}

.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

.numbertext {
	color: #f2f2f2;
	font-size: 14px;
	padding: 8px 12px;
	margin: 14px 12px;
	position: absolute;
	top: 0;
	background-color: #353535;
}

.caption-container {
	text-align: center;
	background-color: #222;
	padding: 2px 16px;
	color: white;
}

.demo {
	opacity: 0.6;
}

.active, .demo:hover {
	opacity: 1;
}

.view .view_tab {
	display: flex;
	margin-top: 62px;
	border-bottom: 1px solid #858585;
}

body {
	position: relative;
	min-width: 1330px;
	background: #fff;
	font-size: 16px;
	line-height: 1.6;
	color: #333;
	letter-spacing: 0.2px;
	-webkit-text-size-adjust: none;
}

article {
	display: flex; /* Flexbox 사용 */
	justify-content: center; /* 수평 가운데 정렬 */
	align-items: center; /* 수직 가운데 정렬 */
	height: 100%; /* 부모 요소 높이에 맞게 설정 */
}

article p {
	margin: 0 auto; /* 수평 가운데 정렬 */
	text-align: left; /* 텍스트를 왼쪽 정렬 */
}

.facilities {
	display: flex; /* Flexbox 사용 */
	gap: 10px; /* 이미지 사이에 여백 추가 (선택 사항) */
}

.view .h3 {
	margin-bottom: 35px;
	font-weight: 500;
	font-size: 30px;
	line-height: 1.2;
}

.view .section {
	position: relative;
	margin-top: 70px;
	width: 45%;
}

.table th {
	text-align: left;
	font-weight: 500;
}

.table td, .table th {
	padding: 11px 40px 12px;
	border-top: 1px solid #e0e1e3;
	font-size: 18px;
	vertical-align: top;
}

.table tr:nth-child(even) td, .table tr:nth-child(even) th {
	background: #f9f9f9;
}

.table {
	position: relative;
	width: 100%;
	margin: 0;
	border-collapse: separate;
	border-top: 1px solid #969696;
	border-bottom: 1px solid #969696;
}

.view .map_wrap {
	display: flex;
}

.view .map {
	/*     flex: 1 0; */
	width: 378px;
	height: 300px;
	border: 1px solid #e0e0e0;
}

.map_container {
	display: flex; /* Flexbox를 사용하여 가로 배치 */
	justify-content: space-between; /* 두 요소 사이의 간격을 균등하게 조정 */
	gap: 20px; /* 요소 사이의 간격 추가 (선택 사항) */
	width: 780px;
}


.map_wrap {
	flex: 1; /* map_wrap이 가능한 공간을 차지 */
}

.near_wrap {
	flex: 1; /* near_wrap이 가능한 공간을 차지 */
	max-width: 400px; /* near_wrap의 최대 너비 설정 */
	margin-top: 68px;
}
/* 마지막 요소의 margin 제거 */
.previous_div:last-child, .near_wrap:last-child {
	margin-right: 0;
}

/* .map_wrap { */
/* display: flex; */
/* justify-content: center; /* 수평 중앙 정렬 */
* /
	/* align-items: center; /* 수직 중앙 정렬 */ * /
	/* margin-top: 20px; /* 위쪽 여백 추가 */ * /
	/* }  */
	/* 커스텀 오버레이  */   
.wrap {
	position: absolute;
	left: 0;
	bottom: 40px;
	width: 288px;
	height: 132px;
	margin-left: -144px;
	text-align: left;
	overflow: hidden;
	font-size: 12px;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	line-height: 1.5;
}

.wrap * {
	padding: 0;
	margin: 0;
}

.wrap .info {
	width: 286px;
	height: 120px;
	border-radius: 5px;
	border-bottom: 2px solid #ccc;
	border-right: 1px solid #ccc;
	overflow: hidden;
	background: #fff;
}

.wrap .info:nth-child(1) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.info .title {
	padding: 5px 0 0 10px;
	height: 30px;
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-size: 18px;
	font-weight: bold;
}

.info .close {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #888;
	width: 17px;
	height: 17px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
}

.info .close:hover {
	cursor: pointer;
}

.info .body {
	position: relative;
	overflow: hidden;
}

.info .desc {
	position: relative;
	margin: 13px 0 0 90px;
	height: 75px;
}

.desc .jibun {
	font-size: 11px;
	color: #888;
	margin-top: -2px;
}

.info .img {
	position: absolute;
	top: 6px;
	left: 5px;
	width: 73px;
	height: 71px;
	border: 1px solid #ddd;
	color: #888;
	overflow: hidden;
}

.info:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: 0;
	width: 22px;
	height: 12px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.info .link {
	color: #5085BB;
}

.view .near_wrap {
	/* flex: 1 0 400px; */
	max-width: 400px;
	margin-left: 30px;
}

.view .near_tab {
	display: flex;
	border-bottom: 1px solid #858585;
}

.view .near_tab .btn {
	flex: 1 0;
	padding: 0 15px;
	text-align: center;
}

.view .near_tab .btn.active span {
	color: #267bca;
	font-weight: 500;
}

.view .near_wrap .tab_body.active {
	display: block;
}

.blind {
	overflow: hidden;
	z-index: -1;
	border: 0;
	width: 1px;
	height: 1px;
	clip: rect(1px, 1px, 1px, 1px);
	clip-path: inset(50%);
}

.view .near_list {
	margin-top: 12px;
}

.view .near_list .item {
	display: flex;
	padding: 7px 0;
	border-bottom: 1px solid #e0e0e0;
}

.view .near_list .cont {
	margin-left: 12px;
	max-width: 246px;
}

.view .near_list .near_subject {
	position: relative;
	overflow: hidden;
	font-size: 18px;
	font-weight: 500;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.view .near_list .near_tel {
	margin-top: 2px;
	font-weight: 300;
}

.view .near_list .near_more.active {
	background-color: #267bca;
}

.view .near_list .near_more {
	height: 30px;
	padding: 0 18px;
	line-height: 28px;
	margin-top: 14px;
	background-color: #737373;
	color: #fff;
}

.view .h3 {
	margin-bottom: 35px;
	font-weight: 500;
	font-size: 30px;
	line-height: 1.2;
}

.view .review_guide {
	position: absolute;
	right: 0;
	top: 6px;
	padding-left: 10px;
	color: #666;
	text-align: center;
	font-weight: 300;
}

/* 별점 */
.heading {
	font-size: 25px;
	margin-right: 25px;
}

.fa {
	font-size: 25px;
}

.checked {
	color: orange;
}
/* 페이징 넘버링(주변관광지) */
/* 페이징 컨트롤을 감싸는 컨테이너 스타일 */
#ul_sgpl_pagination {
	display: flex;
	justify-content: center; /* 전체 페이징을 가운데로 정렬 */
	align-items: center;
	margin: 20px 0; /* 위아래 여백 */
}

/* 이전 및 다음 버튼 스타일 */
#ul_sgpl_pagination .page_control .page_link {
	padding: 5px 10px;
	margin: 0 5px;
	background-color: #267bca;
	color: #fff;
	text-decoration: none;
	border-radius: 3px;
	transition: background-color 0.3s ease;
	cursor: pointer;
	top: 93%;
}


#ul_sgpl_pagination .page_control .page_link[style*="cursor: default;"]
	{
	background-color: #ddd; /* 비활성화 상태일 때의 배경색 */
	cursor: default;
}

#ul_sgpl_pagination .page_control .page_link:hover {
	background-color: #1d5a8d; /* 마우스 오버 시 배경색 */
}

/* 페이지 번호 그룹 스타일 */
#ul_sgpl_pagination .page_link_group {
	display: flex;
	align-items: center;
}

/* 페이지 번호 링크 스타일 */
#ul_sgpl_pagination .page_link_group a {
	padding: 5px 10px;
	margin: 0 2px;
	background-color: #f0f0f0;
	color: #333;
	text-decoration: none;
	border-radius: 3px;
	transition: background-color 0.3s ease;
	cursor: pointer;
}

#ul_sgpl_pagination .page_link_group a.active {
	background-color: #267bca; /* 현재 페이지 배경색 */
	color: #fff;
}

#ul_sgpl_pagination .page_link_group a:hover {
	background-color: #e0e0e0;
}
</style>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8db77e63fd9be76bae9b93b361608a25"></script>
<!-- 지도 스크립트 -->
<script>
//사진 슬라이드
document.addEventListener('DOMContentLoaded', function() {
    var langBtn = document.querySelector('.gnb_site .btn');
    var langList = document.querySelector('.gnb_site .list');

    langBtn.addEventListener('click', function() {
        if (langList.style.display === 'block') {
            langList.style.display = 'none';
        } else {
            langList.style.display = 'block';
        }
    });

    document.addEventListener('click', function(event) {
        if (!langBtn.contains(event.target) && !langList.contains(event.target)) {
            langList.style.display = 'none';
        }
    });
});
let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("demo");
  let captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}
 
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<section class="content_zone content_zone1">
		<%-- <div class="content_zone_wrap">
			<div class="content_menu">
				<div class="menu_item menu_item1">
					<div class="menu_container">
						<a href="">
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
						<a href="">
							<div class="menu_icon">
								<img src="${pageContext.request.contextPath}/resources/img/help_icon.png" alt="고객센터">
							</div>
							<p>고객센터</p>
						</a>
					</div>
				</div>
			</div>
		</div> --%>
	</section>
	<!-- <header class="header">
		<div class="wrap">
			<h1 class="logo">
				<a href="/" class="logo_link">방방곡곡</a>
			</h1>
			<nav>
				<ul class="menu">
					<li><a href="/thmtour/rcmdtour/list.do">테마여행</a>
						<ul>
							<li><a href="/thmtour/rcmdtour/list.do">추천여행 30선</a></li>
							<li><a href="/thmtour/thmtour/list.do">테마별 여행</a></li>
							<li><a href="/thmtour/vrtour/list.do">VR투어</a></li>
							<li><a href="/tourrsve/wellness/html.do">웰니스관광</a></li>
							<li><a href="/thmtour/cardnews/list.do">카드뉴스</a></li>
						</ul></li>
					<li><a href="/ssst/ssst/list.do?pageNm=sgpl">여행지</a>
						<ul>
							<li><a href="/ssst/ssst/list.do?pageNm=sgpl">관광지</a></li>
							<li><a href="/ssst/ssst/list.do?pageNm=nature">자연</a></li>
							<li><a href="/ssst/ssst/list.do?pageNm=leport">레포츠</a></li>
							<li><a href="/ssst/ssst/list.do?pageNm=shpp">쇼핑</a></li>
							<li><a href="/ssst/ssst/list.do?pageNm=food">음식</a></li>
							<li><a href="/ssst/ssst/list.do?pageNm=stayng">숙박</a></li>
							<li><a href="/ssst/ssst/list.do?pageNm=fstv">축제</a></li>
						</ul></li>
					<li><a href="/areatour/areatour/list.do?pageCd=1">지역별여행</a>
						<ul>
							<li><a href="/areatour/areatour/list.do?pageCd=1">개항장 ·
									월미도</a></li>
							<li><a href="/areatour/areatour/list.do?pageCd=2">송도 ·
									영종도</a></li>
							<li><a href="/areatour/areatour/list.do?pageCd=3">강화도(교동도,
									석모도)</a></li>
							<li><a href="/areatour/areatour/list.do?pageCd=4">경인아라뱃길
									· 청라</a></li>
							<li><a href="/areatour/areatour/list.do?pageCd=5">원도심</a></li>
							<li><a href="/areatour/areatour/list.do?pageCd=6">인천의 섬</a></li>
						</ul></li>
					<li><a href="/tourrsve/metrip/list.do">여행준비</a>
						<ul>
							<li><a href="/tourrsve/metrip/list.do">나만의 인천 여행</a></li>
							<li><a href="/tourrsve/gdbook/list.do">가이드북&지도</a></li>
							<li><a href="https://culture-tour.incheon.go.kr/ctgMain.do"
								target="_blank">문화관광해설사</a></li>
							<li><a href="https://citytour.ito.or.kr" target="_blank">인천시티투어</a></li>
							<li><a href="https://m.incheoneasy.com" target="_blank">인천e지</a></li>
						</ul></li>
					<li><a href="/tourinfo/notice/list.do">여행정보</a>
						<ul>
							<li><a href="/tourinfo/notice/list.do">공지사항</a></li>
							<li><a href="/tourinfo/event/list.do">이벤트</a></li>
							<li><a href="/tourinfo/news/list.do">새소식</a></li>
							<li><a href="/tourinfo/traffic/html.do">교통</a></li>
							<li><a href="/tourinfo/gallery/list.do">인천여행 갤러리</a></li>
							<li><a href="/tourinfo/trsmic/html.do">관광안내소</a></li>
							<li><a
								href="https://culture-tour.incheon.go.kr/Lgin/monLoginUsr.do"
								target="_blank">관광모니터</a></li>
							<li><a href="/tourinfo/tourgoods/html.do">관광기념품</a></li>
							<li><a href="https://www.incheon.go.kr/citybrand/CB020904"
								target="_blank">도시브랜드기념품</a></li>
						</ul></li>
				</ul>
			</nav>
			<div class="language">
				<div class="gnb_site">
					<button type="button" class="btn">Language</button>
					<ul class="list">
						<li><a href="/korea">한국어</a></li>
						<li><a href="/english">English</a></li>
						<li><a href="/japanese">日本語</a></li>
						<li><a href="/chinese">中文</a></li>
					</ul>
				</div>
			</div>
			<div class="lnb_search">
				<div class="search_wrap">
					<input type="search" placeholder="Search..."> <input
						type="button" value="Search">
				</div>
			</div>
		</div>
	</header> -->
	<!-- 	<div class="banner_visual">
		<div class="title">여행지</div>
	</div> -->
	<div class="view">
		<div class="view-header view-header_intro">
			<h2 class="subject">
				<span>아라마루 전망대</span>
			</h2>
			<div class="location">
				<ul class="list">
					<li><strong class="title">주소</strong> <span class="text">인천
							계양구 아라로 228 경인아라뱃길 아라마루</span> <strong class="title">전화번호</strong> <span
						class="text">1899-3650</span></li>
				</ul>
			</div>
		</div>
		<div class="container">

			<div class="mySlides"
				style="width: 85%; margin: 0 auto; display: block;">
				<div class="numbertext">1 / 7</div>
				<img
					src="${pageContext.request.contextPath}/resources/aramaru/aramaru1.jpg"
					style="width: 100%">
			</div>

			<div class="mySlides"
				style="width: 85%; margin: 0 auto; display: none;">
				<div class="numbertext">2 / 7</div>
				<img
					src="${pageContext.request.contextPath}/resources/aramaru/aramaru2.jpg"
					style="width: 100%">
			</div>

			<div class="mySlides"
				style="width: 85%; margin: 0 auto; display: none;">
				<div class="numbertext">3 / 7</div>
				<img
					src="${pageContext.request.contextPath}/resources/aramaru/aramaru3.jpg"
					style="width: 100%">
			</div>

			<div class="mySlides"
				style="width: 85%; margin: 0 auto; display: none;">
				<div class="numbertext">4 / 7</div>
				<img
					src="${pageContext.request.contextPath}/resources/aramaru/aramaru4.jpg"
					style="width: 100%">
			</div>

			<div class="mySlides"
				style="width: 85%; margin: 0 auto; display: none;">
				<div class="numbertext">5 / 7</div>
				<img
					src="${pageContext.request.contextPath}/resources/aramaru/aramaru5.jpg"
					style="width: 100%">
			</div>

			<div class="mySlides"
				style="width: 85%; margin: 0 auto; display: none;">
				<div class="numbertext">6 / 7</div>
				<img
					src="${pageContext.request.contextPath}/resources/aramaru/aramaru6.jpg"
					style="width: 100%">
			</div>

			<div class="mySlides"
				style="width: 85%; margin: 0 auto; display: none;">
				<div class="numbertext">7 / 7</div>
				<img
					src="${pageContext.request.contextPath}/resources/aramaru/aramaru7.jpg"
					style="width: 100%">
			</div>
			<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
				onclick="plusSlides(1)">&#10095;</a>

		</div>
		<div class="view_tab">
			<a href="#intro" class="link"><span>소개</span></a> <a href="#guide"
				class="link"><span>이용정보</span></a> <a href="#tourList" class="link"><span>주변관광지</span></a>
			<a href="#review" class="link"><span>리뷰</span></a>
		</div>
		<div id="intro" class="section">
			<h3 class="blind">관광지소개</h3>
			<div class="cont_wrap">
				<h3 class="h3">관광지 소개</h3>
				<article class="article">
					<p>소개글을 적어주세요소개글을 적어주세요소개글을 적어주세요소개글을 적어주세요 소개글을 적어주세요소개글을
						적어주세요소개글을 적어주세요소개글을 적어주세요 소개글을 적어주세요소개글을 적어주세요소개글을 적어주세요소개글을 적어주세요
						소개글을 적어주세요소개글을 적어주세요소개글을 적어주세요소개글을 적어주세요</p>
				</article>
			</div>
		</div>
		<div id="guide" class="section">
			<h3 class="h3">이용정보</h3>
			<table class="table">
				<caption>이용정보 홈페이지주소, 전화번호, 이용시간, 휴무일, 입장료/이용료, 화장실유무, 주차
					안내, 애완동물 동반가능, 특이사항 정보안내</caption>
				<colgroup>
					<col style="width: 230px;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">홈페이지주소</th>
						<td><a href="주소" target="blank" title="새창:아라마루전망대  홈페이지로 이동">www.gyeyang.go.kr</a>
						</td>
					</tr>
					<tr>
						<th scope="row">전화번호</th>
						<td>1899-3650</td>
					</tr>
					<tr>
						<th scope="row">이용시간</th>
						<td>09:00~22:00</td>
					</tr>
					<tr>
						<th scope="row">휴무일</th>
						<td>연중무휴</td>
					</tr>
					<tr>
						<th scope="row">입장료/이용료</th>
						<td>무료</td>
					</tr>
					<tr>
						<th scope="row">화장실 유무</th>
						<td>없음</td>
					</tr>
					<tr>
						<th scope="row">주차 안내</th>
						<td>있음(무료)</td>
					</tr>
					<tr>
						<th scope="row">애완동물 동반가능</th>
						<td>가능 (단, 개목줄 착용, 배설물 처리를 위한 비닐봉지 등을 구비한 이용객에 한하여 허용)</td>
					</tr>
					<tr>
						<th scope="row">특이사항</th>
						<td>*촬영 시 사전 예약 필요 필수(032-590-2243)</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="section">
			<h3 class="h3">무장애관광 정보</h3>
			<div class="facilities">
				<img src="${pageContext.request.contextPath}/resources/A101.png">
				<img src="${pageContext.request.contextPath}/resources/A103.png">
				<img src="${pageContext.request.contextPath}/resources/A107.png">
				<img src="${pageContext.request.contextPath}/resources/B101.png">
			</div>
			<table class="table margin_t_30">
				<caption>"무장애 관광정보로 주차여부, 접근로, 출입통로, 점자블록 정보 안내"</caption>
				<colgroup>
					<col style="width: 230px;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">주차여부</th>
						<td>장애인 전용 별도 주차칸 있음</td>
					</tr>
					<tr>
						<th scope="row">접근로</th>
						<td>없음(단, 차가 없어 휠체어 통과 가능함)</td>
					</tr>
					<tr>
						<th scope="row">출입통로</th>
						<td>주 출입구 휠체어 통과 가능</td>
					</tr>
					<tr>
						<th scope="row">점자블록</th>
						<td>점자블록 있음(아라마루 휴게소)</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="map_container">
			<div id="tourList" class="section">
				<h3 class="h3">주변 관광지</h3>
				<div class="map_wrap">
					<div id="map" class="map">
						<iframe src="https://t1.daumcdn.net/mapjsapi/images/bg_tile.png"
							width="380" height="300" style="border: 0;"></iframe>
					</div>
				</div>
				<script>
//지도 스크립트
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(37.5725415262184, 126.70052898315981), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
    {
        title: '아라폭포', 
        latlng: new kakao.maps.LatLng(37.5727558517572, 126.70513816038394),
        description: '폭포',
        imageSrc: 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png',	//마커이미지
        repImg: 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/thumnail.png',	//대표이미지
        directionsUrl: 'https://map.kakao.com/link/to/카카오,37.5727558517572,126.70513816038394',
        detailsUrl: 'https://www.kakaocorp.com/main'
    },
    {
        title: '계양산', 
        latlng: new kakao.maps.LatLng(37.5531778870478, 126.71455745813957),
        description: '계양산',
        imageSrc: 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png',	//마커이미지
        repImg: 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/thumnail.png',	//대표이미지
        directionsUrl: 'https://map.kakao.com/link/to/생태연못,37.5531778870478,126.71455745813957',
        detailsUrl: '#'
    },
    {
        title: '장미공원', 
        latlng: new kakao.maps.LatLng(37.54697393333093, 126.7124537048996),
        description: '장미공원',
        imageSrc: 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png',	//마커이미지
        repImg: 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/thumnail.png',	//대표이미지
        directionsUrl: 'https://map.kakao.com/link/to/텃밭,37.54697393333093,126.7124537048996',
        detailsUrl: '#'
    },
    {
        title: '아라마루',
        latlng: new kakao.maps.LatLng(37.57279824166641, 126.7005024853812),
        description: '아라마루',
        imageSrc: 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png',	//마커이미지
        repImg: 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/thumnail.png',	//대표이미지
        directionsUrl: 'https://map.kakao.com/link/to/근린공원,37.57279824166641,126.7005024853812',
        detailsUrl: '#'
    }
];

for (var i = 0; i < positions.length; i++) {
    var imageSize = new kakao.maps.Size(24, 35); 
    var markerImage = new kakao.maps.MarkerImage(positions[i].imageSrc, imageSize); 

    var marker = new kakao.maps.Marker({
        map: map,
        position: positions[i].latlng,
        title: positions[i].title,
        image: markerImage
    });
}
/*     var content = '<div class="wrap">' + 
                  '    <div class="info">' + 
                  '        <div class="title">' + 
                  '            ' + positions[i].title + 
                  '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
                  '        </div>' + 
                  '        <div class="body">' + 
                  '            <div class="img">' +
                  '                <img src="' + positions[i].repImg + '" width="73" height="70">' +
                  '           </div>' + 
                  '            <div class="desc">' + 
                  '                <div class="ellipsis">' + positions[i].description + '</div>' + 
                  '                <div><a href="' + positions[i].directionsUrl + '" target="_blank" class="link">길찾기</a></div>' + 
                  '                <div><a href="' + positions[i].detailsUrl + '" target="_blank" class="link">상세보기</a></div>' + 
                  '            </div>' + 
                  '        </div>' + 
                  '    </div>' +    
                  '</div>';

    var overlay = new kakao.maps.CustomOverlay({
        content: content,
        map: null, // 초기에는 오버레이를 표시하지 않도록 설정합니다
        position: marker.getPosition()       
    });

    // 마커를 클릭했을 때 해당 오버레이를 표시하고, 다른 오버레이는 닫음
    kakao.maps.event.addListener(marker, 'click', (function(overlay) {
        return function() {
            closeAllOverlays(); // 모든 오버레이를 닫는 함수 호출
            overlay.setMap(map);
        };
    })(overlay));

    // 현재 표시된 모든 오버레이를 닫는 함수
    function closeAllOverlays() {
        for (var j = 0; j < positions.length; j++) {
            window["overlay" + j].setMap(null);
        }
    }

    window["overlay" + i] = overlay; // 각 오버레이를 전역 객체에 저장
}

// 오버레이 닫기 버튼 클릭 시 호출될 함수
function closeOverlay() {
    closeAllOverlays(); // 모든 오버레이를 닫음
} */

//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
</script>
<!-- 페이징 넘버링 -->
<script>
document.addEventListener('DOMContentLoaded', function() {
    const itemsPerPage = 3;
    const contentData = [
        { photo: "사진1", subject: "아라폭포", tel: "1899-3650" },
        { photo: "사진1", subject: "아라폭포", tel: "1899-3650" },
        { photo: "사진1", subject: "아라폭포", tel: "1899-3650" },
        { photo: "사진1", subject: "아라폭포", tel: "1899-3650" }
    ];

    const totalPages = Math.ceil(contentData.length / itemsPerPage);
    let currentPage = 1;

    const contentArea = document.getElementById('ul_sgpl');
    const pageLinkGroup = document.querySelector('.page_link_group');

    // 이전 및 다음 버튼을 새로 위치한 구조에서 선택
    const prevButton = document.querySelector('.page_link_group .prev');
    const nextButton = document.querySelector('.page_link_group .next');

    function displayContent(currentPage) {
        contentArea.innerHTML = ''; 

        const start = (currentPage - 1) * itemsPerPage;
        const end = start + itemsPerPage;
        const pageItems = contentData.slice(start, end);

        pageItems.forEach(function(item) {
            const listItem = document.createElement('li');
            listItem.className = 'item';

            listItem.innerHTML += '<div class="near_photo">';
            listItem.innerHTML += '<img src="' + item.photo + '" alt="' + item.subject + '">';
            listItem.innerHTML += '</div></br>'; 
            
            listItem.innerHTML += '<div class="cont">';
            listItem.innerHTML += '<div class="near_subject">' + item.subject + '</div></br>';
            listItem.innerHTML += '<div class="near_tel">' + item.tel + '</div></br>';
            listItem.innerHTML += '<a href="javascript:void(0);" class="near_more active">자세히보기</a>';
            listItem.innerHTML += '</div>';
            
            contentArea.appendChild(listItem);
        });

    }

    function createPagination(currentPage, totalPages) {
        pageLinkGroup.innerHTML = ''; 

        // 이전 버튼 추가
        pageLinkGroup.appendChild(prevButton);

        for (let i = 1; i <= totalPages; i++) {
            const pageLink = document.createElement('a');
            pageLink.href = "javascript:void(0);";
            pageLink.className = 'page_link';
            pageLink.textContent = i;

            if (i === currentPage) {
                pageLink.classList.add('active'); 
                pageLink.setAttribute('title', `현재 ${i}페이지`);
            }

            pageLink.addEventListener('click', function() {
                currentPage = i;
                displayContent(currentPage);
                createPagination(currentPage, totalPages);
            });

            pageLinkGroup.appendChild(pageLink);
        }

        // 다음 버튼 추가
        pageLinkGroup.appendChild(nextButton);

        prevButton.style.cursor = currentPage > 1 ? 'pointer' : 'default';
        prevButton.style.visibility = currentPage > 1 ? 'visible' : 'hidden';
        prevButton.onclick = currentPage > 1 ? function() {
            currentPage--;
            displayContent(currentPage);
            createPagination(currentPage, totalPages);
        } : null;

        nextButton.style.cursor = currentPage < totalPages ? 'pointer' : 'default';
        nextButton.style.visibility = currentPage < totalPages ? 'visible' : 'hidden';
        nextButton.onclick = currentPage < totalPages ? function() {
            currentPage++;
            displayContent(currentPage);
            createPagination(currentPage, totalPages);
        } : null;
    }

    displayContent(currentPage);
    createPagination(currentPage, totalPages);
});

</script>

			</div>
			<div class="near_wrap">
				<div class="near_tab">
					<a href="#tabCts1" name="btn_cirm_sgpl_tab" typecd="12"
						class="btn active" title="선택됨"> <span>주변 관광지</span>
					</a> <a href="#tabCts2" name="btn_cirm_sgpl_tab" typecd="39"
						class="btn active"> <span>주변 음식점</span>
					</a> <a href="#tabCts3" name="btn_cirm_sgpl_tab" typecd="32"
						class="btn active"> <span>주변 숙박업소</span>
					</a>
				</div>
				<div id="tabCts1" class="tab_body active">
					<h4 class="blind">주변관광지</h4>
					<ul id="ul_sgpl" name="ul_sgpl" class="near_list">
						<li class="item">
							<div class="near_photo">
								<img src="사진">
							</div>
							<div class="cont">
								<div class="near_subject">아라폭포</div>
								<div class="near_tel">1899-3650</div>
								<a href="javascript:;" name="btn_cirm_sgpl_detail" typecd="12"
									class="near_more active">자세히보기</a>
							</div>
						</li>
						<li class="item">
							<div class="near_photo">
								<img src="사진">
							</div>
							<div class="cont">
								<div class="near_subject">아라폭포2</div>
								<div class="near_tel">1899-3650</div>
								<a href="javascript:;" name="btn_cirm_sgpl_detail" typecd="12"
									class="near_more active">자세히보기</a>
							</div>
						</li>
						<li class="item">
							<div class="near_photo">
								<img src="사진">
							</div>
							<div class="cont">
								<div class="near_subject">아라폭포3</div>
								<div class="near_tel">1899-3650</div>
								<a href="javascript:;" name="btn_cirm_sgpl_detail" typecd="12"
									class="near_more active">자세히보기</a>
							</div>
						</li>
						<li class="item">
							<div class="near_photo">
								<img src="사진">
							</div>
							<div class="cont">
								<div class="near_subject">아라폭포4</div>
								<div class="near_tel">1899-3650</div>
								<a href="javascript:;" name="btn_cirm_sgpl_detail" typecd="12"
									class="near_more active">자세히보기</a>
							</div>
						</li>
					</ul>
					<!-- 페이징 버튼 -->
					<div id="ul_sgpl_pagination" class="pagination small">
						<!-- <div class="page_control">
							<a href="javascript:void(0);" class="page_link prev"
								style="cursor: default;">이전</a>
						</div> -->
						<div class="page_link_group">
						<div class="page_control">
							<a href="javascript:void(0);" class="page_link prev"
								style="cursor: default;">이전</a>
						</div>
							<!-- 페이지 번호가 동적으로 생성됩니다 -->
							<div class="page_control">
							<a href="javascript:void(0);" class="page_link next"
								style="cursor: default;">다음</a>
						</div>
						</div>
<!-- 						<div class="page_control">
							<a href="javascript:void(0);" class="page_link next"
								style="cursor: default;">다음</a>
						</div> -->
					</div>
				</div>
			</div>
		</div>
		<div id="review" class="section">
			<h3>리뷰</h3>
			<!-- checked되면 별이 채워짐 -->
			<span class="heading">User Rating</span> <span
				class="fa fa-star checked"></span> <span class="fa fa-star checked"></span>
			<span class="fa fa-star checked"></span>
			<span class="fa fa-star checked"></span> <span class="fa fa-star "></span>
			<p>평균 별점과 리뷰개수</p>
			<hr style="border: 3px solid #f1f1f1">
			<!-- 이하 DB에서 리뷰들 가져오면 될듯 -->
		</div>

	</div>
	<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>

	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>

	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>
</body>
</html>