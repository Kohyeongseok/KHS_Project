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
	padding: 0;
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
input[type="checkbox"] {
    display: none;
}

/* 컨텐츠존 */
.region_select_container{
	z-index: 500;
	position: fixed;
	top: 0;
	width: 100%;
	display: flex;
	justify-content: center;
}
.region_select{
	display: none;
	width: 100%;
	max-width: 57rem;
	height: 100vh;
}
.region_select_bg{
	width: 100%;
	height: 100%;
	position: absolute;
	z-index: 100;
}
.region_select.region_active{
	display: block;
	top: 0;
	left: 0;
	background-color: rgba(0, 0, 0, 0.3);
}
.region_select_box{
	width: 70%;
	max-width: 40rem;
	height: 100vh;
	position: absolute;
	z-index: 101;
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	box-sizing: border-box;
}
.region_select_box_close_button_container{
	width: 100%;
	max-width: 40rem;
	padding: 1rem;
	box-sizing: border-box;
}
.region_select_box_close_button img{
	width: 2rem;
	cursor: pointer;
}
.region_select_box_title{
	width: 100%;
	max-width: 40rem;
	display: flex;
	justify-content: center;
	align-items: center;
}
.region_select_box_list_container{
	padding: 1rem 10% 1rem 10%;
	width: 100%;
	max-width: 40rem;
	display: grid;
	grid-template-columns: repeat(3, 1fr); /* 기본적으로 3열로 나열 */
	gap: 10px; /* 각 아이템 사이의 간격을 설정 */
	justify-content: center;
	align-items: center;
	box-sizing: border-box;
}
.region_select_box_list {
	color: black;
    border: 1px solid #ccc;
    border-radius: 0.5rem;
    padding: 1rem;
    text-align: center;
    box-sizing: border-box;
    cursor: pointer;
}
/* 창 크기가 작아지면 2열로 변경 */
@media (max-width: 768px) {
    .region_select_box_list_container {
        grid-template-columns: repeat(2, 1fr); /* 2열로 나열 */
    }
}
/* 컨텐츠존 */
.category_select_container{
	z-index: 500;
	position: fixed;
	top: 0;
	width: 100%;
	display: flex;
	justify-content: center;
}
.category_select{
	display: none;
	width: 100%;
	max-width: 57rem;
	height: 100vh;
}
.category_select_bg{
	width: 100%;
	height: 100%;
	position: absolute;
	z-index: 100;
}
.category_select.category_active{
	display: block;
	top: 0;
	left: 0;
	background-color: rgba(0, 0, 0, 0.3);
}
.category_select_box{
	width: 70%;
	max-width: 40rem;
	height: 100vh;
	position: absolute;
	z-index: 101;
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	box-sizing: border-box;
}
.category_select_box_close_button_container{
	width: 100%;
	max-width: 40rem;
	padding: 1rem;
	box-sizing: border-box;
}
.category_select_box_close_button img{
	width: 2rem;
	cursor: pointer;
}
.category_select_box_title{
	width: 100%;
	max-width: 40rem;
	display: flex;
	justify-content: center;
	align-items: center;
}
.category_select_box_list_container{
	color: black;
	padding: 1rem 10% 1rem 10%;
	width: 100%;
	max-width: 40rem;
	display: grid;
	grid-template-columns: repeat(3, 1fr); /* 기본적으로 3열로 나열 */
	justify-content: center;
	align-items: center;
	box-sizing: border-box;
}
.category_select_box_list {
    border: 1px solid #ccc; /* 테두리 추가 */
    padding: 1rem;
    text-align: center;
    box-sizing: border-box; /* 패딩과 보더를 포함하도록 */
    cursor: pointer;
}
/* 창 크기가 작아지면 2열로 변경 */
@media (max-width: 768px) {
    .category_select_box_list_container {
        grid-template-columns: repeat(2, 1fr); /* 2열로 나열 */
    }
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
	$(function(){
		// '전체' 체크박스 클릭 시
	    $("#category_allCheck").on("change", function() {
	        var isChecked = this.checked; // '전체' 체크박스의 체크 상태
	        $(".category_checkbox").prop("checked", isChecked); // 모든 'category' 체크박스 상태 설정
	    });

	    // 개별 'category' 체크박스 클릭 시
	    $(".category_checkbox").on("change", function() {
	        var allChecked = $(".category_checkbox").length === $(".category_checkbox:checked").length;
	        $("#category_allCheck").prop("checked", allChecked); // 모든 'category' 체크박스가 체크되었는지 확인
	    });
	});
</script>
</head>

<body>
	<div class="region_select_container">
		<div class="region_select"  id="region_select">
			<div class="region_select_bg"></div>
			<div class="region_select_box">
				<div class="region_select_box_close_button_container">
					<div class="region_select_box_close_button">
						<img src="${pageContext.request.contextPath}/resources/imgMw/iconBack.png">
					</div>
				</div>
				<div class="region_select_box_title">
					<h2>지역 선택</h2>
				</div>
				<div class="region_select_box_list_container">
					<a href="/mw/bolgguriSearch"><div class="region_select_box_list">전체</div></a>
					<c:forEach var="mwBolgguriRegionDto" items="${mwBolgguriRegionDtos }">
						<a href="/mw/bolgguriSearch?areaCode=${mwBolgguriRegionDto.areaCode }">
							<div class="region_select_box_list">${mwBolgguriRegionDto.name }</div>
						</a>	
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<div class="category_select_container">
	    <div class="category_select"  id="category_select">
	        <div class="category_select_bg"></div>
	        <div class="category_select_box">
	            <div class="category_select_box_close_button_container">
	                <div class="category_select_box_close_button">
	                    <img src="${pageContext.request.contextPath}/resources/imgMw/iconBack.png">
	                </div>
	            </div>
	            <div class="category_select_box_title">
	                <h2>카테고리 선택</h2>
	            </div>
				<div class="region_select_box_list_container">
					<form action="/mw/bolgguriSearch" method="get">
						<input type="submit" value="검색"><br>
						<input type="hidden" name="areaCode" value="${areaCode }">
						<label>
					        <input type="checkbox" value="전체" id="category_allCheck">
					        <div class="region_select_box_list">전체</div>
					    </label>
					    <c:forEach var="mwBolgguriCategoryDto" items="${mwBolgguriCategoryDtos }">
					    	<label>
					    		<input type="checkbox" name="category" value="${mwBolgguriCategoryDto.code }" class="category_checkbox">
					    		<div class="category_select_box_list">${mwBolgguriCategoryDto.name }</div>
					    	</label>
					    </c:forEach>
				    </form>
				</div>
	        </div>
	    </div>
	</div>
</body>
</html>