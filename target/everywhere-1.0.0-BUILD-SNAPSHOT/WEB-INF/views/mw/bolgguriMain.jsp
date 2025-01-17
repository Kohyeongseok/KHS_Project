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
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');

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

/*컨텐츠 section*/
.content_zone {
	width: 100%;
	display: flex;
	justify-content: center;
}

/* 컨텐츠1 검색존 */
.content_zone1 {
	margin-top: 5rem;
}

.content_zone1 .content_zone_wrap {
	padding: 1rem;
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}
.content_zone1_container{
	width: 100%;
	max-width: 45rem;
	display: flex;
	flex-direction: column;
	justify-content: center;
    align-items: center;
	border-radius: 0.8rem;
}

.content_zone1_container .searchRegion_title{
	font-size: 1.3rem;
}
.searchButton_container{
	padding: 1rem;
	width: 100%;
	display: flex;
	justify-content: center;
    align-items: center;
}
.searchButton{
	font-size: 1rem;
	font-weight: bold;
	background-color: #fff;
	border: 0.15rem solid #007BFF;
	border-radius: 0.5rem;
	width: 100%;
	padding: 1rem;
	cursor: pointer;
}
.searchButton:hover{
	background-color: #f2f2f2;
}
.searchButton:active{
	background-color: #e0e0e0;
}
.searchButton_wrap{
	display: flex;
	justify-content: space-between;
}
.searchButton_title_Container{
	display: flex;
	align-items: center;
}
.searchButton_title{
	margin-left: 1rem;
}

/* 컨텐츠2 카테고리존 */
.content_zone2 .content_zone_wrap{
	padding-top: 0.5rem;
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
	align-items: center;
}
.content_zone2_container{
	width: 100%;
	max-width: 50rem;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}
.content2_header_container{
	padding: 0.5rem 0;
	display: flex;
	justify-content: left;
	width: 100%;
}
.content2_header_container h3{
	padding: 0.2rem 0.5rem;
	color: black;

}
.content2_eventList_container{
	position: relative;
	width: 100%;
    max-width: 50rem;
}
.content2_eventList_scroll_container{
	border-top: solid black 2px;
	padding: 0.5rem 0;
	gap: 2rem;
	width: 100%;
	max-width: 50rem;
	display: flex;
	overflow: hidden;
    white-space: nowrap;
    scroll-behavior: smooth;
}
.eventList{
	width: 100%;
	max-width: 30rem;
}
.eventImg{
	width: 30rem;
}
.scroll-btn {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(0, 0, 0, 0.5); /* 반투명한 검정 배경 */
    color: white;
    border: none;
    padding: 0.5rem 1rem;
    cursor: pointer;
    border-radius: 0.5rem;
    z-index: 1;
}
.prev-btn {
    left: 0;
}

.next-btn {
    right: 0;
}
/* 컨텐츠3 */
/* .content_zone3 .content_zone_wrap{
	padding-top: 2rem;
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}
.content_zone3_container{
	width: 100%;
	max-width: 50rem;
	display: flex;
	justify-content: center;
} */


/* 컨텐츠4  */
.content_zone4 .content_zone_wrap{
	padding-top: 5rem;
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
	align-items: center;
}
.content_zone4_container{
	width: 100%;
	max-width: 50rem;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}
