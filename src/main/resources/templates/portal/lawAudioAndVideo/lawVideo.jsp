<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/psles-taglib.jsp"%>
<%@include file="/WEB-INF/views/common/psles-header.jsp"%>
<style type="text/css">			
	*{
		margin: 0;
		padding: 0;
		border: 0px;
	}
	body{
		width: 100%;
		overflow: hidden;
		background: url(<%=request.getContextPath()%>/img/video.png)no-repeat;
		background-size: cover;
        background-repeat: no-repeat;
		position: relative;
		color: #FFFFFF;
	}
	.queryCondition{
		width:99%;
		height: 15%;
		color: #90a6b7;
		font-size: 10px;
		display: flex;
		flex-direction: row;
		align-items: center;
		margin-top: 1%;
		
	}
	.queryCondition div{
		display: flex;
		flex-direction: column;
		align-items: flex-start;
		margin-left:10px;
	}
	.selectBtn{
		width: 70px;
		text-align: center;
		border: 1px solid rgba(144,166,183,0.3);
		color: rgba(144,166,183,0.5);
		cursor: pointer;
		margin-top: 20px;
		height: 30px;
	}
	select,input{
		height: 30px;
		background: transparent;
		margin-top: 5%;
		width: 150px;
		border: 1px solid rgba(144,166,183,0.3);
		color: #FFFFFF;
		padding-left: 2%;
		vertical-align:middle;
	}
	.queryCondition p{
		font-size: 10px;
	}
	 input::-webkit-input-placeholder{
	 	color: rgba(144,166,183,0.5);
	 }
	 select{
	 	color: rgba(144,166,183,0.5)
	 }
	 table{
	 	font-size: 10px;
	 	color: rgba(144,166,183,0.8);
	 	width: 99%;
	 	margin: 2% 3% 0% 0%;
	 	text-align: left;
	 }
	 th{			 
	 	font-weight: normal;
	 	height:35px;
	 	line-height: 35px;	
	 	cursor: default;		 	
	 }
	 tr{
	 	cursor: default;
	 }
	 tr:nth-child(2n+1){
	 	background: rgba(144,166,183,0.1);
	 }
	 tr:nth-child(2n){
	 	background: transparent;
	 }
	 td{				
	 	height: 35px;
	 	line-height: 35px;
	 }
	 tr td:nth-child(1), tr th:nth-child(1){
	 	padding-left: 10px;
	 }
	 tr:nth-child(0):hover{
	 	background: rgba(144,166,183,0.1);
	 }
	 tr:hover{
	 	background: rgba(68,255,255, 0.25);
	 }
	 .returnImg{
		width:30px;
		margin-top: 0.5%;
		margin-left: 1%;
		cursor: pointer;
	}
	 
	 .layout{
	 	width: 98%;
	 	height: 91%;
	 	margin: auto;
	 	margin-top: 1%;			 
	 	display: flex;
	 	justify-content: space-between;
	 }
	 .leftInfo{
	 	width: 75%;
	 	height: 93%;
	 	background: url(<%=request.getContextPath()%>/img/listvideo.png)no-repeat;
	 	background-size: 100% 100%;	 
	 	padding: 1.5%;	
	 }
	 .rightInfo{
	 	width: 24%;
	 	height: 99%;
	 	margin-left: 1%;			 
	 	display: flex;
	 	flex-direction: column;	 
	 }
	 .videoInfor{
	 	width: 100%;
	 	height: 35%;
	 	position: relative;	
	 	background: url(<%=request.getContextPath()%>/img/v.png)no-repeat;
	 	background-size: 100% 100%;	 	
	 }
	 .basicInfo{
	 	width: 93%;
	 	height:60%;
	 	margin-top: 5%;
	 	background: url(<%=request.getContextPath()%>/img/basicv.png)no-repeat;
	 	background-size: 100% 100%;	 	
	 	padding:2% 4%;
	 	/*border: 1px solid green;*/
	 }
	 .basicInfoBox {
	 	height:100%;		 	
	 	width: 100%;
	 	/*border: 1px solid red;*/
	 }
	 .basicInfo p{
	 	color: rgba(144,166,183,0.8);
	 	font-size: 10px;
	 	height: 6.5%;
	 	display: flex;
	 	justify-content: space-between;
	 	align-items: flex-start;
	 	
	 }
	 .basicInfo p:nth-child(1){
	 	color: #FFFFFF;
	 	font-size: 15px;			 	
	 }		
	 .basicInfo p span:nth-child(1){
	 	width: 30%;
	 }
	  .basicInfo p span:nth-child(2){
	 	width: 67%;			 	
	 }
    #videoId {
    	margin-top: 5%;
    	margin-left: 5%;
    }
    .option{
    	background: #132456;
    	color: #FFFFFF;
    }
    tr.on td{
		background: rgba(68,255,255, 0.25);
	}
	
	.pageBox{
       	height: 50px;
	 	display: flex;
		flex-direction: row;
		justify-content: space-between;
		align-items: center;
	}
	.rightPage span{
		border: 1px solid rgba(144,166,183,0.3);
		width: 100px;
		color:#90a6b7;   			
		cursor: pointer;
		font-size: 12px;	
		height:30px;
		text-align: center;
		line-height: 30px;
     }	       
    .rightPage span:hover{
         cursor: pointer;
         color: #FFFFFF;
     }
     .allPages{	        	
     	color: #FFFFFF;	     
     }
     .curpage{	        	
     	color: #FFFFFF;	     
     }
     .pageBox p{
     	color: #90a6b7;	
     	font-size: 12px; 
     }
     .rightPage{
     	display: flex;
		justify-content: flex-end;
		align-items: center;
		margin-right: 25px;
	}
	.rightPage span {
		margin-right: 4%;
	}
	
	/*?????????*/
	#popLayer {
		display: none;
		background-color: #B3B3B3;
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		z-index: 10;
		-moz-opacity: 0.8;
		opacity:.40;
		filter: alpha(opacity=80);/* ?????????IE6???7???8???9 */
	}

	/*?????????*/
	#popBox {
		display: none;
		background-color: #FFFFFF;
		z-index: 11;
		width: 1200px;
		height: 600px;
		position:fixed;
		top:0;
		right:0;
		left:0;
		bottom:0;
		margin:auto;
	}
	
	.modal-header {
	    padding: 5px;
	    border-bottom: 1px solid #e5e5e5;
	    text-align: center;
	}
	
	.modal-header h5 {
	    font-size: 18px;
		font-family: inherit;
    	font-weight: 500;
    	line-height: 1.1;
    	color: black;
	}
	
	.modal-title {
	    margin: 0;
	    line-height: 1.42857143;
	}
	
	.modal-footer {
	    padding: 5px;
	    text-align: right;
	    border-top: 1px solid #e5e5e5;
	}
	
	.btn {
	    display: inline-block;
	    padding: 6px 12px;
	    margin-bottom: 0;
	    font-size: 14px;
	    font-weight: 400;
	    line-height: 1.42857143;
	    text-align: center;
	    white-space: nowrap;
	    vertical-align: middle;
	    -ms-touch-action: manipulation;
	    touch-action: manipulation;
	    cursor: pointer;
	    -webkit-user-select: none;
	    -moz-user-select: none;
	    -ms-user-select: none;
	    user-select: none;
	    background-image: none;
	    border: 1px solid transparent;
	    border-radius: 4px;
	}
	
	.btn-primary {
	    color: #fff;
	    background-color: #337ab7;
	    border-color: #2e6da4;
	}
	
	.queryCondition{
		width:99%;
		color: #90a6b7;
		font-size: 10px;
		display: flex;
		flex-direction: row;
		align-items: center;
		margin-top: 1%;
	}
	.queryCondition div{
		width: 18%;
		height: 80%;
		display: flex;
		flex-direction: column;
		align-items: flex-start;
	}
	.queryBtn{
		width: 70px;
		text-align: center;
		border: 1px solid rgba(144,166,183,0.3);
		color: rgba(144,166,183,0.5);
		cursor: pointer;
		margin-top: 10%;
		height:30px;
	}
	select,input{
		height: 30px;
		background: transparent;
		margin-top: 5%;
		border: 1px solid rgba(144,166,183,0.3);
		color: #FFFFFF;
		padding-left: 2%;
		width: 95%;
	}
	.queryCondition p {
		font-size: 10px;
	}
	 input::-webkit-input-placeholder{
	 	color: rgba(144,166,183,0.5);
	 }
	 select{
	 	color: rgba(144,166,183,0.5)
	 }
	 
	 #caseTable {
	 	border-collapse: collapse;
	 }
	 
	 #caseTable tbody tr td {
	 	padding:5px;
	 }
	 
	 #caseTable td, #caseTable th {
	 	border:1px solid grey;
	 }
