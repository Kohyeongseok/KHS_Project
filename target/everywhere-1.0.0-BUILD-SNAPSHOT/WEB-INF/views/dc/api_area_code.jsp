<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>지역 코드 가져오기</title>
<style>
#form1 {
	border: 2px solid black;
	padding: '10px';
	marginTop: '10px';
}

h1 {
	background-color: yellow;
}
.contentsBox {
	float: left;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
var url;
var serviceKey;
var numOfRows;
var pageNo;
var MobileOS;
var MobileApp;
var _type;

var cat1;
var cat2;
var tableData=[];

	$(document).ready(function() {
		$('#getArea1').click(getArea1);
		$('#saveArea1').click(saveArea1);
		$('#saveArea2').click(saveArea2);

	});
	//지역코드 저장
	function saveArea1(){
		alert("save Area Code....");
		$.ajax({
			url : '/ajax/insertAPI_area_code', // 
			type : 'POST',
			contentType : 'application/json',
			data : JSON.stringify(cat1),
			//dataType : "JSON",
			success : function(response) {
				alert('Data sent successfully!');
			},
			error : function(xhr, Status, error) {
				alert('Error: ' + error);
			}
		});		
	}
	//시군구 코드 저장
	function saveArea2(){
		alert("save Area Code....");
		$.ajax({
			url : '/ajax/insertAPI_sigungu_code', // 
			type : 'POST',
			contentType : 'application/json',
			data : JSON.stringify(tableData),
			//dataType : "JSON",
			success : function(response) {
				alert('Data sent successfully!');
			},
			error : function(xhr, Status, error) {
				alert('Error: ' + error);
			}
		});		
	}
	
	//지역코드 가져오기
	function getArea1() {
		
		let resultMsg1;
		let resultCode1;
		let numOfRows1;
		let pageNo1;
		let totalCount1;
		//입력값 확인
		url = $('#url').val();
		serviceKey = $("#serviceKey").val();
		numOfRows = $("#numOfRows").val();
		pageNo = $("#pageNo").val();
		MobileOS = $("#MobileOS").val();
		MobileApp = $("#MobileApp").val();
		_type = $("#_type").val();
		console.log(url + "?serviceKey=" + serviceKey + "&numOfRows=" + numOfRows
				+ "&pageNo=" + pageNo + "&MobileOS=" + MobileOS + "&MobileApp="
				+ MobileApp + "&_type=" + _type);
		//ajax 호출
		$.ajax({
			//url : 'resources/dc/cat_code_cat1.json', //
			//url : 'http://apis.data.go.kr/B551011/KorService1/categoryCode1?serviceKey=59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ%3D%3D&numOfRows=100&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json',
			url : '/api/external-data2', //
			type : 'get',
			contentType : 'application/json; charset=UTF-8',
			dataType : "JSON",
			data: {
				url: url,
				serviceKey: serviceKey,
				numOfRows: numOfRows,
				pageNo: pageNo				
			},
			success : function(json) {
				alert('Data get successfully!');
				//공공데이타 조회 결과값 표시 
				resultCode1 = json.response.header.resultCode;
				resultMsg1 = json.response.header.resultMsg;
				$(".resultCode1").text(
						"response.header.resultMsg :" + resultCode1);
				$(".resultMsg1").text(
						"response.header.resultMsg :" + resultMsg1);
				numOfRows1 = json.response.body.numOfRows;
				pageNo1 = json.response.body.pageNo;
				totalCount1 = json.response.body.totalCount;

				if (resultMsg1 == "NO_DATA") {
					$(".error1").text("Error 없음");
				} else if (resultMsg1 == "OK") {
					$(".numOfRows1").text("response.body.numOfRows :" + numOfRows1);
					$(".pageNo1").text("response.body.pageNo :" + pageNo1);
					$(".totalCount1").text("response.body.totalCount :" + totalCount1);

					cat1 = json.response.body.items.item;//json 데이타
					var tableBody = $('#cat1Table');
					let etc = "";
					$.each(cat1, function(index, item) {
						etc = "";
						var newRow = $('<tr></tr>');
						newRow.append($('<td></td>').text(item.rnum));
						newRow.append($('<td></td>').text(item.code));
						newRow.append($('<td></td>').text(item.name));
/* 						if ((item.code).length == 3) {
							cat = "cat2";
						} else if ((item.code).length == 5) {
							cat = "cat3";
						}*/
						etc = "<button type='button' onclick=\"myAjaxFunction('"+ item.code + "')\">중분류 조회</button>";
						
						newRow.append($('<td></td>').html(etc));

						tableBody.append(newRow);
					});

				}

			},
			error : function(xhr, textStatus, errorThrown) {
				alert('Error: ' + errorThrown);
				$(".error1").html(
						"<div>" + textStatus + " (HTTP-" + xhr.status + " / "
								+ errorThrown + ")</div>");
			}
		});
		
	}
	//시군구 코드 가져오기
	function myAjaxFunction(areaCode) {
		alert('myAjaxFunction excuting....');
		$.ajax({
			url : '/api/external-data2', 
			type : 'get',
			contentType : 'application/json; charset=UTF-8',
			data:{
				url: url,
				serviceKey: serviceKey,
				numOfRows: numOfRows,
				pageNo: pageNo,	
				areaCode: areaCode
			},
			dataType : "JSON",
			success : function(json) {
				alert('Data get successfully!');
				resultCode2 = json.response.header.resultCode;
				resultMsg2 = json.response.header.resultMsg;
				$(".resultCode2").text("response.header.resultCode2 :"+resultCode2);
				$(".resultMsg2").text("response.header.resultMsg2 :"+resultMsg2);

				
				if (resultMsg2 == "NO_DATA") {
					$(".error").text("Error 없음");
				} else if (resultMsg2 == "OK") {
					
					numOfRows2=json.response.body.numOfRows;
					pageNo2=json.response.body.pageNo;
					totalCount2=json.response.body.totalCount;
					$(".numOfRows2").text("response.body.numOfRows :"+numOfRows2);
					$(".pageNo2").text("response.body.pageNo :"+pageNo2);
					$(".totalCount2").text("response.body.totalCount :"+totalCount2);

					cat2 = json.response.body.items.item;
					var tableBody2 = $('#cat2Table');
					//테이블 초기화
					tableData=[];
					$('#cat2Table').empty();
					var thead =$("<thead><tr><th>areaCode</th><th>RNUM</th><th>sigunguCode</th><th>NAME</th></tr></thead>");
					tableBody2.append(thead);
					
					$.each(cat2, function(index, item) {
						/* cat2[index].areacode = areaCode; */
						var newRow = $('<tr></tr>');
						newRow.append($('<td></td>').text(areaCode));
						newRow.append($('<td></td>').text(item.rnum));
						newRow.append($('<td></td>').text(item.code));
						newRow.append($('<td></td>').text(item.name));

						tableBody2.append(newRow);
						
						var rowData={
								areaCode:areaCode,
								rnum: item.rnum,
								sigunguCode:item.code,
								name:item.name
						}
						tableData.push(rowData);
					});

				}

			},
			error : function(xhr, textStatus, errorThrown) {
				alert('Error: ' + error);
				$(".error").html(
						"<div>" + textStatus + " (HTTP-" + xhr.status + " / "
								+ errorThrown + ")</div>");
			}
		});
	}
</script>
</head>
<body>
	<h1>API_AREA_CODE(지역코드, 시군구 코드)</h1>
	<hr>
	<div id="form1">
		url:<input id="url" size=50 value="http://apis.data.go.kr/B551011/KorService1/areaCode1" readonly><br> serviceKey:<input
			id="serviceKey" size=100 value="59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ==" readonly><br>
		numOfRows:<input id="numOfRows" value="100"><br> 
		pageNo:<input id="pageNo" value="1"><br> 
		MobileOS: <select id="MobileOS">
			<option value="IOS" selected>IOS (아이폰)</option>
			<option value="AND" selected>AND (안드로이드)</option>
			<option value="WIN" selected>WIN (윈도우폰)</option>
			<option value="ETC" selected>ETC</option>
		</select><br> 
		MobileApp: <select id="MobileApp">
			<option value="AppTest">AppTest</option>
		</select><br> 
		_type: <select id="_type">
			<option value="json">json</option>
		</select><br>
		<button type="button" id="getArea1" class="getArea1">proxy 지역코드 조회</button>
	</div>


		<button type="button" id="saveArea1" class="saveArea1">지역코드 저장</button>
		<br>
		<button type="button" id="saveArea2" class="saveArea2">시군구 코드 저장</button>
		<hr>
		<div class="result"></div>
		<div class="error"></div>
		<hr>
	<div id="content1" class="contentsBox">
		<div class="resultCode1"></div>
		<div class="resultMsg1"></div>
		<div class="numOfRows1"></div>
		<div class="pageNo1"></div>
		<div class="totalCount1"></div>
		<div class="error1"></div>
		<table id="cat1Table" border=1>
			<thead>
				<tr>
					<th>RNUM</th>
					<th>CODE</th>
					<th>NAME</th>
					<th>etc</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
	<div id="content2" class="contentsBox">
		<div class="resultCode2"></div>
		<div class="resultMsg2"></div>
		<div class="numOfRows2"></div>
		<div class="pageNo2"></div>
		<div class="totalCount2"></div>
		<div class="error2"></div>
		<table id="cat2Table" border=1>
			<thead>
				<tr>
					<th>areaCode</th>
					<th>RNUM</th>
					<th>sigunguCode</th>
					<th>NAME</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
	<div id="content3" class="contentsBox">
		<div class="resultCode3"></div>
		<div class="resultMsg3"></div>
		<div class="numOfRows3"></div>
		<div class="pageNo3"></div>
		<div class="totalCount3"></div>
		<div class="error3"></div>
		<table id="cat3Table" border=1>
			<thead>
				<tr>
					<th>areaCode</th>
					<th>RNUM</th>
					<th>CODE</th>
					<th>NAME</th>
					
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
	<script>


	</script>
</body>
</html>
