<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨텐츠 이미지</title>
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
var contentId;

var items; //json 데이타
var resultMsg;

$(document).ready(function() {
	$('#getImage').click(getImage);
	$('#saveImage').click(saveImage);
	$('#autoImage').click(autoImage);

});
function autoImage(){
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
	contentId = $("#contentId").val();

	var myUrl = url + "?serviceKey=인증키&numOfRows=" + numOfRows + "&pageNo="
			+ pageNo + "&MobileOS=" + MobileOS + "&MobileApp=" + MobileApp
			+ "&_type=" + _type + "&contentId=" + contentId;
	$(".url").text(myUrl);
	$.ajax({ 
		url : '/api/API_image_proxy', // 
		type : 'get',
		contentType : 'application/json; charset=UTF-8',
		dataType : "JSON",
		data : {
			mode: 2,
			url : url,
			serviceKey : serviceKey,
			numOfRows : numOfRows,
			pageNo : pageNo,
			contentId: contentId
		},
		success : function(json) {
			alert('Data get successfully!');
			//공공데이타 조회 결과값 표시 
			resultCode1 = json.response.header.resultCode;
			resultMsg1 = json.response.header.resultMsg;
			$(".resultCode1").text("response.header.resultMsg :" + resultCode1);
			$(".resultMsg1").text("response.header.resultMsg :" + resultMsg1);

			if (resultMsg1 == "OK") {

				numOfRows1 = json.response.body.numOfRows;
				pageNo1 = json.response.body.pageNo;
				totalCount1 = json.response.body.totalCount;
				//console.log(numOfRows1,pageNo1,totalCount1);
				$(".numOfRows1").text("response.body.numOfRows :" + numOfRows1);
				$(".pageNo1").text("response.body.pageNo :" + pageNo1);
				$(".totalCount1").text("response.body.totalCount :" + totalCount1);

				items = json.response.body.items.item;
				console.log("response itemJson: ",items);
				var tableBody = $('#ajaxTable');
				$('#ajaxTable').empty();
				var thead =$("<thead><tr>"
										+"<th>CONTENTID    </th>"
				            +"<th>IMGNAME      </th>"
				            +"<th>ORIGINIMGURL </th>"
				            +"<th>SERIALNUM    </th>"
				            +"<th>CPYRHTDIVCD  </th>"
				            +"<th>SMALLIMAGEURL</th>"	
				            +"</tr></thead>");
				tableBody.append(thead);

				$.each(items, function(index, item) {
					var newRow = $('<tr></tr>');
					newRow.append($('<td></td>').text(item.contentid    ));
					newRow.append($('<td></td>').text(item.imgname      ));
					newRow.append($('<td></td>').text(item.originimgurl ));
					newRow.append($('<td></td>').text(item.serialnum    ));
					newRow.append($('<td></td>').text(item.cpyrhtDivCd  ));
					newRow.append($('<td></td>').text(item.smallimageurl));
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


function getImage() {
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
	contentId = $("#contentId").val();

	var myUrl = url + "?serviceKey=인증키&numOfRows=" + numOfRows + "&pageNo="
			+ pageNo + "&MobileOS=" + MobileOS + "&MobileApp=" + MobileApp
			+ "&_type=" + _type + "&contentId=" + contentId;
	$(".url").text(myUrl);
	$.ajax({ 
		url : '/api/API_image_proxy', // 
		type : 'get',
		contentType : 'application/json; charset=UTF-8',
		dataType : "JSON",
		data : {
			mode:1,
			url : url,
			serviceKey : serviceKey,
			numOfRows : numOfRows,
			pageNo : pageNo,
			contentId: contentId
		},
		success : function(json) {
			alert('Data get successfully!');
			//공공데이타 조회 결과값 표시 
			resultCode1 = json.response.header.resultCode;
			resultMsg1 = json.response.header.resultMsg;
			$(".resultCode1").text("response.header.resultMsg :" + resultCode1);
			$(".resultMsg1").text("response.header.resultMsg :" + resultMsg1);

			if (resultMsg1 == "OK") {

				numOfRows1 = json.response.body.numOfRows;
				pageNo1 = json.response.body.pageNo;
				totalCount1 = json.response.body.totalCount;
				//console.log(numOfRows1,pageNo1,totalCount1);
				$(".numOfRows1").text("response.body.numOfRows :" + numOfRows1);
				$(".pageNo1").text("response.body.pageNo :" + pageNo1);
				$(".totalCount1").text("response.body.totalCount :" + totalCount1);

				items = json.response.body.items.item;
				console.log("response itemJson: ",items);
				var tableBody = $('#ajaxTable');
				$('#ajaxTable').empty();
				var thead =$("<thead><tr>"
										+"<th>CONTENTID    </th>"
				            +"<th>IMGNAME      </th>"
				            +"<th>ORIGINIMGURL </th>"
				            +"<th>SERIALNUM    </th>"
				            +"<th>CPYRHTDIVCD  </th>"
				            +"<th>SMALLIMAGEURL</th>"	
				            +"</tr></thead>");
				tableBody.append(thead);

				$.each(items, function(index, item) {
					var newRow = $('<tr></tr>');
					newRow.append($('<td></td>').text(item.contentid    ));
					newRow.append($('<td></td>').text(item.imgname      ));
					newRow.append($('<td></td>').text(item.originimgurl ));
					newRow.append($('<td></td>').text(item.serialnum    ));
					newRow.append($('<td></td>').text(item.cpyrhtDivCd  ));
					newRow.append($('<td></td>').text(item.smallimageurl));
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

function saveImage() {
	alert("sending....");
	//event.preventDefault();
	// Ajax 
	$.ajax({
		url : '/ajax/insertAPI_contentImage', // 
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
	<h1>API_CONTENT_IMAGE(이미지 자료)</h1>
	<hr>
	<div id="form1">
		url:<input id="url" size=90 value="https://apis.data.go.kr/B551011/KorService1/detailImage1" readonly><br> 
		serviceKey:<input id="serviceKey" size=100 value="59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ=="><br>
		numOfRows:<input id="numOfRows" value="10"><br> 
		pageNo:<input id="pageNo" value="1"><br> 
		MobileOS: <select id="MobileOS">
			<option value="IOS">IOS (아이폰)</option>
			<option value="AND">AND (안드로이드)</option>
			<option value="WIN">WIN (윈도우폰)</option>
			<option value="ETC" selected>ETC</option>
		</select><br> MobileApp: <select id="MobileApp">
			<option value="AppTest">AppTest</option>
		</select><br> contentTypeId:<input id="contentTypeId" value="12"><br> 
		<strong>contentId:</strong><input id="contentId" value='127168'><==== <br>
		_type: 
		<select id="_type">
			<option value="json">json</option>
		</select><br>

		<button type="button" id="getImage" class="getImage">이미지 자료 가져오기(proxy)</button>
		<button type="button" id="saveImage" class="saveImage">DB 저장</button>
		<button type="button" id="autoImage" class="autoImage">자동 저장</button>
	</div>

	<div id="content1" class="contentsBox">
		<div class="url"></div>
		<hr>
		<div class="resultCode1">resultCode:</div>
		<div class="resultMsg1">resultMsg:</div>
		<div class="numOfRows1">numOfRows:</div>
		<div class="pageNo1">pageNo:</div>
		<div class="totalCount1">totalCount:</div>
		<div class="error1">error:</div>
		<table id="ajaxTable" border=1></table>
	</div>
</body>
</html>