</style>
<link href="<%=request.getContextPath()%>/plugin/video/video-js.min.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/plugin/video/video.min.js"></script>     
<script src="<%=request.getContextPath()%>/plugin/video/videojs-flash.min.js"></script> 
<script src="<%=request.getContextPath()%>/plugin/video/videojs-ie8.min.js"></script>
<img src="<%=request.getContextPath()%>/img/return.png" class="returnImg" onclick="returnBasic()"/>
<div class="layout">
	<div class="leftInfo">
		<p>?????????????????????</p>
		<div class="queryCondition">
			<div>
				<p>???????????????</p>
				<select id="docType" class="check">
					<option value="" class="option">????????????????????????</option>
					<option value="1" class="option">??????</option>
					<option value="2" class="option">??????</option>
				</select>
			</div>
			<div>
				<p>????????????</p>
				<select id="unitNumber" class="check">
					<option value="" class="option">???????????????????????????</option>
					<option value="610626600000" class="option">?????????????????? </option>
					<option value="610626620000" class="option">??????????????????</option>
					<option value="610626530000" class="option">???????????????</option>
					<option value="610626510000" class="option">???????????????</option>
					<option value="610626570000" class="option">???????????????</option>
					<option value="610626580000" class="option">???????????????</option>
					<option value="610626590000" class="option">??????????????????  </option>
					<option value="610626540000" class="option">???????????????</option>
					<option value="610626520000" class="option">???????????????</option>
					<option value="610626560000" class="option">??????????????????</option>
					<option value="610626610000" class="option">???????????????</option>
					<option value="610626550000" class="option">??????????????????</option>
				</select>
			</div>
			<div>
				<p>????????????</p>
				<select id="isRelative" class="check">
					<option value="" class="option">?????????????????????</option>
					<option value="1" class="option">?????????</option>
					<option value="2" class="option">?????????</option>
				</select>
			</div>
			<div>
				<p>????????????</p>
				<input id="upLoadDate" type="text" class="form-control" placeholder="?????????20190328"/>
			</div>
			<div>
				<p>????????????</p>
				<input id="picDate" type="text" class="form-control" placeholder="?????????20190328"/>
			</div>
			<div>
				<p></p>
				<input type="button" value="??????" class="selectBtn" id="queryBtn"/>
			</div>
		</div>
		<table id="audioVideoTable" border="1" cellspacing="0" class="videoAudioList">
			<thead>
				<tr style="text-align:center;">
					<th>??????</th>
					<th>????????????</th>
					<th width="70">???????????????</th>
					<!-- <th>?????????????????????</th> -->
					<th>??????</th>
					<th>????????????</th>
					<th>????????????</th>
					<th>????????????</th>
					<th>????????????</th>
					<th>????????????</th>
					<th>??????</th>
				</tr>
			</thead>
			<tbody style="text-align:center;">
				
			</tbody>
		</table>
		<div id="pageBox" class="pageBox">
			<p class="allPages">???&nbsp;<span id="allPages"></span>&nbsp;???&nbsp;&nbsp;???&nbsp;<span id="curpage"></span>&nbsp;???&nbsp;&nbsp;???&nbsp;<span id="totalSize"></span>&nbsp;???</p>
			<div class="rightPage">
				<span id="first" onclick ="first()">??????</span>
				<span id="prev" onclick ="prePage()">?????????</span>					   
		        <span id="next" onclick ="nextPage()">?????????</span>
		        <span id="last" onclick ="last()">??????</span>
			</div>
		</div>
	</div>		
	<div class="rightInfo">
		<div class="videoInfor">
			
		</div>
		<div class="basicInfo">
			<div class="basicInfoBox">
				<p>????????????</p>
				<p style="margin-top:5%;"><span>????????????????????????</span><span></span></p>
				<p><span>???????????????</span><span></span></p>
				<p><span>???????????????</span><span></span></p>
				<p><span>?????????</span><span></span></p>
				<p><span>???????????????</span><span></span></p>
				<p><span>???????????????</span><span></span></p>
				<p><span>???????????????</span><span></span></p>
				<p><span>???????????????</span><span></span></p>
				<p><span>????????????????????????</span><span><span></p>
				<p><span>?????????????????????</span><span></span></p>
				<p><span>???????????????</span><span></span></p>
				<p><span>???????????????</span><span></span></p>
			</div>
		</div>
	</div>
