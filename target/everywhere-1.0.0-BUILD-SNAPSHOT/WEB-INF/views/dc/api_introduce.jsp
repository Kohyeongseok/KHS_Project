<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	var contentId;

	var items; //json 데이타
	var resultMsg;
	
	$(document).ready(function() {
		$('#getIntroduce').click(getIntroduce);
		$('#saveIntroduce').click(saveIntroduce);
		$('#saveAuto').click(saveAuto);

	});


	function saveAuto() {
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
		contentId = $("#contentId").val();

		console.log(url + "?serviceKey=인증키&numOfRows=" + numOfRows + "&pageNo="
				+ pageNo + "&MobileOS=" + MobileOS + "&MobileApp=" + MobileApp
				+ "&_type=" + _type + "&contentId=" + contentId + "&contentTypeId="
				+ contentTypeId);
		var myUrl = url + "?serviceKey=인증키&numOfRows=" + numOfRows + "&pageNo="
				+ pageNo + "&MobileOS=" + MobileOS + "&MobileApp=" + MobileApp
				+ "&_type=" + _type + "&contentId=" + contentId + "&contentTypeId="
				+ contentTypeId;
		$(".url").text(myUrl);
		$.ajax({ 
			url : '/api/introduce_proxy', // 
			type : 'get',
			contentType : 'application/json; charset=UTF-8',
			dataType : "JSON",
			data : {
				mode: 2,
				url : url,
				serviceKey : serviceKey,
				numOfRows : numOfRows,
				pageNo : pageNo,
				contentTypeId : contentTypeId,
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
					var tableBody = $('#ajaxTable');
					$('#ajaxTable').empty();
					var thead =$("<thead><tr>"
											+"<th>CONTENTID        </th>"
					            +"<th>CONTENTTYPEID    </th>"
					            +"<th>HERITAGE1        </th>"
					            +"<th>HERITAGE2        </th>"
					            +"<th>HERITAGE3        </th>"
					            +"<th>INFOCENTER       </th>"
					            +"<th>OPENDATE         </th>"
					            +"<th>RESTDATE         </th>"
					            +"<th>USESEASON        </th>"
					            +"<th>USETIME          </th>"
					            +"<th>PARKING          </th>"
					            +"<th>ACCOMCOUNT       </th>"
					            +"<th>CHKBABYCARRIAGE  </th>"
					            +"<th>CHKCREDITCARD    </th>"
					            +"<th>CHKPET           </th>"
					            +"<th>EXPAGERANGE      </th>"
					            +"<th>EXPGUIDE         </th>"			
					            +"</tr></thead>");
					tableBody.append(thead);

					$.each(items, function(index, item) {
						var newRow = $('<tr></tr>');
						newRow.append($('<td></td>').text(item.contentid));
						newRow.append($('<td></td>').text(item.contenttypeid));
						newRow.append($('<td></td>').text(item.heritage1));
						newRow.append($('<td></td>').text(item.heritage2));
						newRow.append($('<td></td>').text(item.heritage3));
						newRow.append($('<td></td>').text(item.infocenter));
						newRow.append($('<td></td>').text(item.opendate));
						newRow.append($('<td></td>').text(item.restdate));
						newRow.append($('<td></td>').text(item.useseason));
						newRow.append($('<td></td>').text(item.usetime));
						newRow.append($('<td></td>').text(item.parking));
						newRow.append($('<td></td>').text(item.accomcount));
						newRow.append($('<td></td>').text(item.chkbabycarriage));
						newRow.append($('<td></td>').text(item.chkcreditcard));
						newRow.append($('<td></td>').text(item.chkpet));
						newRow.append($('<td></td>').text(item.expagerange));
						newRow.append($('<td></td>').text(item.expguide));

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
	
	function getIntroduce() {
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
		contentId = $("#contentId").val();

		console.log(url + "?serviceKey=인증키&numOfRows=" + numOfRows + "&pageNo="
				+ pageNo + "&MobileOS=" + MobileOS + "&MobileApp=" + MobileApp
				+ "&_type=" + _type + "&contentId=" + contentId + "&contentTypeId="
				+ contentTypeId);
		var myUrl = url + "?serviceKey=인증키&numOfRows=" + numOfRows + "&pageNo="
				+ pageNo + "&MobileOS=" + MobileOS + "&MobileApp=" + MobileApp
				+ "&_type=" + _type + "&contentId=" + contentId + "&contentTypeId="
				+ contentTypeId;
		$(".url").text(myUrl);
		$.ajax({ 
			url : '/api/introduce_proxy', // 
			type : 'get',
			contentType : 'application/json; charset=UTF-8',
			dataType : "JSON",
			data : {
				mode: 1,
				url : url,
				serviceKey : serviceKey,
				numOfRows : numOfRows,
				pageNo : pageNo,
				contentTypeId : contentTypeId,
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
					var tableBody = $('#ajaxTable');
					$('#ajaxTable').empty();
					var thead =$("<thead><tr>"
											+"<th>CONTENTID        </th>"
					            +"<th>CONTENTTYPEID    </th>"
					            +"<th>HERITAGE1        </th>"
					            +"<th>HERITAGE2        </th>"
					            +"<th>HERITAGE3        </th>"
					            +"<th>INFOCENTER       </th>"
					            +"<th>OPENDATE         </th>"
					            +"<th>RESTDATE         </th>"
					            +"<th>USESEASON        </th>"
					            +"<th>USETIME          </th>"
					            +"<th>PARKING          </th>"
					            +"<th>ACCOMCOUNT       </th>"
					            +"<th>CHKBABYCARRIAGE  </th>"
					            +"<th>CHKCREDITCARD    </th>"
					            +"<th>CHKPET           </th>"
					            +"<th>EXPAGERANGE      </th>"
					            +"<th>EXPGUIDE         </th>"			
					            +"</tr></thead>");
					tableBody.append(thead);

					$.each(items, function(index, item) {
						var newRow = $('<tr></tr>');
						newRow.append($('<td></td>').text(item.contentid));
						newRow.append($('<td></td>').text(item.contenttypeid));
						newRow.append($('<td></td>').text(item.heritage1));
						newRow.append($('<td></td>').text(item.heritage2));
						newRow.append($('<td></td>').text(item.heritage3));
						newRow.append($('<td></td>').text(item.infocenter));
						newRow.append($('<td></td>').text(item.opendate));
						newRow.append($('<td></td>').text(item.restdate));
						newRow.append($('<td></td>').text(item.useseason));
						newRow.append($('<td></td>').text(item.usetime));
						newRow.append($('<td></td>').text(item.parking));
						newRow.append($('<td></td>').text(item.accomcount));
						newRow.append($('<td></td>').text(item.chkbabycarriage));
						newRow.append($('<td></td>').text(item.chkcreditcard));
						newRow.append($('<td></td>').text(item.chkpet));
						newRow.append($('<td></td>').text(item.expagerange));
						newRow.append($('<td></td>').text(item.expguide));

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

	function saveIntroduce() {
		alert("sending....");
		//event.preventDefault();
		// Ajax 
		$.ajax({
			url : '/ajax/insertAPI_introduce', // 
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
	<h1>API_INTRO12(소개자료)</h1>
	<hr>
	<div id="form1">
		url:<input id="url" size=90 value="https://apis.data.go.kr/B551011/KorService1/detailIntro1" readonly><br> serviceKey:<input
			id="serviceKey" size=100 value="59DlkKuPMMfiNa2kZi8dOfwyWyk6luQkC5Zim5MJJjGavqqvvO5a8WGJnSYdQq0Wj7FnW5a3tZCi96mEbnlohQ=="><br>
		numOfRows:<input id="numOfRows" value="1"><br> pageNo:<input id="pageNo" value="1"><br> MobileOS: <select id="MobileOS">
			<option value="IOS">IOS (아이폰)</option>
			<option value="AND">AND (안드로이드)</option>
			<option value="WIN">WIN (윈도우폰)</option>
			<option value="ETC" selected>ETC</option>
		</select><br> MobileApp: <select id="MobileApp">
			<option value="AppTest">AppTest</option>
		</select><br> contentTypeId:<input id="contentTypeId" value="12"><br> 
		<strong>contentId:</strong><input id="contentId" value='126023'><==== <br>
		_type: <select id="_type">
			<option value="json">json</option>
		</select><br>

		<button type="button" id="getIntroduce" class="getIntroduce">proxy 공공데이타에서 소개자료 가져오기</button>
		<button type="button" id="saveIntroduce" class="saveIntroduce">DB 저장</button>
		<button type="button" id="saveAuto" class="saveAuto">자동 조회/저장</button>
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
		<table id="ajaxTable" border=1>
		</table>
	</div>
</body>
</html>