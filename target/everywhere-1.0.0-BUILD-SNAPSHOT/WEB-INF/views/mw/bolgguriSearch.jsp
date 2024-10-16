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
input[type="radio"] {
    /* display: none; */
}
input[type="checkbox"] {
    /* display: none; */
}

/*컨텐츠 section*/
.content_zone {
	width: 100%;
	display: flex;
	justify-content: center;
}

.content_zone .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}

/* 컨텐츠1 */
.content_zone1 {
	margin-top: 7rem;
}
.content_zone1 .content_zone_wrap {
	padding: 1rem;
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}
.content_zone1_container{
	padding: 1rem;
	width: 100%;
	max-width: 45rem;
	display: flex;
	flex-direction: column;
	justify-content: center;
    align-items: center;
	border: 2px solid black;
	border-radius: 0.8rem;
}
.content_zone1_select_container{
	display: flex;
	width: 100%;
	position: relative;
}
.content_zone1_regionSelect_container,
.content_zone1_categorySelect_container{
	background-color: #fff;
	padding: 0.5rem 1rem 0.5rem 1rem;
	display: flex;
	justify-content: space-between;
	border: 2px solid black;
	border-radius: 0.8rem;
	font-size: 1.1rem;
	font-weight: bold;
	cursor: pointer;
}
.content_zone1_regionSelect_container{
	width: 30%;
}
.content_zone1_categorySelect_container{
	width: 70%;
}
.content_zone1_regionSelect_container{
	margin-right: 1rem;
}
.content_zone1_userSelect_container{
	padding: 10px 0 0 10px;
	display: flex;
	width: 100%;
	justify-content: left;
}
#region_select_hidden, #category_select_hidden{
	display: none;
	position: absolute;
	top: 100%;
    left: 0;
    width: 100%;
    z-index: 500;
}
.region_select, .category_select{
	border-radius: 1rem;
	background-color: white;
    border: 1px solid #ccc;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    display: flex;
    justify-content: center;
    width: 100%;
}
.region_select_list_container, .category_select_list_container{
	display: grid;
	grid-template-columns: repeat(3, 1fr); /* 기본적으로 3열로 나열 */
	gap: 20px; /* 각 아이템 사이의 간격을 설정 */
	padding: 1rem 5%;
	width: 100%;
}
.region_select_list_item,
.category_select_list_item,
.category_select_list_checkAll{
	color: black;
	font-weight: bold;
	font-size: 1rem;
	border: 1px solid #ddd;
    border-radius: 20px;
    padding: 8px 3px;
    background-color: #fff;
    text-align: center;
}
.region_select_list_item:hover,
.category_select_list_item:hover,
.category_select_list_checkAll:hover{
	background-color: #f2f2f2;
}
.region_select_list_item:active,
.category_select_list_item:active,
.category_select_list_checkAll:active{
	background-color: #e0e0e0;
}
.category_select_list_item.selected,
.category_select_list_checkAll.selected{
	background-color: #d1d1d1;
}
.userSelect_reset_container{
	display: flex;
	margin-right: 10px;
	justify-content: center;
	align-items: center;
	cursor: pointer;
}
.userSelect_region_category_container{
	padding-left: 10px;
	border-left: 1px solid black;
}
.region_button_x,
.category_button_x{
	cursor: pointer;
}
/* 컨텐츠2 */
.content_zone2 .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}
.content_zone2_container{
	font-size: 0.9rem;
	margin-top: 2rem;
	padding: 0.5rem 1rem 0.5rem 1rem;
	border-top: 2px solid black;
	border-bottom: 2px solid black;
	width: 100%;
	max-width: 50rem;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.content_zone2_container span, content_zone2_filterArrow>div{
	padding: 0 0.2rem 0 0.2rem;
}
.content_zone2_filterArrow_list span{
	color: black;
}
.content_zone2_filterArrow {
    position: relative;
    display: flex;
    align-items: center;
    cursor: pointer;
}
.content_zone2_filterArrow_hidden{
	display: none;
	position: absolute;
    top: 100%; /* 부모 요소의 아래쪽에 위치 */
    left: 0;
    background-color: white;
    border: 1px solid #ccc;
    z-index: 10;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
    white-space: nowrap; /* 텍스트 줄바꿈 방지 */
}
.content_zone2_filterArrow_hidden_container{
	display: flex;
	flex-direction: column;
	width: 100%; /* 부모 요소의 너비에 맞춤 */
}
.content_zone2_filterArrow_hidden a {
    padding: 0.5rem;
    width: 100%; /* 링크가 부모 요소의 너비에 맞게 확장 */
    box-sizing: border-box;
    text-align: center; /* 텍스트 중앙 정렬 */
    background-color: white;
    border-bottom: 1px solid #ddd; /* 각 링크에 하단 테두리 추가 */
}
.content_zone2_filterDetail{
	margin-left: 1.5rem;
	padding: 0.2rem;
}
.content_zone2_searchCount,
.content_zone2_filterNav{
	display: flex;
	align-items: center;
}

/* 컨텐츠3 */
.content_zone3 .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}
.content_zone3_container{
	width: 100%;
	max-width: 48rem;
	display: flex;
	flex-direction: column;
	justify-content: center;
}
.content_zone3_swiper{
	color: black;
	padding-top: 1rem;
	width: 100%;
	max-width: 48rem;
	display: flex;
}
.content_zone3_info_container{
	flex: 6;
	max-width: 60%;
	padding-left: 1rem; 
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}
.content_zone3_img_container{
	flex: 4;
	max-width: 40%;
	overflow: hidden;
}
.content_zone3_img{
	border-radius: 0.7rem;
	width: 100%;
	height: 100%;
	object-fit: cover;
}
.content_zone3_title{
	font-size: 1.2rem;
	font-weight: bold;	
}
.content_zone3_reviewInfo{
	display: flex;
	align-items: center;
	gap: 0.2rem;
}
.content_zone3_reviewInfo_score{
	font-size: 0.8rem;
	font-weight: bold;
}
.content_zone3_reviewInfo_count{
	font-size: 0.8rem;
}
.content_zone3_price_container{
	padding-top: 0.7rem;
}
.content_zone3_price1, .content_zone3_price2{
	display: flex;
	justify-content: right;
	align-items: center;
}
.content_zone3_price1_percent{
	font-size: 0.9rem;
	margin-right: 0.4rem;
}
.content_zone3_price1_text{
	font-size: 0.9rem;
	text-decoration: line-through;
}
.content_zone3_price2_text1, .content_zone3_price2_text2{
	font-weight: bold;
}
.content_zone3_price2_text1{
	font-size: 1.3rem;
}
.content_zone3_price2_text2{
	font-size: 1rem;
}