</div>

<!-- Modal ??????????????????????????????-->
<div id="popLayer"></div>
<div id="popBox">
    <div class="modal-header">
        <h5 class="modal-title">????????????</h5>
    </div>
    <div class="modal-body">
	    <div class="queryCondition" style="color:black;">
	    	<div style="width:150px;">
				<p>????????????</p>
				<input type="text" name="" id="md_ajbh" value="" placeholder="?????????????????????" style="color:black;width:150px;border:1px solid grey;"/>
			</div>
			<div style="width:150px;">
				<p>????????????</p>
				<input type="text" name="" id="md_ajmc" value="" placeholder="?????????????????????" style="color:black;width:150px;border:1px solid grey;"/>
			</div>
			<div style="width:150px;">
				<p>????????????</p>
				<input type="text" name="" id="md_jyaq" value="" placeholder="?????????????????????" style="color:black;width:150px;border:1px solid grey;"/>
			</div>
			<div style="width:150px;">
				<p>????????????</p>
				<select id="md_sldw" name="" value="" class="check" style="color:black;width:150px;border:1px solid grey;">
					<option value="" class="option">???????????????????????????</option>
					<option value="610626600000" class="option">?????????????????? </option>
					<option value="610626620000" class="option">??????????????????</option>
					<option value="610626530000" class="option">???????????????</option>
					<option value="610626510000" class="option">???????????????</option>
					<option value="610626570000" class="option">???????????????</option>
					<option value="610626580000" class="option">???????????????</option>
					<option value="610626590000" class="option">??????????????????  </option>
					<option value="610626540000" class="option">???????????????</option>
					<option value="610626520000" class="option">???????????????</option>
					<option value="610626560000" class="option">??????????????????</option>
					<option value="610626610000" class="option">???????????????</option>
					<option value="610626550000" class="option">??????????????????</option>
				</select>
			</div>
			<div style="width:150px;">
				<p>????????????</p>
				<input type="text" id="md_slsj" class="form-control" placeholder="?????????20190303" style="color:black;width:150px;border:1px solid grey;"/>
			</div>
			<div style="width:120px;">
				<p></p>
				<input type="button" value="??????"  class="queryBtn" id="md_queryBtn" style="color:black;border:1px solid grey;"/>
			</div>
		</div>
		<div style="overflow-x: auto; overflow-y: auto;height:400px;padding:5px;">
			<table border="1" cellspacing="0" id="caseTable" style="color:black;">
				<thead>
					<tr style="text-align:center;">
						<th width="40">??????</th>
						<th width="40">??????</th>
						<th width="70">????????????</th>
						<th width="150">????????????</th>
						<th width="120">????????????</th>
						<th width="70">????????????</th>
						<th>????????????</th>
						<th width="150">????????????</th>
						<th width="100">????????????</th>
					</tr>
				</thead>
				<tbody>
					
				</tbody>
			</table>
		</div>
		<div id="md_pageBox" class="pageBox">
			<p class="allPages" style="margin-left:10px;color:black;">???&nbsp;<span id="md_allPages"></span>&nbsp;???&nbsp;&nbsp;???&nbsp;<span id="md_curpage"></span>&nbsp;???&nbsp;&nbsp;???&nbsp;<span id="md_totalSize"></span>&nbsp;???</p>
			<div class="rightPage">
				<span id="md_first" onclick ="md_first()" style="color:black;">??????</span>
				<span id="md_prev" onclick ="md_prePage()" style="color:black;">?????????</span>					   
		        <span id="md_next" onclick ="md_nextPage()" style="color:black;">?????????</span>
		        <span id="md_last" onclick ="md_last()" style="color:black;">??????</span>
			</div>
		</div>  
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-primary modelbtn" id="saveRelateCase" onclick="saveRelateCase()">??????</button>
        <button type="button" title='??????' class="btn btn-default modelbtn" onclick="closeDialog()">??????</button>
    </div>
