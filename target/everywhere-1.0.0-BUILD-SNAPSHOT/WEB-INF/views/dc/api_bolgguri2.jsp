<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Send JSON to Server</title>
<style>
#form1 {
	border: 2px solid black;
	padding: '10px';
	marginTop: '10px';
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
	var arrange;
	var contentTypeId;
	
	var items; //json 데이타

	$(document).ready(function() {
		$('#getBolgguri').click(getBolgguri);
		$('#saveBolgguri').click(saveBolgguri);
		//$('#saveArea2').click(saveArea2);

	});

	var items;
	var resultMsg;
	function getBolgguri() {
		let resultMsg1;
		let resultCode1;
		let numOfRows1;
		let pageNo1;
		let totalCount1;
		
		alert("클릭");
		//입력값 확인
		url = $('#url').val();
		serviceKey = $("#serviceKey").val();
		numOfRows = $("#numOfRows").val();
		pageNo = $("#pageNo").val();
		MobileOS = $("#MobileOS").val();
		MobileApp = $("#MobileApp").val();
		_type = $("#_type").val();
		arrange = $("#arrange").val();
		contentTypeId = $("#contentTypeId").val();

		console.log(url + "?serviceKey=인증키&numOfRows=" + numOfRows
				+ "&pageNo=" + pageNo + "&MobileOS=" + MobileOS + "&MobileApp="
				+ MobileApp + "&_type=" + _type + "&arrange=" + arrange
				+ "&contentTypeId=" + contentTypeId);
		var myUrl = url + "?serviceKey=인증키&numOfRows=" + numOfRows
		+ "&pageNo=" + pageNo + "&MobileOS=" + MobileOS + "&MobileApp="
		+ MobileApp + "&_type=" + _type + "&arrange=" + arrange
		+ "&contentTypeId=" + contentTypeId;
		$(".url").text(myUrl);
		$.ajax({
			//url : 'http://apis.data.go.kr/B551011/KorService1/areaBasedList1?serviceKey=59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ%3D%3D&pageNo=1&numOfRows=10&MobileApp=AppTest&MobileOS=ETC&arrange=A&contentTypeId=32&_type=json', // 
			url : '/api/bolgguri_proxy', // 
			type : 'get',
			contentType : 'application/json; charset=UTF-8',
			dataType : "JSON",
			data : {
				url : url,
				serviceKey : serviceKey,
				numOfRows : numOfRows,
				pageNo : pageNo,
				contentTypeId : contentTypeId
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

				if (resultMsg1 == "OK") {
					
					numOfRows1=json.response.body.numOfRows;
					pageNo1=json.response.body.pageNo;
					totalCount1=json.response.body.totalCount;
					//console.log(numOfRows1,pageNo1,totalCount1);
					$(".numOfRows1").text("response.body.numOfRows :"+numOfRows1);
					$(".pageNo1").text("response.body.pageNo :"+pageNo1);
					$(".totalCount1").text("response.body.totalCount :"+totalCount1);

					items = json.response.body.items.item;
					var tableBody = $('#ajaxTable');
					$('#ajaxTable tbody').empty();
					
					$.each(items, function(index, item) {
						var newRow = $('<tr></tr>');
						newRow.append($('<td></td>').text(item.addr1));
						newRow.append($('<td></td>').text(item.addr2));
						newRow.append($('<td></td>').text(item.areacode));
						newRow.append($('<td></td>').text(item.booktour));
						newRow.append($('<td></td>').text(item.cat1));
						newRow.append($('<td></td>').text(item.cat2));
						newRow.append($('<td></td>').text(item.cat3));
						newRow.append($('<td></td>').text(item.contentid));
						newRow.append($('<td></td>').text(item.contenttypeid));
						newRow.append($('<td></td>').text(item.createdtime));
						newRow.append($('<td></td>').text(item.firstimage));
						newRow.append($('<td></td>').text(item.firstimage2));
						newRow.append($('<td></td>').text(item.cpyrhtDivCd));
						newRow.append($('<td></td>').text(item.mapx));
						newRow.append($('<td></td>').text(item.mapy));
						newRow.append($('<td></td>').text(item.mlevel));
						newRow.append($('<td></td>').text(item.modifiedtime));
						newRow.append($('<td></td>').text(item.sigungucode));
						newRow.append($('<td></td>').text(item.tel));
						newRow.append($('<td></td>').text(item.title));

						tableBody.append(newRow);
					});

				}

			},
			error : function(xhr, textStatus, errorThrown) {
				alert('Error: ' + errorThrown);
				$(".error1").html(
						"<div>" + textStatus + " (HTTP-" + xhr.status + " / " + errorThrown
								+ ")</div>");
			}
		});
	}

	function saveBolgguri() {
		alert("sending....");
		//event.preventDefault();
		// Ajax 
		$.ajax({
			url : '/ajax/insertAPI_bolgguri', // 
			type : 'POST',
			contentType : 'application/json',
			data : JSON.stringify(items),
			//dataType : "JSON",
			success : function(response) {
				alert('Data insert successfully!');
			},
			error : function(xhr, Status, error) {
				alert('Error: ' + error);
			}
		});
	}
</script>
</head>
<body>
	<h1>API_BOLGGURI(볼꺼리): 지역기반 데이타</h1>
	<hr>
	<div id="form1">
		url:<input id="url" size=50 value="http://apis.data.go.kr/B551011/KorService1/areaBasedList1" readonly><br> 
		serviceKey:<input	id="serviceKey" size=100 value="59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ==" readonly><br>
		numOfRows:<input id="numOfRows" value="100"><br> 
		pageNo:<input id="pageNo" value="1"><br> 
		MobileOS: 
		<select id="MobileOS">
			<option value="IOS" >IOS (아이폰)</option>
			<option value="AND" >AND (안드로이드)</option>
			<option value="WIN" >WIN (윈도우폰)</option>
			<option value="ETC" selected>ETC</option>
		</select><br> 
		MobileApp: 
		<select id="MobileApp">
			<option value="AppTest">AppTest</option>
		</select><br>
		arrange:<input id="arrange" value="A"><br>
		contentTypeId:<input id="contentTypeId" value="32"><br>  
		_type: 
		<select id="_type">
			<option value="json">json</option>
		</select><br>
		  
		<button type="button" id="getBolgguri" class="getBolgguri">proxy 볼꺼리 공공데이타에서 가져오기</button>
		<button type="button" id="saveBolgguri" class="saveBolgguri">DB 저장</button>
	</div>
	
	<div id="content1" class="contentsBox">
	  <div class="url"></div><hr>
		<div class="resultCode1">resultCode1:</div>
		<div class="resultMsg1">resultMsg1:</div>
		<div class="numOfRows1">numOfRows1:</div>
		<div class="pageNo1">pageNo1:</div>
		<div class="totalCount1">totalCount1:</div>
		<div class="error1">error1:</div>
	<table id="ajaxTable" border=1>
		<thead>
			<tr>
				<th>addr1</th>
				<th>addr2</th>
				<th>areacode</th>
				<th>booktour</th>
				<th>cat1</th>
				<th>cat2</th>
				<th>cat3</th>
				<th>contentid</th>
				<th>contenttypeid</th>
				<th>createdtime</th>
				<th>firstimage</th>
				<th>firstimage2</th>
				<th>cpyrhtDivCd</th>
				<th>mapx</th>
				<th>mapy</th>
				<th>mlevel</th>
				<th>modifiedtime</th>
				<th>sigungucode</th>
				<th>tel</th>
				<th>title</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	</div>
</body>
</html>