/* 컨텐츠4 */
.content_zone4 .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: fixed;
	justify-content: center;
}
.content_zone4_container{
	padding: 1rem 0 1rem 0;
	width: 100%;
	max-width: 48rem;
	display: flex;
	justify-content: center;
}
#topBtn {
    display: none; /* 기본적으로 숨김 */
    position: fixed; /* 화면에 고정 */
    bottom: 100px; /* 하단에서 20px 위로 */
    right: 30px; /* 오른쪽에서 30px 왼쪽으로 */
    z-index: 200; /* 다른 요소 위에 표시 */
    border: none; /* 테두리 없음 */
    outline: none; /* 윤곽선 없음 */
    background-color: #555; /* 배경색 */
    color: white; /* 글자색 */
    cursor: pointer; /* 커서 모양 변경 */
    padding: 15px; /* 내부 여백 */
    border-radius: 10px; /* 둥근 모서리 */
    font-size: 18px; /* 글자 크기 */
}
#topBtn:hover {
    background-color: #333; /* 호버 시 배경색 */
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	
	$(document).ready(function(){
		
		var isClick = ''; // 지역 카테고리 리셋 버튼 클릭에 따른 상태
		var areaCode = ''; // 선택한 지역코드
		var areaTitle = ''; // 선택한 지역 이름
		var cat1 = []; // 선택한 카테고리
		var cat1Text = []; // 선택한 카테고리 텍스트 (화면 출력용)
		var contextPath = '${pageContext.request.contextPath}'; // 이미지 출력용
		
		// 지역 라디오 확인 기능
		function regionChecked(){
	 		if($('.userSelect_region').html().trim() !== ''){
 	            areaCode = $('.userSelect_region_name img').data('area-code');
 	          	areaTitle =$(".region_select_list_item").find('label[for="areaCode_' + areaCode + '"]').text();
	 		}
		}
		// 카테고리 체크박스 확인 기능
		function categoryChecked(){
			if($('.userSelect_category').html().trim() !== ''){
	 			$('.userSelect_category_name img').each(function(){
	 				var cat1Value = $(this).data('cat1');
	 				if(cat1Value !== undefined){
	 					cat1.push(cat1Value);
	 					cat1Text.push($(".category_select_list_item").find('label[for="cat1_' + cat1Value + '"]').text());
	 				}
	 			})
	 		}
		}
		
		// 컨텐츠1 지역 선택 창 출력
		$("#region_button, #region_select_hidden").hover(
	        function() {
	            $("#region_select_hidden").show();
	        },
	        function() {
	            $("#region_select_hidden").hide();
	        }
	    );
		// 컨텐츠1 카테고리 선택 창 출력
		$("#category_button, #category_select_hidden").hover(
	        function() {
	            $("#category_select_hidden").show();
	        },
	        function() {
	            $("#category_select_hidden").hide();
	        }
	    );
		// 컨텐츠1 지역 라디오버튼 클릭 기능
	 	$(".region_select_list_item").click(function(){
	 		console.log('지역 버튼 클릭');
	 		isClick = 'select';
	 		areaCode = $(this).find("input[type='radio']").val();
	 		areaTitle =$(this).find('label[for="areaCode_' + areaCode + '"]').text();
	 		$(this).find("input[type='radio']").prop("checked", true);
	 		$("#region_select_hidden").hide();
	 		categoryChecked(); // 카테고리 체크박스 확인
	 		selectSearch(); // 검색 리스트 업데이트
	 	})
	 	// 컨텐츠1 카테고리 체크박스 클릭 기능
	 	$(".category_select_list_item").click(function(){
	 		console.log('카테고리 1개 클릭');
	 		isClick = 'select';
	 		// 현재 클릭된 체크박스
	 		var checkbox = $(this).find("input[type='checkbox']");
	 		var value = checkbox.val();
	 		// 현재 클리된 체크박스 라벨의 텍스트
	 		var label = $(this).find("label[for='" + checkbox.attr('id') + "']");
	 		var labelText = label.text();
	 		regionChecked(); // 지역 라디오 확인
	 		categoryChecked(); // 카테고리 체크박스 확인
	 		if(checkbox.is(':checked')){
	 			// 체크 헤제 처리
	 			checkbox.prop("checked", false);
	 			$(".category_select_list_checkAll").removeClass("selected");
	 			$(".category_select_list_checkAll").find("input[type='checkbox']").prop("checked", false);
	 			$(this).removeClass("selected");
	 			var index = cat1.indexOf(value);
	 			if(index !== -1){
	 				cat1.splice(index, 1);
	 				cat1Text.splice(index, 1);
	 			}
	 		}else{
	 			// 체크 처리
	 			checkbox.prop("checked", true);
	 			$(this).addClass("selected");
	 			var allChecked = true;
	 			$(".category_select_list_item").find("input[type='checkbox']").each(function(){
	 				if(!$(this).is(':checked')){
	 					allChecked = false;
	 				}
	 			})
	 			if(allChecked){
	 				$(".category_select_list_checkAll").addClass("selected");
	 				$(".category_select_list_checkAll").find("input[type='checkbox']").prop("checked", true);
	 			}
	 			if(!cat1.includes(value)){
	 				cat1.push(value);
	 				cat1Text.push(labelText);
	 			}
	 		}
	 		selectSearch();
	 	})
	 	// 컨텐츠1 카테고리 체크박스 전체 선택
	 	$(".category_select_list_checkAll").click(function(){
	 		console.log('카테고리 전체 선택');
	 		isClick = 'select';
	 		cat1 = [];
	 		cat1Text = [];
	 		// 전체 선택 체크박스 상태
	 		var isChecked = $(this).find("input[type='checkbox']").is(':checked');
	 		var checkbox = $(".category_select_list_item").find("input[type='checkbox']");
	 		if(isChecked){
	 			$(this).find("input[type='checkbox']").prop("checked", false);
	 			$(this).removeClass("selected");
	 			$(".category_select_list_item").removeClass("selected");
	 			checkbox.prop("checked", false);
	 		}else{
	 			$(this).find("input[type='checkbox']").prop("checked", true);
	 			$(this).addClass("selected");
	 			$(".category_select_list_item").addClass("selected");
	 			checkbox.prop("checked", true);
	 			$(".category_select_list_item").each(function() {
	 	            var checkbox = $(this).find("input[type='checkbox']");
	 	            var value = checkbox.val();
	 	            var label = $(this).find("label[for='" + checkbox.attr('id') + "']");
	 	            var labelText = label.text();
	 	            // 배열에 값 추가
	 	            cat1.push(value);
	 	            cat1Text.push(labelText);
	 	        });
	 		}
			selectSearch();
	 	})
	 	// 지역 X 버튼
		$(document).on('click', '.region_button_x', function(){
			console.log('지역 삭제 버튼');
			isClick = 'select';
			areaCode = '';
			$(".region_select_list_item").find("input[type='radio']").prop("checked", false);
	 		categoryChecked(); // 카테고리 체크박스 확인
			selectSearch();
		})
		// 카테고리 X 버튼
		$(document).on('click', '.category_button_x', function(){
			console.log('카테고리 삭제 버튼');
			isClick = 'select';
	 		regionChecked(); // 지역 라디오 확인
	 		categoryChecked(); // 카테고리 체크박스 확인
			
		    var categorySpan = $(this).closest("span"); // X 버튼이 포함된 span 요소를 찾기
		    var categoryCode = $(this).data('cat1');
		    console.log("삭제할 카테고리: " + categoryCode);
		    // cat1 배열에서 해당 코드 제거
		    cat1 = cat1.filter(function(item){
		    	return item !== categoryCode;
		    })
		 	// cat1Text 배열에서도 동일한 인덱스의 항목 제거
		    var indexToRemove = categorySpan.index() - 1; // 첫 번째 span은 "카테고리 :" 이므로 인덱스를 1 빼줌
		    cat1Text.splice(indexToRemove, 1);
		    // 삭제된 카테고리 selected 클래스 제거
		    $('#cat1_' + categoryCode).closest('.category_select_list_item').removeClass('selected');
		    $('#cat1_' + categoryCode).prop('checked', false);
		    // 전체 선택 버튼 체크 해제 및 selected 클래스 제거
		    $(".category_select_list_checkAll").removeClass("selected");
 			$(".category_select_list_checkAll").find("input[type='checkbox']").prop("checked", false);
		    selectSearch();
		})
	 	// 컨텐츠1 초기화 버튼
	 	$(document).on('click', '.resetButton', function(){
		    console.log('리셋 버튼 클릭');
		    isClick = 'reset';
		    areaCode = '';
		    areaTitle = '';
		    cat1 = [];
		    cat1Text = [];
		    $(".region_select_list_item").find("input[type='radio']").prop("checked", false); // 지역 라디오 해제
		    $(".category_select_list_item").find("input[type='checkbox']").prop("checked", false); // 모든 카테고리 체크박스 해제
		    $(".category_select_list_item").removeClass("selected");
		    $(".category_select_list_checkAll").find("input[type='checkbox']").prop("checked", false); // 카테고리 전체 버튼 해제
		    $(".category_select_list_checkAll").removeClass("selected");
		    selectSearch();
		});	 	
	 	
		// 검색 리스트 업데이트 ajax
 	 	function selectSearch(){
 	 		$.ajax({
				url: '/mwAjax/bolgguriSearch',
				type: 'GET',
				traditional: true,
				data: {
					areaCode: areaCode,
					cat1: cat1,
					filterNo: 2,
				},
				success: function(data){
					console.log("AJAX 요청 성공, 데이터:", data); // 반환된 데이터를 콘솔에 출력
					// 지역 or 카테고리 선택
					if(isClick == 'select'){
						console.log('선택 결과')
						// 선택한 지역 출력
						if(areaCode == null || areaCode == ''){
							$(".userSelect_region").empty();
							console.log('areaCode : null or empty');
						}else{
							console.log('areaCode : ', areaCode);
							var userSelectAreaHtml = '<span>지역 : </span>';
							userSelectAreaHtml += '<span class="userSelect_region_name">' + areaTitle + '<img data-area-code="' + areaCode + '" class="region_button_x" src="' + contextPath + '/resources/imgMw/iconX.png" style="display: inline;" width="15"></span>';
							$(".userSelect_region").html(userSelectAreaHtml);
						}
						// 선택한 카테고리 출력
						if(cat1 == null || cat1.length === 0){
							$(".userSelect_category").empty();
							console.log('cat1 : null or empty');
						}else{
							console.log('cat1 : ', cat1);
							var userSelectCat1Html = '<span>카테고리 : </span>';
							$.each(cat1Text, function(index, item){
								var categoryCode = cat1[index];
								userSelectCat1Html += '<span>' + item + '<img data-cat1="' + categoryCode + '"class="category_button_x" src="' + contextPath + '/resources/imgMw/iconX.png" style="display: inline;" width="15"></span>';
							})
							
							$(".userSelect_category").html(userSelectCat1Html);
						}
						// 상황에 따른 리셋 버튼 출력
						if((areaCode == null || areaCode == '') && (cat1 == null || cat1.length === 0)){
							$(".userSelect_reset_container").empty();
						}else{
							var resetButtonHtml = '<span class="resetButton">초기화<img src="' + contextPath + '/resources/imgMw/iconReset.png" style="display: inline;" width="15"></span>';
							$(".userSelect_reset_container").html(resetButtonHtml);
						}
					} // 리셋 버튼 클릭시 
					else if(isClick == 'reset'){
						$(".userSelect_reset_container").empty();
						$(".userSelect_region").empty();
						$(".userSelect_category").empty();
					}
					
					// 검색 리스트 업데이트
					var bolgguriHtml = '';
					$.each(data, function(index, item) {
					bolgguriHtml += '<a href="/mw/crud?bolgguri_id=' + item.bolgguri_id + '" class="content_zone3_swiper" id="bolgguri_item">';
					bolgguriHtml += '<div class="content_zone3_img_container">';
					bolgguriHtml += '<img class="content_zone3_img" src="' + item.firstImage2 + '" onerror="this.onerror=null; this.src=\'' + contextPath + '/resources/imgMw/imgDefault.png\'" alt="Description">';
		            bolgguriHtml += '</div>';
		            bolgguriHtml += '<div class="content_zone3_info_container">';
		            bolgguriHtml += '<div class="content_zone3_title_reviewInfo_container">';
		            bolgguriHtml += '<div class="content_zone3_title">';
		            bolgguriHtml += '<span>[' + item.areaTitle + '] ' + item.title + '</span>';
			        bolgguriHtml += '</div>';
			        bolgguriHtml += '<div class="content_zone3_reviewInfo">';
			        bolgguriHtml += '<span class="content_zone3_reviewInfo_iconStar">';
			        bolgguriHtml += '<img src="' + contextPath + '/resources/imgMw/iconStar.jpg" width="15">';
			        bolgguriHtml += '</span>';
			        bolgguriHtml += '<span class="content_zone3_reviewInfo_score">' + item.avg_score + '</span>';
			        bolgguriHtml += '<span class="content_zone3_reviewInfo_count">(' + item.review_count + ')</span>';
			        bolgguriHtml += '<span>' + item.catTitle + '</span>';
			        bolgguriHtml += '</div>';
			        bolgguriHtml += '</div>';
			        bolgguriHtml += '<div class="content_zone3_price_container">';
			        if (item.fee > 0) {
			        	bolgguriHtml += '<div class="content_zone3_price">';
			        	bolgguriHtml += '<span class="content_zone3_price_text1">' + item.fee.toLocaleString() + '</span>';
			        	bolgguriHtml += '<span class="content_zone3_price_text2">원~</span>';
			        	bolgguriHtml += '</div>';
                    } else {
                    	bolgguriHtml += '<div class="content_zone3_price2">';
                    	bolgguriHtml += '<span class="content_zone3_price_text1"></span>';
                    	bolgguriHtml += '<span class="content_zone3_price_text2">무료</span>';
                    	bolgguriHtml += '</div>';
                    }
			        bolgguriHtml += '</div>';
			        bolgguriHtml += '</div>';
			        bolgguriHtml += '</a>';
					});
					$('.content_zone3_container').html(bolgguriHtml);
				},
				error: function(xhr, status, error) {
	                console.error('데이터 로드 실패:', status, error);
	                isLoading = false;
	            }
				
			})
		};
		

	 	//////////////////////////////////////////////////////////////////////////////
		// 컨텐츠2 정렬 순서 (인기순, 기본순 등)
		$(".content_zone2_filterArrow").hover(
            function(){
                $(this).find(".content_zone2_filterArrow_hidden").stop().slideDown();
            },function(){
                $(this).find(".content_zone2_filterArrow_hidden").stop().slideUp();
            }
		)
		$(".content_zone2_filterArrow_hidden_container a").hover(
            function(){
                var overColor = $(this).attr("data-bg");
                $(this).stop().css("background-color", "#e0e0e0");
            },function(){
                $(this).stop().css("background-color", "#fff");
            }
        ); 
		
		// 필터 버튼 클릭 시 쿼리스트링 처리 (기본순,인기순 등)
		$(".content_zone2_filterArrow_hidden_container a").click(function(event) {
			event.preventDefault();

			// 파라미터 설정
			let areaCode = "${areaCode}".trim();
			let cat1 = "${cat1}".trim().replace(/[\[\] ]/g, ""); // 공백 및 대괄호 제거
			let filterNo = $(this).attr('href').split('filterNo=')[1];

			// URL 생성
			let params = new URLSearchParams();

			if (areaCode) params.append('areaCode', areaCode);
			if (cat1) params.append('cat1', cat1);
			if (filterNo) params.append('filterNo', filterNo);

			// 리디렉션
			window.location.href = "/mw/bolgguriSearch?" + params.toString();
		});
		
		// 페이지 스크롤 이벤트로 상품리스트 업데이트
		var page = 1; // 초기 페이지 번호
		var isLoading = false; // 로딩 상태를 체크하는 변수
		
		function loadMoreBolgguri(){
			if(isLoading) return;
			isLoading = true;
			
			$.ajax({
				url: '/mwAjax/scrollSearch',
				type: 'GET',
				data: {
					areaCode: '${areaCode}',
					cat1: '${cat1}',
					filterNo: '${filterNo}',
					page: page
				},
				success: function(data){
					console.log("AJAX 요청 성공, 데이터:", data); // 반환된 데이터를 콘솔에 출력
	                if (data.length === 0) {
	                    isLoading = true; // 데이터가 더 이상 없을 경우
	                    return;
	                }
	                $.each(data, function(index, item) {
	                    var productHtml = '<a href="/mw/crud?bolgguri_id=' + item.bolgguri_id + '" class="content_zone3_swiper" id="bolgguri_item">';
	                    productHtml += '<div class="content_zone3_img_container">';
	                    productHtml += '<img class="content_zone3_img" src="' + item.firstImage2 + '" onerror="this.onerror=null; this.src=\'' + contextPath + '/resources/imgMw/imgDefault.png\'" alt="Description">';
	                    productHtml += '</div>';
	                    productHtml += '<div class="content_zone3_info_container">';
	                    productHtml += '<div class="content_zone3_title_reviewInfo_container">';
	                    productHtml += '<div class="content_zone3_title">';
	                    productHtml += '<span>[' + item.areaTitle + '] ' + item.title + '</span>';
	                    productHtml += '</div>';
	                    productHtml += '<div class="content_zone3_reviewInfo">';
	                    productHtml += '<span class="content_zone3_reviewInfo_iconStar">';
	                    productHtml += '<img src="' + contextPath + '/resources/imgMw/iconStar.jpg" width="15">';
	                    productHtml += '</span>';
	                    productHtml += '<span class="content_zone3_reviewInfo_score">' + item.avg_score + '</span>';
	                    productHtml += '<span class="content_zone3_reviewInfo_count">(' + item.review_count + ')</span>';
	                    productHtml += '<span>' + item.catTitle + '</span>';
	                    productHtml += '</div>';
	                    productHtml += '</div>';
	                    productHtml += '<div class="content_zone3_price_container">';
	                    if (item.fee > 0) {
	                        productHtml += '<div class="content_zone3_price">';
	                        productHtml += '<span class="content_zone3_price_text1">' + item.fee.toLocaleString() + '</span>';
	                        productHtml += '<span class="content_zone3_price_text2">원~</span>';
	                        productHtml += '</div>';
	                    } else {
	                        productHtml += '<div class="content_zone3_price2">';
	                        productHtml += '<span class="content_zone3_price_text1">무료</span>';
	                        productHtml += '<span class="content_zone3_price_text2"></span>';
	                        productHtml += '</div>';
	                    }
	                    productHtml += '</div>';
	                    productHtml += '</div>';
	                    productHtml += '</a>';

	                    $('.content_zone3_container').append(productHtml);
	                });
	                
	                page++; // 다음 페이지 번호로 증가
					isLoading = false;
				},
				error: function(xhr, status, error) {
	                console.error('데이터 로드 실패:', status, error);
	                isLoading = false;
	            }
				
			})
		}
		$(window).scroll(function() {
	        if ($(window).scrollTop() + $(window).height() >= $(document).height() - 100) {
	        	loadMoreBolgguri();
	        }});
		
		// Get the button:
		let topBtn = document.getElementById("topBtn");

		// 페이지 스크롤 시 호출되는 함수
		window.onscroll = function() {scrollFunction()};

		function scrollFunction() {
		    // 페이지가 20px 이상 스크롤되었을 때 버튼을 표시
		    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
		        topBtn.style.display = "block";
		    } else {
		        topBtn.style.display = "none";
		    }
		}

		// 버튼 클릭 시 페이지 맨 위로 이동하는 함수
		topBtn.onclick = function() {
		    document.body.scrollTop = 0;
		    document.documentElement.scrollTop = 0;
		}
		
	});