</div>
<script src="<%=request.getContextPath()%>/plugin/bootstrap/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	var h = document.documentElement.clientHeight;
	var body = document.querySelector("body")
	body.style.height = h + "px";
	function returnBasic(){
		window.location.href = requestPslesBasePath + "pslesIndex";
	}
    
    function videoTableClick() {
	  	$(".videoAudioList tr").click(function(){ //?????????tr ?????????????????? ??????????????????tr
			var trs = $(this).parent().find("tr"); //????????????tr
			if(trs.hasClass("on")){ //????????????tr ?????????Class ???on??????
				trs.removeClass("on");//???class on ??????
			}
			$(this).addClass("on");//?????????tr ?????? on class ??????????????????
		});
    }
  	
  	var seqno = 0;
  	var totalPages = "";
	var currentPage = 1;
	var length = 10;
	$("#queryBtn").on('click',function() {
		seqno = 0;
		getLawAudioVideoData(1);
    });
  	
  	function getLawAudioVideoData(curpage) {
		var startNum = (curpage - 1) * length;
		$.ajax({
	        type: "post",
	        url: requestPslesBasePath + "lawenAudioVideo/getAllAudioVideoByPage",		       
	        data: {
	        	curPage: curpage,
	        	length: length,
	        	start: startNum,
	        	docType: $('#docType').val(),
	        	unitNumber: $('#unitNumber').val(),
	        	isRelative: $("#isRelative").val(),
	        	upLoadDate: $('#upLoadDate').val(),
	        	picDate: $('#picDate').val()
	        },
	        cache:false,
	        dataType: "json",
	        success: function (data,textStatus,jqXHR) {
	        	var allData = data.iTotalRecords;
		        totalPages = Math.ceil(allData / length);
		        $("#audioVideoTable tbody").html("");
			    for(var i=0;i<data.aaData.length;i++) {    //??????data??????   
			    	seqno = seqno + 1;
			    	var $tr = $("<tr>" +
			    			"<td>" + seqno + "</td>" +
				            "<td>" + (data.aaData[i].AJBH==null?"":data.aaData[i].AJBH) + "</td>" +
				            "<td>" + (data.aaData[i].JCJBH==null?"":data.aaData[i].JCJBH) + "</td>" +
				            /* "<td>" + (data.aaData[i].VIDEO_ID==null?"":data.aaData[i].VIDEO_ID) + "</td>" + */
				    		"<td>" + (data.aaData[i].CHS_NAME==null?"":data.aaData[i].CHS_NAME) + "</td>" +
				    		"<td>" + (data.aaData[i].UPLOAD_UNITNAME==null?"":data.aaData[i].UPLOAD_UNITNAME) + "</td>" +
				    		"<td>" + (data.aaData[i].UPLOAD_DATE==null?"":data.aaData[i].UPLOAD_DATE) + "</td>" +
				    		"<td>" + (data.aaData[i].PIC_DATE==null?"":data.aaData[i].PIC_DATE) + "</td>" +
				    		"<td>" + (data.aaData[i].GRADE_NAME==null?"":data.aaData[i].GRADE_NAME) + "</td>" +
				    		"<td>" + (data.aaData[i].AJBH==null||data.aaData[i].AJBH==""?"?????????":"?????????") + "</td>" +
				    		"<td><a name=\"assVideo\" style=\"color:#ffffff;text-decoration:none;cursor:pointer;\" onclick='associateVideo(" + JSON.stringify(data.aaData[i]) + ")'>????????????</a>" +
				    		"<a name=\"cancelVideo\" style=\"color:#ffffff;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='cancelVideo(" + JSON.stringify(data.aaData[i]) + ")'>????????????</a></td>" +
				    		"</tr>");
			    	$("#audioVideoTable tbody").append($tr);
			    	$($tr).on('click', data.aaData[i], function(event) {
			    		loadVideo(event.data);
			    	});
			    }
			    if (0 < allData) {
			    	$("#allPages").text(totalPages);
			    	$("#curpage").text(curpage);
			    	$("#totalSize").text(allData);
			    } else {
			    	$("#allPages").text("0");
			    	$("#curpage").text("0");
			    	$("#totalSize").text("0");
			    	$("#audioVideoTable tbody").html("");
			    }
			    videoTableClick();
	        },
	        error:function (data,textStatus) {      
	        },
	        beforeSend: function(){      
	        },     
	        complete: function(){      
	        }  
	 	});  
	}
  	
  	function prePage() {
		if (currentPage > 1) {
			currentPage = currentPage - 1;
			seqno = (currentPage - 1) * length;
			getLawAudioVideoData(currentPage);
		}
	}
	
	function first() {
		if (currentPage != 1) {
			currentPage = 1;
			seqno = 0;
			getLawAudioVideoData(currentPage);
		}
	}
	
	function last() {
		if (currentPage != totalPages) {
			currentPage = totalPages;
			seqno = (currentPage - 1) * length;
			getLawAudioVideoData(currentPage);
		}
	}
	
	function nextPage() {
		if (currentPage < totalPages) {
			currentPage = currentPage + 1;
			seqno = (currentPage - 1) * length;
			getLawAudioVideoData(currentPage);
		}
	}
	
	function loadVideo(data) {
		var videoDiv = $('.videoInfor');
		if ($("#videoId").length > 0) {
			var myPlayer = videojs('videoId');
			myPlayer.dispose();
		}
		var sourceSrc = 'http://' + data.UPLOAD_IP + '/File/' + data.DESTFILE_PATH.replace(/\\/g, "/");
// 		var sourceSrc = 'http://' + data.UPLOAD_IP + '/docfile/' + data.DESTFILE_PATH.replace(/\\/g, "/");
		var videoDom = '<video id="videoId" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:90%;height:85%;" controls="controls" preload="auto" data-setup="{}">';
		videoDom += '<source id="sourceId" src="' + sourceSrc + '" type="video/mp4"/></video>';
		videoDiv.html(videoDom);
		
		$('.basicInfoBox p').each(function(index, element) {
			if (index == 1) {
				$($(element).children("span")[1]).html(data.VIDEO_ID);
			} else if (index == 2) {
				$($(element).children("span")[1]).html(data.BJNR);
			} else if (index == 3) {
				$($(element).children("span")[1]).html(data.CJXQ);
			} else if (index == 4) {
				$($(element).children("span")[1]).html(data.CHS_NAME);
			} else if (index == 5) {
				$($(element).children("span")[1]).html(data.UPLOAD_UNITNAME);
			} else if (index == 6) {
				$($(element).children("span")[1]).html(data.UPLOAD_DATE);
			} else if (index == 7) {
				$($(element).children("span")[1]).html(data.PIC_DATE);
			} else if (index == 8) {
				$($(element).children("span")[1]).html(data.GRADE_NAME);
			} else if (index == 9) {
				$($(element).children("span")[1]).html(data.AJBH==null||data.AJBH==""?"?????????":"?????????");
			} else if (index == 10) {
				$($(element).children("span")[1]).html(data.AJBH);
			} else if (index == 11) {
				$($(element).children("span")[1]).html(data.AJMC);
			} else if (index == 12) {
				$($(element).children("span")[1]).html(data.JYAQ);
			}
		});
	}
	
	//??????????????????
	function cancelVideo (obj) {
		if (null == obj.AJBH || "" == obj.AJBH) {
			alert("????????????????????????????????????????????????");
			return;
		}
		var con = confirm("??????????????????????????????????????????");
		if (con == true) {
			$.ajax({
		        type: "post",
		        url: requestPslesBasePath + "lawenAudioVideo/saveVideoRelatedCase",		       
		        data: {
		        	ajbh: "",
		        	videoId: obj.VIDEO_ID,
		        	uploadUnit: obj.UPLOAD_UNIT
		        },
		        cache:false,
		        dataType: "json",
		        success: function (data,textStatus,jqXHR) {
		        	$("#popLayer").css("display","none");
		    		$("#popBox").css("display","none");
		    		getLawAudioVideoData(currentPage);
		    		alert("??????????????????????????????????????????????????????");
		        },
		        error:function (data,textStatus) {
		        	alert("??????????????????????????????????????????");
		        },
		        beforeSend: function(){      
		        },     
		        complete: function(){      
		        }  
		 	});
		}
	}
	
	getLawAudioVideoData(1);
	
	var checkVideoData = new Object();
	//????????????????????????
	function associateVideo(obj) {
		md_seqno = 0;
		md_totalPages = "";
		md_currentPage = 1;
		checkVideoData.AJBH = obj.AJBH;
		checkVideoData.VIDEO_ID = obj.VIDEO_ID;
		checkVideoData.UPLOAD_UNIT = obj.UPLOAD_UNIT;
		$('#md_ajmc').val(''),
		$('#md_jyaq').val(''),
		$("#md_sldw").val(''),
		$('#md_slsj').val(''),
		$('#md_ajbh').val('')
		$("#popLayer").css("display","block");
		$("#popBox").css("display","block");
		$("input:radio[name=radioChoose]").prop('checked',false);
		if (null != obj.AJBH && "" != obj.AJBH) {//????????????
			getPoliceCase(1, obj.AJBH);
		} else {
			getPoliceCase(1);
		}
	}
	
	//????????????????????????????????????
	function saveRelateCase() {
		var checkCase = $("input[type='radio']:checked").parent().next().next().text();
		if ((null == checkVideoData.AJBH || "" == checkVideoData.AJBH) && (null == checkCase || "" == checkCase)) {
			alert("????????????????????????????????????????????????");
			return;
		}
		if (null == checkCase || "" == checkCase) {
			alert("????????????????????????????????????????????????");
			return;
		}
		if (checkCase != checkVideoData.AJBH) {
			$.ajax({
		        type: "post",
		        url: requestPslesBasePath + "lawenAudioVideo/saveVideoRelatedCase",		       
		        data: {
		        	ajbh: checkCase,
		        	videoId: checkVideoData.VIDEO_ID,
		        	uploadUnit: checkVideoData.UPLOAD_UNIT
		        },
		        cache:false,
		        dataType: "json",
		        success: function (data,textStatus,jqXHR) {
		        	$("#popLayer").css("display","none");
		    		$("#popBox").css("display","none");
		    		getLawAudioVideoData(currentPage);
		    		alert("??????????????????????????????????????????????????????");
		        },
		        error:function (data,textStatus) {
		        	alert("??????????????????????????????????????????");
		        },
		        beforeSend: function(){      
		        },     
		        complete: function(){      
		        }  
		 	});
		} else {
			alert("????????????????????????");
			$("#popLayer").css("display","none");
			$("#popBox").css("display","none");
		}
	}
	
	function closeDialog() {
		$("#popLayer").css("display","none");
		$("#popBox").css("display","none");
	}
	
	//???????????????????????????????????????
	var md_seqno = 0;
	var md_totalPages = "";
	var md_currentPage = 1;
	var md_length = 10;
	$("#md_queryBtn").on('click',function() {
		md_seqno = 0;
		getPoliceCase(1, checkVideoData.AJBH);
    });
	
	function getPoliceCase(curpage, ajbh) {
		var startNum = (curpage - 1) * md_length;
		$.ajax({
	        type: "post",
	        url: requestPslesBasePath + "lawenforce/getAllCaseByPage",		       
	        data: {
	        	curPage: curpage,
	        	length: md_length,
	        	start: startNum,
	        	ajmc: $('#md_ajmc').val(),
	        	jyaq: $('#md_jyaq').val(),
	        	sldw: $("#md_sldw").val(),
	        	slsj: $('#md_slsj').val(),
	        	ajbh: $('#md_ajbh').val()
	        },
	        cache:false,
	        dataType: "json",
	        success: function (data,textStatus,jqXHR) {
	        	var allData = data.iTotalRecords;
	        	md_totalPages = Math.ceil(allData / length);
		        var tr = "";
			    for(var i=0;i<data.aaData.length;i++) {    //??????data??????   
			    	md_seqno = md_seqno + 1;
			    	tr += "<tr>";
			    	tr += "<td align=\"center\"><input type=\"radio\" name=\"radioChoose\" style=\"width:1em;height:1em;cursor:pointer;\"/></td>";
			    	tr += "<td align=\"center\">" + md_seqno + "</td>";
				    tr += "<td>" + (data.aaData[i].AJBH==null?"":data.aaData[i].AJBH) + "</td>";
				    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].AJMC) + "</td>";
				    tr += "<td>" + (data.aaData[i].AJLB==null?"":data.aaData[i].AJLB) + "</td>";
				    tr += "<td>" + (data.aaData[i].AJZT==null?"":data.aaData[i].AJZT) + "</td>";
				    tr += "<td>" + (data.aaData[i].JYAQ==null?"":data.aaData[i].JYAQ) + "</td>";
				    tr += "<td>" + (data.aaData[i].BADW==null?"":data.aaData[i].BADW) + "</td>";
				    tr += "<td>" + (data.aaData[i].SLSJ==null?"":data.aaData[i].SLSJ) + "</td>";
				    tr += "</tr>";
			    	$("#caseTable tbody").html(tr);
			    }		
			    if (0 < allData) {
			    	$("#md_allPages").text(md_totalPages);
			    	$("#md_curpage").text(md_currentPage);
			    	$("#md_totalSize").text(allData);
			    } else {
			    	$("#md_allPages").text("0");
			    	$("#md_curpage").text("0");
			    	$("#md_totalSize").text("0");
			    	$("#caseTable tbody").html("");
			    }
			    $("input[name=radioChoose]").click(function() {
					var trs = $(this).parent().parent().parent().find("tr"); 
					if(trs.hasClass("on")){
						trs.removeClass("on");
					}
					$(this).parent().parent().addClass("on");
				});
			    if (null != ajbh && "" != ajbh) {//????????????
			    	var trs = $('#caseTable tbody tr');
					for (var i = 0;i < trs.length;i++) {
						var tds = $(trs[i]).children();
						if ($(tds[2]).text() == ajbh) {
							$($(tds[0]).children()[0]).prop("checked", true);
							break;
						}
					}
			    }
	        },
	        error:function (data,textStatus) {      
	        },
	        beforeSend: function(){      
	        },     
	        complete: function(){      
	        }  
	 	});  
	}
	
	function md_prePage() {
		if (md_currentPage > 1) {
			md_currentPage = md_currentPage - 1;
			md_seqno = (md_currentPage - 1) * md_length;
			getPoliceCase(md_currentPage);
		}
	}
	
	function md_first() {
		if (md_currentPage != 1) {
			md_currentPage = 1;
			md_seqno = 0;
			getPoliceCase(md_currentPage);
		}
	}
	
	function md_last() {
		if (md_currentPage != md_totalPages) {
			md_currentPage = md_totalPages;
			md_seqno = (md_currentPage - 1) * md_length;
			getPoliceCase(md_currentPage);
		}
	}
	
	function md_nextPage() {
		if (md_currentPage < md_totalPages) {
			md_currentPage = md_currentPage + 1;
			md_seqno = (md_currentPage - 1) * md_length;
			getPoliceCase(md_currentPage);
		}
	}
</script>
<%@include file="/WEB-INF/views/common/psles-footer.jsp"%>