.content_zone4_subHeader_container{
	padding-bottom: 0.3rem;
	border-bottom: 2px solid black;
	width: 100%;
	max-width: 50rem;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.content_zone4_subHeader_title{
	margin-left: 0.5rem;
	font-weight: bold;
	font-size: 1.2rem;
}
.content_zone4_subHeader_aside{
	margin-right: 1rem;
	color: #007BFF;
	font-weight: bold;
	font-size: 1.5rem;
}
.content_zone4_list_container{
	position: relative;
}
.scroll_button {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(0, 0, 0, 0.5); /* 반투명한 검정 배경 */
    color: white;
    border: none;
    padding: 0.5rem 1rem;
    cursor: pointer;
    border-radius: 0.5rem;
    z-index: 1;
}
.scroll_button_left {
    left: 0;
    margin-left: 0.5rem; /* 컨테이너의 왼쪽 여백 추가 */
}
.scroll_button_right {
    right: 0;
    margin-right: 0.5rem; /* 컨테이너의 왼쪽 여백 추가 */
}
.content_zone4_scroll_container::-webkit-scrollbar {
    display: none;
}
.content_zone4_scroll_container{
	padding: 0.9rem;
	width: 100%;
	max-width: 50rem;
	display: flex;
	overflow: auto;
	white-space: nowrap;
	scrollbar-width: none;
	overflow-x: hidden; /* 가로 스크롤바 숨기기 */
}
.content_zone4_list{
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	border-radius: 1rem;
	display: inline-block;
	margin-right: 1rem;
	text-decoration: none;
}
.content_zone4_img_container{
	padding: 0.5rem;
	width: 17rem;
	height: 11rem;
	overflow: hidden;
}
.content_zone4_img{
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* 자연스러운 그림자 */
	border-radius: 1rem;
	width: 100%;
	height: 100%;
	object-fit: cover;
}
.content_zone4_info_container{
	padding: 0.5rem 1rem 0.5rem 1rem;
	color: black;
}
.content_zone4_title_reviewInfo_contatiner{
	
}
.content_zone4_title_container{
	display: flex;
	flex-direction: column;
	width: 100%;
	max-width: 16rem;
}
.content_zone4_catTitle_container{
	padding: 0 0 0.2rem 0.2rem;
}
.content_zone4_catTitle{
	text-align: center;
	padding: 3px 5px;
	color: white;
	background-color: #000;
	border-radius: 20px;
	font-size: 0.7rem;
}
.content_zone4_title{
	padding: 0 0.1rem 0 0.1rem;
	font-size: 0.9rem;
	font-weight: bold;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	width: 100%;
}
.content_zone4_reviewInfo{
	display: flex;
	align-items: center;
	gap: 0.2rem;
}
.content_zone4_reviewInfo_score{
	font-size: 0.8rem;
	font-weight: bold;
}
.content_zone4_reviewInfo_count{
	font-size: 0.8rem;
}
.content_zone4_price_container{
	padding-top: 0.7rem;
	display: flex;
	flex-direction: column;
}
.content_zone4_price{
	display: flex;
	flex-direction: column;
}
.content_zone4_price_text1, .content_zone4_price_text2{
	font-weight: bold;
	text-align: right;
}
.content_zone4_price_text1{
	font-size: 1.1rem;
}
.content_zone4_price_text2{
	font-size: 1rem;
	
}

/* 컨텐츠5 지역별best */
.content_zone5 .content_zone_wrap{
	padding: 5rem 0 5rem 0;
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
	align-items: center;
}
.content_zone5_container{
	width: 100%;
	max-width: 50rem;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}
.content_zone5_subHeader_container{
	padding-bottom: 0.3rem;
	border-bottom: 2px solid black;
	width: 100%;
	max-width: 50rem;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.scroll_button2 {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(0, 0, 0, 0.5); /* 반투명한 검정 배경 */
    color: white;
    border: none;
    padding: 0.5rem 1rem;
    cursor: pointer;
    border-radius: 0.5rem;
    z-index: 1;
}
.scroll_button_left2 {
    left: 0;
    margin-left: 0.5rem; /* 컨테이너의 왼쪽 여백 추가 */
}

.scroll_button_right2 {
    right: 0;
    margin-right: 0.5rem; /* 컨테이너의 왼쪽 여백 추가 */
}
.content_zone5_subHeader_title{
	margin-left: 1rem;
	font-weight: bold;
	font-size: 1.2rem;
}
.content_zone5_subHeader_aside{
	margin-right: 1rem;
	color: #007BFF;
	font-weight: bold;
	font-size: 1.5rem;
}
.content_zone5_subSwiper_container{
	position: relative;
	width: 100%;
	padding: 0.5rem 4rem 0.5rem 4rem;
}
.content_zone5_subSwiper_region_container{
	width: 100%;
	display: flex;
	overflow: auto;
	white-space: nowrap;
	scrollbar-width: none;
	overflow-x: hidden;
}
.content_zone5_subSwiper_region_container::-webkit-scrollbar {
    /* display: none; */
}
.subSwiper_region{
	border: solid black 0.8px;
	padding: 0.2rem 0.4rem;
	margin-right: 1.5rem;
	color: black;
	background-color: #fff;
	border-radius: 2rem;
	display: flex;
    align-items: center;
    justify-content: center;
    text-align: center; /* 텍스트 정렬을 중앙으로 설정 */
    min-width: 5rem;
    min-height: 2.5rem;
    font-size: 1.05rem;
    cursor: pointer;
}
.subSwiper_region:hover{
	background-color: #f2f2f2;
}
.subSwiper_region:active{
	background-color: #e0e0e0;
}
.subSwiper_region.selected{
	background-color: #dcdcdc;
}
.content_zone5_list_container{
	padding: 1.2em 0 0 0;
	width: 100%;
	max-width: 48rem;
	display: flex;
	justify-content: center;
	gap: 1rem;
	flex-wrap: wrap;

}
.content_zone5_list{
	box-sizing: border-box;
	border-radius: 1rem;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	color: black;
	display: flex;
	width: 100%;
	max-width: 23rem;
}
.content_zone5_img_container{
	box-sizing: border-box;
	padding: 0.5rem;
	width: 50%;
	height: 150px;
    overflow: hidden;
}
.content_zone5_img{
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	border-radius: 1rem;
	width: 100%;
	height: 100%;
	object-fit: cover;
}
.content_zone5_info_container{
	box-sizing: border-box;
	width: 50%;
	padding: 0.5rem 0.5rem 1rem 0;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}
.content_zone5_title_container{
	display: flex;
	flex-direction: column;	
	width: 100%;
}
.content_zone5_catTitle{
	padding-left: 0.2rem;
	color: gray;
	font-size: 0.9rem;
}
.content_zone5_title{
	padding: 0 0.1rem 0 0.1rem;
	font-size: 1rem;
	font-weight: bold;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	width: 100%;
	max-width: 22rem;
}
.content_zone5_reviewInfo{
	display: flex;
	align-items: center;
	gap: 0.3rem;
}
.content_zone5_reviewInfo_score{
	font-size: 0.9rem;
	font-weight: bold;
}
.content_zone5_reviewInfo_count{
	font-size: 0.9rem;
}
.content_zone5_price_container{
	padding-top: 1.8rem;
}
.content_zone5_price{
	display: flex;
	justify-content: right;
	align-items: center;
}
.content_zone5_price_text1, .content_zone5_price_text2{
	font-size: 1.1rem;
	font-weight: bold;
	margin-left: 0.3rem;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
    $(document).ready(function() {
    	
    	// 컨텐츠1 // 검색창 버튼 클릭시
     	$("#searchButton").click(function(){
     		$("#select_container").addClass('select_container_active');
            $("#select_form").addClass('select_form_active');
		});
    	
    	//컨텐츠2 이벤트 배너
    	const $scrollContainer = $('.content2_eventList_scroll_container');
	    const scrollStep = $scrollContainer.width();
	    let autoScrollInterval;
	
	    function startAutoScroll() {
	        autoScrollInterval = setInterval(function() {
	            $scrollContainer.animate({scrollLeft: '+=' + scrollStep}, 'smooth');
	            if ($scrollContainer.scrollLeft() + $scrollContainer.width() >= $scrollContainer[0].scrollWidth) {
	                $scrollContainer.animate({scrollLeft: 0}, 'smooth');
	            }
	        }, 2000); // 2초 간격으로 스크롤
	    }
	
	    function stopAutoScroll() {
	        clearInterval(autoScrollInterval);
	    }
	
	    $('.next-btn').on('click', function() {
	        stopAutoScroll();
	        $scrollContainer.animate({scrollLeft: '+=' + scrollStep}, 'smooth');
	    });
	
	    $('.prev-btn').on('click', function() {
	        stopAutoScroll();
	        $scrollContainer.animate({scrollLeft: '-=' + scrollStep}, 'smooth');
	    });
	
	    startAutoScroll(); // 페이지 로드 시 자동 스크롤 시작															
    	// 컨텐츠4 스크롤 버튼
    	var $container = $('#rec_list_container');
    	var scrollAmount = 500; // 한 번 클릭으로 스크롤할 거리
    	
    	$('.scroll_button_left').on('click', function(){
    		$container.animate({
    			scrollLeft: $container.scrollLeft() - scrollAmount
    		}, 200);
    	});
	   	$('.scroll_button_right').on('click', function() {
            $container.animate({
                scrollLeft: $container.scrollLeft() + scrollAmount
            }, 200);
        });

    	// 컨텐츠5
        $('.subSwiper_region').on('click', function() {
        	    
        		$(".subSwiper_region").removeClass('selected');
        		
        		$(this).addClass('selected');
        	  	
            var areaCode = $(this).data('area-code');
            var contextPath = '${pageContext.request.contextPath}';
            $.ajax({
                url: '/mw/RegionBest', // 새로운 컨트롤러의 URL
                type: 'GET',
                data: { areaCode: areaCode },
                dataType: 'json', // JSON 형식으로 응답을 받습니다.
                success: function(data) {
                	console.log(data);
                	var asideHtml ='<a href="/mw/bolgguriSearch?filterNo=2&areaCode=' + areaCode + '" class="content_zone5_subHeader_aside">+</a>';
                	$('#region_best_aside').html(asideHtml);
                    var html = '';
                    $.each(data, function(index, item) {
                        html += '<a href="/mw/crud?bolgguri_id=' + item.bolgguri_id + '" class="content_zone5_list">';
                        html += '<div class="content_zone5_img_container">';
                        html += '<img class="content_zone5_img" src="' + item.firstImage2 + '" onerror="this.onerror=null; this.src=\'' + contextPath + '/resources/imgMw/imgDefault.png\'" alt="Description">';
                        html += '</div>';
                        html += '<div class="content_zone5_info_container">';
                        html += '<div class="content_zone5_title_reviewInfo_container">';
                        html += '<div class="content_zone5_title_container">';
                        html += '<span class="content_zone5_catTitle">' + item.catTitle + '</span>'
                        html += '<span class="content_zone5_title">[' + item.areaTitle + '] ' + item.title + '</span>';
                        html += '</div>';
                        html += '<div class="content_zone5_reviewInfo">';
                        html += '<span class="content_zone5_reviewInfo_iconStar">';
                        html += '<img src="/resources/imgMw/iconStar.jpg" width="15">';
                        html += '</span>';
                        html += '<span class="content_zone5_reviewInfo_score">' + item.avg_score + '</span>';
                        html += '<span class="content_zone5_reviewInfo_count">(' + item.review_count + ')</span>';
                        html += '</div>';
                        html += '</div>';
                        html += '<div class="content_zone5_price_container">';
                        if (item.fee > 0) {
                            html += '<div class="content_zone5_price">';
                            html += '<span class="content_zone5_price_text1">' + item.fee.toLocaleString() + '</span>';
                            html += '<span class="content_zone5_price_text2">원</span>';
                            html += '</div>';
                        } else {
                            html += '<div class="content_zone5_price">';
                            html += '<span class="content_zone5_price_text1"></span>';
                            html += '<span class="content_zone5_price_text2">무료</span>';
                            html += '</div>';
                        }
                        html += '</div>';
                        html += '</div>';
                        html += '</a>';
                    });
                    $('#region_list_container').html(html);
                },
                error: function(xhr, status, error) {
                    console.error('AJAX 요청에 실패했습니다:', status, error);
                }
            });
        });
    	// 컨텐츠 5 스크롤 버튼
        var $container2 = $('#best_swiper_container');
    	var scrollAmount2 = 300; // 한 번 클릭으로 스크롤할 거리
    	
    	$('.scroll_button_left2').on('click', function(){
    		$container2.animate({
    			scrollLeft: $container2.scrollLeft() - scrollAmount2
    		}, 200);
    	});
	   	$('.scroll_button_right2').on('click', function() {
            $container2.animate({
                scrollLeft: $container2.scrollLeft() + scrollAmount2
            }, 200);
        });
    });
</script>

</head>
<body>

	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<%@ include file="/WEB-INF/views/mw/mainRegionCategorySelect.jsp" %>

	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<div class="content_zone1_container">
				<h2 class="searchRegion_title">어디로 갈까요?</h2>
				<div class="searchButton_container">
					<button class="searchButton" id="searchButton">
						<div class="searchButton_wrap">
							<div class="searchButton_title_Container">
								<span class="searchButton_iconPin_Container">
									<img class="searchButton_iconPin" src="${pageContext.request.contextPath}/resources/imgMw/iconPin.png" width="20">
								</span>
								<span class="searchButton_title">원하는 여행지를 검색해보세요!</span>
							</div>
							<div class="searchButton_iconArrow">
								<img class="searchButton_iconArrow" src="${pageContext.request.contextPath}/resources/imgMw/iconArrowDown.png" width="20">
							</div>
						</div>
					</button>
				</div>
			</div>	
		</div>
	</section>
	
	<section class="content_zone content_zone2">
		<div class="content_zone_wrap">
			<div class="content_zone2_container">
				<div class="content2_header_container">
				    <h3>진행중인 이벤트</h3>
				</div>
				<div class="content2_eventList_container">
					<button class="scroll-btn prev-btn">◀</button>
					<div class="content2_eventList_scroll_container">
					    <a href="#" class="eventLIst"><img class="eventImg" src="${pageContext.request.contextPath}/resources/imgMw/event1.png"></a>
					    <a href="#" class="eventLIst"><img class="eventImg" src="${pageContext.request.contextPath}/resources/imgMw/event2.png"></a>
					    <a href="#" class="eventLIst"><img class="eventImg" src="${pageContext.request.contextPath}/resources/imgMw/event3.png"></a>
					    <a href="#" class="eventLIst"><img class="eventImg" src="${pageContext.request.contextPath}/resources/imgMw/event4.png"></a>
					    <a href="#" class="eventLIst"><img class="eventImg" src="${pageContext.request.contextPath}/resources/imgMw/event5.png"></a>
				    </div>
				    <button class="scroll-btn next-btn">▶</button>
				</div>
			</div>
		</div>
	</section>
	
	<section class="content_zone content_zone3">
		<div class="content_zone_wrap">
			<div class="content_zone3_container">
				
			</div>
		</div>
	</section>
	
	<section class="content_zone content_zone4">
		<div class="content_zone_wrap">
			<div class="content_zone4_container">
				<div class="content_zone4_subHeader_container">
					<div class="content_zone4_subHeader_title">요즘 핫플 여행지</div>
					<div class="content_zone4_subHeader_aside_container"><a href="/mw/bolgguriSearch?filterNo=1" class="content_zone4_subHeader_aside">+</a></div>
				</div>
				
				<div class="content_zone4_list_container">
					<button class="scroll_button scroll_button_left">◀</button> <!-- 왼쪽 화살표 버튼 -->
					<div class="content_zone4_scroll_container"  id="rec_list_container">
						<c:forEach var="recMwBolgguriDto" items="${recMwBolgguriDtos }">
							<a href="/mw/crud?bolgguri_id=${recMwBolgguriDto.bolgguri_id }" class="content_zone4_list">
								<div class="content_zone4_img_container">
									<img class="content_zone4_img" src="${recMwBolgguriDto.firstImage2 }" onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/imgMw/imgDefault.png'" alt="Description">
								</div>
								<div class="content_zone4_info_container">
					            	<div class="content_zone4_title_reviewInfo_container">
						                <div class="content_zone4_title_container">
						                	<div class="content_zone4_catTitle_container"><span class="content_zone4_catTitle">${recMwBolgguriDto.catTitle }</span></div>
						                    <span class="content_zone4_title">[${recMwBolgguriDto.areaTitle }] ${recMwBolgguriDto.title }</span>
						                </div>
						                <div class="content_zone4_reviewInfo">
						                    <span class="content_zone4_reviewInfo_iconStar">
						                        <img src="${pageContext.request.contextPath}/resources/imgMw/iconStar.jpg" width="15">
						                    </span>
						                    <span class="content_zone4_reviewInfo_score">${recMwBolgguriDto.avg_score }</span>
						                    <span class="content_zone4_reviewInfo_count">(${recMwBolgguriDto.review_count })</span>
						                </div>
					                </div>
					                <div class="content_zone4_price_container">
					                	<c:if test="${recMwBolgguriDto.fee > 0 }">
						                    <div class="content_zone4_price">
						                        <span class="content_zone4_price_text1">
						                        	<fmt:formatNumber value="${recMwBolgguriDto.fee}" type="number" pattern="#,###"/>
						                        </span>
						                        <span class="content_zone4_price_text2">원</span>
						                    </div>
					                	</c:if>
					                    <c:if test="${recMwBolgguriDto.fee == 0 }">
					                    	<div class="content_zone4_price">
					                    		<span class="content_zone4_price_text1"></span>
						                        <span class="content_zone4_price_text2">무료</span>
					                    	</div>
					                    </c:if>
					                </div>
					            </div>
							</a>
						</c:forEach>
					</div>
					<button class="scroll_button scroll_button_right">▶</button> <!-- 오른쪽 화살표 버튼 -->
				</div>
				
			</div>
		</div>
	</section>
	
	<section class="content_zone content_zone5">
		<div class="content_zone_wrap">
			<div class="content_zone5_container">
				<div class="content_zone5_subHeader_container">
					<div class="content_zone5_subHeader_title">지역별 Best</div>
					<div class="content_zone5_subHeader_aside_container" id="region_best_aside"><a href="/mw/bolgguriSearch?filterNo=2&areaCode=1" class="content_zone5_subHeader_aside">+</a></div>
				</div>
				<div class="content_zone5_subSwiper_container">
					<button class="scroll_button2 scroll_button_left2">◀</button> <!-- 왼쪽 화살표 버튼 -->
					<div class="content_zone5_subSwiper_region_container" id="best_swiper_container">
						<c:forEach var="mwBolgguriRegionDto" items="${mwBolgguriRegionDtos }">
							<div class="subSwiper_region" data-area-code="${mwBolgguriRegionDto.areaCode }">${mwBolgguriRegionDto.name }</div>
						</c:forEach>
					</div>
					<button class="scroll_button2 scroll_button_right2">▶</button> <!-- 오른쪽 화살표 버튼 -->
				</div>
				<!-- 상품리스트 -->
				<div class="content_zone5_list_container" id="region_list_container">
					<c:forEach var="regionMwBolgguriDto" items="${regionMwBolgguriDtos }">
						<a href="/mw/crud?bolgguri_id=${regionMwBolgguriDto.bolgguri_id }" class="content_zone5_list">
							<div class="content_zone5_img_container">
								<img class="content_zone5_img" src="${regionMwBolgguriDto.firstImage2 }" onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/imgMw/imgDefault.png'" alt="Description">
							</div>
							<div class="content_zone5_info_container">
				            	<div class="content_zone5_title_reviewInfo_container">
					                <div class="content_zone5_title_container">
					                	<span class="content_zone5_catTitle">${regionMwBolgguriDto.catTitle }</span>
					                    <span class="content_zone5_title">[${regionMwBolgguriDto.areaTitle }] ${regionMwBolgguriDto.title }</span>
					                </div>
					                <div class="content_zone5_reviewInfo">
					                    <span class="content_zone5_reviewInfo_iconStar">
					                        <img src="${pageContext.request.contextPath}/resources/imgMw/iconStar.jpg" width="15">
					                    </span>
					                    <span class="content_zone5_reviewInfo_score">${regionMwBolgguriDto.avg_score }</span>
					                    <span class="content_zone5_reviewInfo_count">(${regionMwBolgguriDto.review_count })</span>
					                </div>
				                </div>
				                <div class="content_zone5_price_container">
				                	<c:if test="${regionMwBolgguriDto.fee > 0 }">
					                    <div class="content_zone5_price">
					                        <span class="content_zone5_price_text1">
					                        	<fmt:formatNumber value="${regionMwBolgguriDto.fee}" type="number" pattern="#,###"/>
					                        </span>
					                        <span class="content_zone5_price_text2">원</span>
					                    </div>
				                	</c:if>
				                    <c:if test="${regionMwBolgguriDto.fee == 0 }">
				                    	<div class="content_zone5_price">
				                    		<span class="content_zone5_price_text1"></span>
					                        <span class="content_zone5_price_text2">무료</span>
				                    	</div>
				                    </c:if>
				                </div>
				            </div>
						</a>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>

	<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>
	
	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>
	
	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>


</body>
</html>