</script>
</head>

<body>
	

	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<div class="content_zone1_container">
				<div class="content_zone1_select_container">
					<button class="content_zone1_regionSelect_container" id="region_button">
						<div class="content_zone1_regionSelect_title">지역 선택</div>
						<div class="content_zone1_regionSelect_iconArrow">
							<img class="regionSelect_img" src="${pageContext.request.contextPath}/resources/imgMw/iconArrowDown.png" width="20">
						</div>
					</button>
					<div class="region_select_hidden" id="region_select_hidden">
						<div class="region_select">
							<div class="region_select_list_container">
								<c:forEach var="mwBolgguriRegionDto" items="${mwBolgguriRegionDtos }">
									<div class="region_select_list_item">
										<label for="areaCode_${mwBolgguriRegionDto.areaCode }">${mwBolgguriRegionDto.name }</label>
										<c:choose>
											<c:when test="${empty regionSelect or empty regionSelect.areaCode}">
												<input type="radio" name="areaCode" id="areaCode_${mwBolgguriRegionDto.areaCode }" value="${mwBolgguriRegionDto.areaCode }">
											</c:when>
											<c:when test="${not empty regionSelect and regionSelect.areaCode == mwBolgguriRegionDto.areaCode}">
										        <input type="radio" name="areaCode" id="areaCode_${mwBolgguriRegionDto.areaCode }" value="${mwBolgguriRegionDto.areaCode }" checked>
										    </c:when>
											<c:otherwise>
												<input type="radio" name="areaCode" id="areaCode_${mwBolgguriRegionDto.areaCode }" value="${mwBolgguriRegionDto.areaCode }">
											</c:otherwise>
										</c:choose>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<button class="content_zone1_categorySelect_container" id="category_button">
						<div class="content_zone1_categorySelect_title">카테고리 선택</div>
						<div class="content_zone1_categorySelect_iconArrow">
							<img class="categorySelect_img" src="${pageContext.request.contextPath}/resources/imgMw/iconArrowDown.png" width="20">
						</div>
					</button>
					<div class="category_select_hidden" id="category_select_hidden">
						<div class="category_select" id="category_select">
							<div class="category_select_list_container">
								<div class="category_select_list_checkAll" id="category_checkAll">
									<label for="categoryAll">전체</label>
									<input type="checkbox" name="cat1" id="categoryAll" value="">
								</div>
								<c:forEach var="mwBolgguriCategoryDto" items="${mwBolgguriCategoryDtos }">
								    <!-- 체크 여부를 결정하기 위한 변수 -->
								    <c:set var="isChecked" value="false" />
								    <c:if test="${not empty categorySelect}">
								        <c:forEach var="category" items="${categorySelect}">
								            <c:if test="${category.code eq mwBolgguriCategoryDto.code}">
								                <c:set var="isChecked" value="true" />
								            </c:if>
								        </c:forEach>
								    </c:if>
								    <div class="category_select_list_item ${isChecked ? 'selected' : ''}">
								        <label for="cat1_${mwBolgguriCategoryDto.code }">${mwBolgguriCategoryDto.name }</label>
								        <input type="checkbox" name="cat1" id="cat1_${mwBolgguriCategoryDto.code }" value="${mwBolgguriCategoryDto.code }" ${isChecked ? 'checked' : ''}>
								    </div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="content_zone1_userSelect_container">
					<div class="userSelect_reset_container">
						<c:if test="${regionSelect != null || categorySelect != null }">
							<span class="resetButton">초기화<img class="region_button_x" src="${pageContext.request.contextPath}/resources/imgMw/iconReset.png" style="display: inline;" width="15"></span>
						</c:if>
					</div>
					<div class="userSelect_region_category_container">
						<div class="userSelect_region">
							<span><c:if test="${regionSelect != null}">지역 :</c:if></span>
							<span class="userSelect_region_name">
								<c:if test="${regionSelect != null}">
									${regionSelect.name }
									<img data-area-code="${regionSelect.areaCode }" class="region_button_x" src="${pageContext.request.contextPath}/resources/imgMw/iconX.png" style="display: inline;" width="15">
								</c:if>
							</span>
						</div>
						<div class="userSelect_category">
							<span><c:if test="${categorySelect != null}">카테고리 :</c:if></span>
							<c:forEach var="categorySelect" items="${categorySelect }">
								<span class="userSelect_category_name">
									${categorySelect.name }
									<img data-cat1="${categorySelect.code }" class="category_button_x" src="${pageContext.request.contextPath}/resources/imgMw/iconX.png" style="display: inline;" width="15">
								</span>
							</c:forEach>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="content_zone content_zone2">
		<div class="content_zone_wrap">
			<div class="content_zone2_container">
				<div class="content_zone2_searchCount">
					<span><img src="${pageContext.request.contextPath}/resources/imgMw/iconSearch.png" width="15"></span>
	                <c:if test="${empty mwBolgguriDtos }"><span>0개 검색</span></c:if>
	                <c:if test="${not empty mwBolgguriDtos }"><span><fmt:formatNumber value="${mwBolgguriDtosLength}" type="number" pattern="#,##0"/>개 검색</span></c:if>
	            </div>
	            <div class="content_zone2_filterNav">
	                <div class="content_zone2_filterArrow">
	                    <div class="content_zone2_filterArrow_list">
		                    <a href="/mw/bolgguriSearch?areaCode=${areaCode }&cat1=${cat1}&filterNo=1" data-bg="#fff"><span>기본순</span></a>
		                    <div class="content_zone2_filterArrow_hidden">
		                    	<div class="content_zone2_filterArrow_hidden_container">
			                    	<a href="/mw/bolgguriSearch?areaCode=${areaCode }&cat1=${cat1}&filterNo=2" data-bg="#00c8c3"><span>인기순</span></a>
			                        <a href="/mw/bolgguriSearch?areaCode=${areaCode }&cat1=${cat1}&filterNo=3" data-bg="#00c8c3"><span>높은 평점순</span></a>
			                        <a href="/mw/bolgguriSearch?areaCode=${areaCode }&cat1=${cat1}&filterNo=4" data-bg="#00c8c3"><span>낮은 평점순</span></a>
			                        <a href="/mw/bolgguriSearch?areaCode=${areaCode }&cat1=${cat1}&filterNo=5" data-bg="#00c8c3"><span>낮은 가격순</span></a>
			                        <a href="/mw/bolgguriSearch?areaCode=${areaCode }&cat1=${cat1}&filterNo=6" data-bg="#00c8c3"><span>리뷰 많은순</span></a>
		                        </div>
		                    </div>
		                </div>
	                    <span><img src="${pageContext.request.contextPath}/resources/imgMw/iconArrowDown.png" width="15"></span>
	                </div>
	                <div class="content_zone2_filterDetail">
	                    <img src="${pageContext.request.contextPath}/resources/imgMw/iconFilter.png" width="25">
	                </div>
	            </div>	
            </div>
		</div>
	</section>
	
	<section class="content_zone content_zone3">
		<div class="content_zone_wrap">
			<div class="content_zone3_container">
				<c:forEach var="mwBolgguriDto" items="${mwBolgguriDtos }">
			        <a href="/mw/crud?bolgguri_id=${mwBolgguriDto.bolgguri_id }" class="content_zone3_swiper" id="bolgguri_item">
			            <div class="content_zone3_img_container">
			                <img class="content_zone3_img" src="${mwBolgguriDto.firstImage2 }" onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/imgMw/imgDefault.png'" alt="Description">
			            </div>
			            <div class="content_zone3_info_container">
			            	<div class="content_zone3_title_reviewInfo_container">
				                <div class="content_zone3_title">
				                    <span>[${mwBolgguriDto.areaTitle }] ${mwBolgguriDto.title }</span>
				                </div>
				                <div class="content_zone3_reviewInfo">
				                    <span class="content_zone3_reviewInfo_iconStar">
				                        <img src="${pageContext.request.contextPath}/resources/imgMw/iconStar.jpg" width="15">
				                    </span>
				                    <span class="content_zone3_reviewInfo_score">${mwBolgguriDto.avg_score }</span>
				                    <span class="content_zone3_reviewInfo_count">(${mwBolgguriDto.review_count })</span>
				                    <span>${mwBolgguriDto.catTitle }</span>
				                </div>
			                </div>
			                <div class="content_zone3_price_container">
			                	<c:if test="${mwBolgguriDto.fee > 0 }">
				                    <div class="content_zone3_price">
				                        <span class="content_zone3_price_text1">
				                        	<fmt:formatNumber value="${mwBolgguriDto.fee}" type="number" pattern="#,###"/>
				                        </span>
				                        <span class="content_zone3_price_text2">원~</span>
				                    </div>
			                	</c:if>
			                    <c:if test="${mwBolgguriDto.fee == 0 }">
			                    	<div class="content_zone3_price2">
			                    		<span class="content_zone3_price_text1"></span>
				                        <span class="content_zone3_price_text2">무료</span>
			                    	</div>
			                    </c:if>
			                </div>
			            </div>
			        </a>
			    </c:forEach>
			</div>
		</div>
	</section>
	
	<section class="content_zone content_zone4">
		<div class="content_zone_wrap">
			<div class="content_zone4_container">
            	<button id="topBtn" title="Go to top">Top</button>
            </div>
		</div>
	</section>


	<%@ include file="/WEB-INF/views/include/normal_footer.jsp"%>
	
	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>
	
	<%@ include file="/WEB-INF/views/include/quick_footer.jsp"%>


</body>
</html>