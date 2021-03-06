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
		background: url(<%=request.getContextPath()%>/img/caseBack.jpg)no-repeat;
		background-size: 100% 100%;
	}
	.container{
		width: 97%;
		height: 100%;
		margin: auto;
	}
	.title{
		width: 100%;
		height: 6.5%;
		color: #FFFFFF;
		font-size: 20px;
		display: flex;
		align-items: center;
		justify-content: flex-start;
	}
	.returnImg{
		width:30px;
		cursor: pointer;
	}
	h4{
		font-weight: normal;
	}
	.maincontent{
		width: 100%;
		height: 93%;
		display: flex;
		flex-flow: row wrap;
		justify-content: flex-start;
		align-content: flex-start; 							
	}
	.firstArea, .twoArea, .threeArea, .fourArea, .fiveArea, .sixArea, .sevenArea, .eightArea, .nineArea{
		height: 29%;
		width: 25%;
		box-sizing: border-box;
	  	flex: 0 0 32%;
	  	padding: 0% 1%;
	  	margin-top: 1.5%;
	}			
	h5{
		color: #FFFFFF;
		font-weight: normal;
		margin-top: 3%;
		font-size: 15px;
	}
	#pageMain1, #pageMain2,#pageMain3,#pageMain4,#pageMain5,#pageMain6,#pageMain7,#pageMain8,#pageMain9{
		height: 70%;
		width: 100%;
	}
	.ulist{
		list-style: none;
		width: 100%;			
		padding: 1% 0%;
		color: #90a6b7;
		font-size: 14px;				
		cursor: pointer;
		/*display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;*/
		width: 100%;		
		overflow: hidden;
		text-overflow:ellipsis;
		white-space: nowrap;
	}
	.ajhover{
		margin-left:5px;
	}
	.ajhover:hover{
		color: #ffffff;
	}
	
	.lawTips {
		background: url(<%=request.getContextPath()%>/image/lawTips.png) no-repeat;
		background-size: 15px;
		padding-left: 15px;
		cursor: pointer;
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
	@media only screen and (max-width: 1377px) {
		h5{					
			font-size: 13px;
			margin-top: 1.5%;
		}
		.ulist {		
			font-size: 12px;	
			padding: 0.5% 0%;			
        }
        .rightPage span{
			padding: 0% 1%;	
        }
	}
	.loadingWrap{    
	    position:fixed;    
	    top:0;    
	    left:0;    
	    width:100%;    
	    height:100%;    
	    z-index:300;    
	    background-image:url(<%=request.getContextPath()%>/image/loading.gif);    
	    background-repeat:no-repeat;    
	    background-position:center center;    
	    background-color:#000;    
	    background-color:rgba(0,0,0,0.5);   
	}    
	.m-division {
		height: 1px; 
		background:#EBEBEB;
		margin-top:5px;
	}
	a.active {
		border-bottom: 2px solid #FFAC28;
	}
	.m-tab {
		margin-top: 5px;
	}
	.m-tab a {
		text-decoration: none;
		color:#ffffff;
		padding:0px 15px 5px 15px;
		font-size: 10pt;
	}
	
	/*?????????*/
	#lawWarningBox {
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
	    text-align: center;
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
		margin-left:10px;
	}
	.queryCondition div{
		width: 18%;
		height: 80%;
		display: flex;
		flex-direction: column;
		align-items: flex-start;
		margin-left:10px;
	}
	.queryBtn{
		width: 70px;
		text-align: center;
		border: 1px solid rgba(144,166,183,0.3);
		color: rgba(144,166,183,0.5);
		cursor: pointer;
		margin-top: 16%;
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
<div class="container">
	<div class="title">
		<img src="<%=request.getContextPath()%>/img/return.png" class="returnImg" onclick="returnBasic()"/>
	<h4>??????????????????????????????????????????----????????????</h4>
</div>
<div class="maincontent">
	<div class="firstArea" style="margin-top: 2%;">
		<div class="m-tab">
			<a href="javascript:void(0);" class="active" name="policeWarning" tabindex="policeWarning">??????????????????</a>
			<a href="javascript:void(0);" name="policeWarning" tabindex="policeOverdue">??????????????????</a>
			<a href="javascript:void(0);" name="more" style="float:right;padding:5px;font-size:9pt;">??????</a>
			<div class="m-division"></div>
		</div>
		<ul class="proList" id="pageMain1"></ul>
	</div>
	<div class="twoArea" style="margin-left: 2%;margin-top: 2%;">
		<div class="m-tab">
			<a href="javascript:void(0);" class="active" name="adminCaseDeal" tabindex="adminCaseDealWarning">????????????????????????</a>
			<a href="javascript:void(0);"name="adminCaseDeal" tabindex="adminCaseDealOverdue">????????????????????????</a>
			<a href="javascript:void(0);" name="more" style="float:right;padding:5px;font-size:9pt;">??????</a>
			<div class="m-division"></div>
		</div>
		<ul class="proList" id="pageMain2"></ul>
	</div>
	<div class="threeArea" style="margin-left: 2%;margin-top: 2%;">
		<div class="m-tab">
			<a href="javascript:void(0);" class="active" name="criminalCaseDeal" tabindex="criminalCaseDealWarning">????????????????????????</a>
			<a href="javascript:void(0);"name="criminalCaseDeal" tabindex="criminalCaseDealOverdue">????????????????????????</a>
			<a href="javascript:void(0);" name="more" style="float:right;padding:5px;font-size:9pt;">??????</a>
			<div class="m-division"></div>
		</div>
		<ul class="proList" id="pageMain3"></ul>
	</div>
	<div class="fourArea">
		<div class="m-tab">
			<a href="javascript:void(0);" class="active" name="criminalCaseRegister" tabindex="criminalCaseRegisterWarning">????????????????????????</a>
			<a href="javascript:void(0);"name="criminalCaseRegister" tabindex="criminalCaseRegisterOverdue">????????????????????????</a>
			<a href="javascript:void(0);" name="more" style="float:right;padding:5px;font-size:9pt;">??????</a>
			<div class="m-division"></div>
		</div>
		<ul class="proList" id="pageMain4"></ul>
	</div>
	<div class="fiveArea" style="margin-left: 2%;">
		<div class="m-tab">
			<a href="javascript:void(0);" class="active" name="adminCaseHandle" tabindex="adminCaseHandleWarning">??????????????????????????????</a>
			<a href="javascript:void(0);"name="adminCaseHandle" tabindex="adminCaseHandleOverdue">??????????????????????????????</a>
			<a href="javascript:void(0);" name="more" style="float:right;padding:5px;font-size:9pt;">??????</a>
			<div class="m-division"></div>
		</div>
		<ul class="proList" id="pageMain5"></ul>
	</div>
	<div class="sixArea" style="margin-left: 2%;">
		<div class="m-tab">
			<a href="javascript:void(0);" class="active" name="criminalCaseDetention" tabindex="criminalCaseDetentionWarning">????????????????????????</a>
			<a href="javascript:void(0);"name="criminalCaseDetention" tabindex="criminalCaseDetentionOverdue">????????????????????????</a>
			<a href="javascript:void(0);" name="more" style="float:right;padding:5px;font-size:9pt;">??????</a>
			<div class="m-division"></div>
		</div>
		<ul class="proList" id="pageMain6"></ul>
	</div>
	<div class="sevenArea">
		<div class="m-tab">
			<a href="javascript:void(0);" class="active" name="criminalCaseArrest" tabindex="criminalCaseArrestWarning">????????????????????????</a>
			<a href="javascript:void(0);"name="criminalCaseArrest" tabindex="criminalCaseArrestOverdue">????????????????????????</a>
			<a href="javascript:void(0);" name="more" style="float:right;padding:5px;font-size:9pt;">??????</a>
			<div class="m-division"></div>
		</div>
		<ul class="proList" id="pageMain7"></ul>
	</div>
	<div class="eightArea" style="margin-left: 2%;">
		<div class="m-tab">
			<a href="javascript:void(0);" class="active" name="criminalCaseBPT" tabindex="criminalCaseBPTWarning">??????????????????????????????</a>
			<a href="javascript:void(0);"name="criminalCaseBPT" tabindex="criminalCaseBPTOverdue">??????????????????????????????</a>
			<a href="javascript:void(0);" name="more" style="float:right;padding:5px;font-size:9pt;">??????</a>
			<div class="m-division"></div>
		</div>
		<ul class="proList" id="pageMain8"></ul>
	</div>
	<div class="nineArea" style="margin-left: 2%;">
		<div class="m-tab">
			<a href="javascript:void(0);" class="active" name="criminalCaseSOR" tabindex="criminalCaseSORWarning">??????????????????????????????</a>
			<a href="javascript:void(0);"name="criminalCaseSOR" tabindex="criminalCaseSOROverdue">??????????????????????????????</a>
			<a href="javascript:void(0);" name="more" style="float:right;padding:5px;font-size:9pt;">??????</a>
			<div class="m-division"></div>
		</div>
		<ul class="proList" id="pageMain9"></ul>
	</div>
</div>

<!-- Modal ???????????????????????????-->
<div id="lawWarningBox"></div>
<div id="popBox">
    <div class="modal-header">
        <h5 class="modal-title">????????????</h5>
    </div>
    <div class="modal-body">
	    <div class="queryCondition" style="color:black;">
	    	<div style="width:150px;">
				<p>??????/???????????????</p>
				<input type="text" name="" id="md_ajbh" value="" placeholder="???????????????/???????????????" style="color:black;width:150px;border:1px solid grey;"/>
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
				<p>??????/????????????</p>
				<input type="text" id="md_slsj" class="form-control" placeholder="?????????20190303" style="color:black;width:150px;border:1px solid grey;"/>
			</div>
			<div style="width:120px;">
				<p></p>
				<input type="button" value="??????"  class="queryBtn" id="md_queryBtn" style="color:black;border:1px solid grey;"/>
			</div>
		</div>
		<div style="overflow-x: auto; overflow-y: auto;height:350px;padding:15px;">
			<table border="1" cellspacing="0" id="caseTable" style="color:black;font-size:9pt;">
				<thead>
					<tr style="text-align:center;">
						<th width="60">????????????</th>
						<th width="150">????????????</th>
						<th width="90">????????????</th>
						<th width="70">????????????</th>
						<th width="150">????????????</th>
						<th width="100">????????????</th>
						<th width="120">????????????</th>
						<th width="100">??????</th>
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
        <button type="button" title='??????' class="btn btn-default modelbtn" onclick="closeDialog()">??????</button>
    </div>
</div>
<script type="text/javascript">
	var body = document.querySelector("body")
	var h = document.documentElement.clientHeight;
	body.style.height = h + "px";
	
	function changeDivHeight(){
		var h = document.documentElement.clientHeight;
		body.style.height = h + "px";
	}
	
	function returnBasic(){
		window.location.href = requestPslesBasePath + "pslesIndex";
	}
	
	//????????????
	var curMore = "";
	var md_seqno = 0;
	var md_totalPages = "";
	var md_currentPage = 1;
	var md_length = 10;
	
	function getChuJingCaseCount(currentPage, length, flag, source){
		//?????????
		var startNum = (currentPage - 1) * length;
		$.ajax({
	        type: "post",
	        url: requestPslesBasePath + "lawproblem/getReceptionOverdueByPage",		       
	        data: {
	        	curPage:currentPage,
	        	length:length,
	        	start: startNum,
	        	flag: flag,
	        	ajmc: $('#md_ajmc').val(),
				sldw: $("#md_sldw").val(),
				slsj: $('#md_slsj').val(),
				ajbh: $('#md_ajbh').val()
	        },
	        cache:false,
	        dataType: "json",
	        success: function (data,textStatus,jqXHR){   
	        	var allData = data.iTotalRecords;
	        	md_totalPages = Math.ceil(allData / length);
		        if (source == '1') {
		        	var thead = "";
		        	thead += '<th width="60">???????????????</th>';
		        	thead += '<th width="150">???????????????</th>';
		        	thead += '<th width="90">????????????</th>';
					thead += '<th width="70">????????????</th>';
        			thead += '<th width="150">????????????</th>';
       				thead += '<th width="100">????????????</th>';
       				thead += '<th width="100">????????????</th>';
    				thead += '<th width="100">??????</th>';
		        	$("#caseTable thead").html(thead);
		        	var tr = "";
				    for(var i=0;i<data.aaData.length;i++) {    //??????data??????   
				    	md_seqno = md_seqno + 1;
				    	tr += "<tr>";
// 				    	tr += "<td align=\"center\">" + md_seqno + "</td>";
					    tr += "<td>" + (data.aaData[i].JCJBH==null?"":data.aaData[i].JCJBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].AJMC) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJSLDW==null?"":data.aaData[i].AJSLDW) + "</td>";
					    tr += "<td>" + (data.aaData[i].JJSJ==null?"":data.aaData[i].JJSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].CJSJ==null?"":data.aaData[i].CJSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJBH==null?"":data.aaData[i].AJBH) + "</td>";
					    if (flag == '1') {
						    tr += "<td>" + (data.aaData[i].WARNFEED==null?"":data.aaData[i].WARNFEED) + "</td>";
						    if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<td><a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"1\")'>??????</a></td>";
						    } else {
						    	tr += "<td></td>";
						    }
					    } else {
					    	tr += "<td>" + (data.aaData[i].OVERFEED==null?"":data.aaData[i].OVERFEED) + "</td>";
						    tr += "<td align=\"center\"><a style=\"color:blue;text-decoration:none;cursor:pointer;\" onclick=\"cancelWarning('" + data.aaData[i].JCJBH + "', 'getChuJingCaseCount', '1-" + flag + "')\">??????</a>";
		    				if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"1\")'>??????</a>";
						    }
		    				tr += "</td>";
					    }
					    tr += "</tr>";
				    	$("#caseTable tbody").html(tr);
				    }
				    if (0 < allData) {
				    	$("#md_allPages").text(md_totalPages);
				    	$("#md_curpage").text(currentPage);
				    	$("#md_totalSize").text(allData);
				    } else {
				    	$("#md_allPages").text("0");
				    	$("#md_curpage").text("0");
				    	$("#md_totalSize").text("0");
				    	$("#caseTable tbody").html("");
				    }
		        } else {
		        	var list = "";
			        if (flag == '1') {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = "?????????" + data.aaData[i].WARNFEED + "???" + "???????????????" + data.aaData[i].JJSJ;
					    	if ($.trim(data.aaData[i].CJSJ) != '0') {
					    		tips += "??????????????????" + data.aaData[i].CJSJ;
					    	} else {
					    		tips += "?????????????????????";
					    	}
					    	list+="<li class=\"ulist\"><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"1\")'>"+data.aaData[i].AJMC+"</a></li>";
					    }
			        } else if (flag == '2') {
					    for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = "?????????" + data.aaData[i].OVERFEED + "???" + "???????????????" + data.aaData[i].JJSJ;
					    	if ($.trim(data.aaData[i].CJSJ) != '0') {
					    		tips += "??????????????????" + data.aaData[i].CJSJ;
					    	} else {
					    		tips += "?????????????????????";
					    	}
					    	list+="<li class=\"ulist\"><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"1\")'>"+data.aaData[i].AJMC+"</a></li>";
					    }		
			        }
			    	$("#pageMain1").html(list);
		        }
	        },
	        error:function (data,textStatus) {      
	             console.log(data)
	        },
	        beforeSend: function(){      
	            $('<div class="loadingWrap"></div>').appendTo("body");
	        },     
	        complete: function(){      
	           $(".loadingWrap").remove();
	        }  
	 	});  
	}
	
	//????????????????????????
	function getAcceptAdminCaseCount(currentPage, length, flag, source){
		//?????????
		var startNum = (currentPage - 1) * length;
		$.ajax({
	        type: "post",
	        url: requestPslesBasePath + "lawproblem/getAdminCaseOverdueByPage",
	        data: {
	        	curPage:currentPage,
	        	length:length,
	        	start: startNum,
	        	flag: flag,
	        	ajmc: $('#md_ajmc').val(),
				sldw: $("#md_sldw").val(),
				slsj: $('#md_slsj').val(),
				ajbh: $('#md_ajbh').val()
	        },
	        cache: false,
	        dataType: "json",
	        success: function (data,textStatus,jqXHR) {
	        	var allData = data.iTotalRecords;
	        	md_totalPages = Math.ceil(allData / length);
		        if (source == '1') {
		        	var thead = "";
		        	thead += '<th width="60">???????????????</th>';
		        	thead += '<th width="150">???????????????/????????????</th>';
		        	thead += '<th width="90">????????????</th>';
					thead += '<th width="70">????????????</th>';
        			thead += '<th width="150">????????????</th>';
        			thead += '<th width="70">????????????</th>';
       				thead += '<th width="100">????????????</th>';
       				thead += '<th width="70">????????????</th>';
       				thead += '<th width="100">????????????</th>';
    				thead += '<th width="100">??????</th>';
		        	$("#caseTable thead").html(thead);
		        	var tr = "";
				    for(var i=0;i<data.aaData.length;i++) {    //??????data??????   
				    	md_seqno = md_seqno + 1;
				    	tr += "<tr>";
// 				    	tr += "<td align=\"center\">" + md_seqno + "</td>";
					    tr += "<td>" + (data.aaData[i].JCJBH==null?"":data.aaData[i].JCJBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].AJMC) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJSLDW==null?"":data.aaData[i].AJSLDW) + "</td>";
					    tr += "<td>" + (data.aaData[i].JJSJ==null?"":data.aaData[i].JJSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].CJSJ==null?"":data.aaData[i].CJSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLSJ==null?"":data.aaData[i].SLSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJBH==null?"":data.aaData[i].AJBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJZT==null?"":data.aaData[i].AJZT) + "</td>";
					    if (flag == '1') {
						    tr += "<td>" + (data.aaData[i].WARNFEED==null?"":data.aaData[i].WARNFEED) + "</td>";
						    if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<td><a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"2\")'>??????</a></td>";
						    } else {
						    	tr += "<td></td>";
						    }
					    } else {
					    	tr += "<td>" + (data.aaData[i].OVERFEED==null?"":data.aaData[i].OVERFEED) + "</td>";
						    tr += "<td align=\"center\"><a style=\"color:blue;text-decoration:none;cursor:pointer;\" onclick=\"cancelWarning('" + data.aaData[i].JCJBH + "', 'getAcceptAdminCaseCount', '2-" + flag + "')\">??????</a>";
		    				if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"2\")'>??????</a>";
						    }
		    				tr += "</td>";
					    }
					    tr += "</tr>";
				    	$("#caseTable tbody").html(tr);
				    }
		        	if (0 < allData) {
				    	$("#md_allPages").text(md_totalPages);
				    	$("#md_curpage").text(currentPage);
				    	$("#md_totalSize").text(allData);
				    } else {
				    	$("#md_allPages").text("0");
				    	$("#md_curpage").text("0");
				    	$("#md_totalSize").text("0");
				    	$("#caseTable tbody").html("");
				    }
		        } else {
		        	var list = "";
			        if (flag == '1') {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].WARNFEED + "???" + "???????????????" + data.aaData[i].JJSJ;
					    	if ($.trim(data.aaData[i].CJSJ) != '0') {
					    		tips += "??????????????????" + data.aaData[i].CJSJ;
					    	} else {
					    		tips += "?????????????????????";
					    	}
					    	if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
					    		tips += "??????????????????" + data.aaData[i].SLSJ;
					    	} else {
					    		tips += "?????????????????????";
					    	}
					    	list+="<li class=\"ulist\"><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"2\")'>"+data.aaData[i].AJMC+"</a></li>";
					    }
			        } else {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].OVERFEED + "???" + "???????????????" + data.aaData[i].JJSJ;
					    	if ($.trim(data.aaData[i].CJSJ) != '0') {
					    		tips += "??????????????????" + data.aaData[i].CJSJ;
					    	} else {
					    		tips += "?????????????????????";
					    	}
					    	if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
					    		tips += "??????????????????" + data.aaData[i].SLSJ;
					    	} else {
					    		tips += "?????????????????????";
					    	}
					        list+="<li class=\"ulist\" ><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"2\")'>"+data.aaData[i].AJMC+"</a></li>"					        
					    }
			        }
				    $("#pageMain2").html(list);					  					
		        }
	        },
	        error:function (data,textStatus) {      
	             console.log(data)
	        },
	        beforeSend: function(){      
	            $('<div class="loadingWrap"></div>').appendTo("body");
	        },     
	        complete: function(){      
	           $(".loadingWrap").remove();
	        }  
	 	});  
	}
	//????????????????????????
	function getAcceptCriminalCaseCount(currentPage, length, flag, source){
		//?????????
		var startNum = (currentPage - 1) * length;
		$.ajax({
	        type: "post",
	        url: requestPslesBasePath + "lawproblem/getCriminalCaseOverdueByPage",		      
	        data: {
	        	curPage:currentPage,
	        	length:length,
	        	start: startNum,
	        	flag: flag,
	        	ajmc: $('#md_ajmc').val(),
				sldw: $("#md_sldw").val(),
				slsj: $('#md_slsj').val(),
				ajbh: $('#md_ajbh').val()
	        },
	        cache: false,
	        dataType: "json",
	        success: function (data,textStatus,jqXHR){
	        	var allData = data.iTotalRecords;
	        	md_totalPages = Math.ceil(allData / length);
		        if (source == '1') {
		        	var thead = "";
		        	thead += '<th width="60">???????????????</th>';
		        	thead += '<th width="150">???????????????/????????????</th>';
		        	thead += '<th width="90">????????????</th>';
					thead += '<th width="70">????????????</th>';
        			thead += '<th width="150">????????????</th>';
        			thead += '<th width="70">????????????</th>';
       				thead += '<th width="100">????????????</th>';
       				thead += '<th width="100">????????????</th>';
       				thead += '<th width="100">????????????</th>';
    				thead += '<th width="100">??????</th>';
		        	$("#caseTable thead").html(thead);
		        	var tr = "";
				    for(var i=0;i<data.aaData.length;i++) {    //??????data??????   
				    	md_seqno = md_seqno + 1;
				    	tr += "<tr>";
// 				    	tr += "<td align=\"center\">" + md_seqno + "</td>";
					    tr += "<td>" + (data.aaData[i].JCJBH==null?"":data.aaData[i].JCJBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].AJMC) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJSLDW==null?"":data.aaData[i].AJSLDW) + "</td>";
					    tr += "<td>" + (data.aaData[i].JJSJ==null?"":data.aaData[i].JJSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].CJSJ==null?"":data.aaData[i].CJSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLSJ==null?"":data.aaData[i].SLSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJBH==null?"":data.aaData[i].AJBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJZT==null?"":data.aaData[i].AJZT) + "</td>";
					    if (flag == '1') {
						    tr += "<td>" + (data.aaData[i].WARNFEED==null?"":data.aaData[i].WARNFEED) + "</td>";
						    if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<td><a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"3\")'>??????</a></td>";
						    } else {
						    	tr += "<td></td>";
						    }
					    } else {
					    	tr += "<td>" + (data.aaData[i].OVERFEED==null?"":data.aaData[i].OVERFEED) + "</td>";
						    tr += "<td align=\"center\"><a style=\"color:blue;text-decoration:none;cursor:pointer;\" onclick=\"cancelWarning('" + data.aaData[i].JCJBH + "', 'getAcceptCriminalCaseCount', '3-" + flag + "')\">??????</a>";
		    				if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"3\")'>??????</a>";
						    }
		    				tr += "</td>";
					    }
					    tr += "</tr>";
				    	$("#caseTable tbody").html(tr);
				    }
		        	if (0 < allData) {
				    	$("#md_allPages").text(md_totalPages);
				    	$("#md_curpage").text(currentPage);
				    	$("#md_totalSize").text(allData);
				    } else {
				    	$("#md_allPages").text("0");
				    	$("#md_curpage").text("0");
				    	$("#md_totalSize").text("0");
				    	$("#caseTable tbody").html("");
				    }
		        } else {
		        	var list = "";
			        if (flag == '1') {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].WARNFEED + "???" + "???????????????" + data.aaData[i].JJSJ;
					    	if ($.trim(data.aaData[i].CJSJ) != '0') {
					    		tips += "??????????????????" + data.aaData[i].CJSJ;
					    	} else {
					    		tips += "?????????????????????";
					    	}
					    	if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
					    		tips += "??????????????????" + data.aaData[i].SLSJ;
					    	} else {
					    		tips += "?????????????????????";
					    	}
					    	list+="<li class=\"ulist\"><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"3\")'>"+data.aaData[i].AJMC+"</a></li>";
					    }
			        } else {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].OVERFEED + "???" + "???????????????" + data.aaData[i].JJSJ;
					    	if ($.trim(data.aaData[i].CJSJ) != '0') {
					    		tips += "??????????????????" + data.aaData[i].CJSJ;
					    	} else {
					    		tips += "?????????????????????";
					    	}
					    	if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
					    		tips += "??????????????????" + data.aaData[i].SLSJ;
					    	} else {
					    		tips += "?????????????????????";
					    	}
					        list+="<li class=\"ulist\" ><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"3\")'>"+data.aaData[i].AJMC+"</a></li>"					        
					    }
			        }
				    $("#pageMain3").html(list);
		        }
	        },
	        error:function (data,textStatus) {      
	             console.log(data)
	        },
	        beforeSend: function(){      
	            $('<div class="loadingWrap"></div>').appendTo("body");
	        },     
	        complete: function(){      
	           $(".loadingWrap").remove();
	        }  
	 	});  
	}
	//????????????????????????
	function getRegisterCriminalCaseCount(currentPage, length, flag, source){
		//?????????
		var startNum = (currentPage - 1) * length;
		$.ajax({
	        type: "post",
	        url: requestPslesBasePath + "lawproblem/getCriminalRegisterOverdueByPage",		        
	        data: {
	        	curPage:currentPage,
	        	length:length,
	        	start: startNum,
	        	flag: flag,
	        	ajmc: $('#md_ajmc').val(),
				sldw: $("#md_sldw").val(),
				slsj: $('#md_slsj').val(),
				ajbh: $('#md_ajbh').val()
	        },
	        cache: false,
	        dataType: "json",
	        success: function (data,textStatus,jqXHR){
	        	var allData = data.iTotalRecords;
	        	md_totalPages = Math.ceil(allData / length);
		        if (source == '1') {
		        	var thead = "";
		        	thead += '<th width="60">????????????</th>';
		        	thead += '<th width="150">????????????</th>';
		        	thead += '<th width="90">????????????</th>';
					thead += '<th width="70">????????????</th>';
        			thead += '<th width="150">????????????</th>';
       				thead += '<th width="100">????????????</th>';
       				thead += '<th width="100">????????????</th>';
    				thead += '<th width="100">??????</th>';
		        	$("#caseTable thead").html(thead);
		        	var tr = "";
				    for(var i=0;i<data.aaData.length;i++) {    //??????data??????   
				    	md_seqno = md_seqno + 1;
				    	tr += "<tr>";
// 				    	tr += "<td align=\"center\">" + md_seqno + "</td>";
					    tr += "<td>" + (data.aaData[i].AJBH==null?"":data.aaData[i].AJBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].AJMC) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLDW==null?"":data.aaData[i].SLDW) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLSJ==null?"":data.aaData[i].SLSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].LARQ==null?"":data.aaData[i].LARQ) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJZT==null?"":data.aaData[i].AJZT) + "</td>";
					    if (flag == '1') {
						    tr += "<td>" + (data.aaData[i].WARNFEED==null?"":data.aaData[i].WARNFEED) + "</td>";
						    if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<td><a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"4\")'>??????</a></td>";
						    } else {
						    	tr += "<td></td>";
						    }
					    } else {
					    	tr += "<td>" + (data.aaData[i].OVERFEED==null?"":data.aaData[i].OVERFEED) + "</td>";
						    tr += "<td align=\"center\"><a style=\"color:blue;text-decoration:none;cursor:pointer;\" onclick=\"cancelWarning('" + data.aaData[i].AJBH + "', 'getRegisterCriminalCaseCount', '4-" + flag + "')\">??????</a>";
		    				if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"4\")'>??????</a>";
						    }
		    				tr += "</td>";
					    }
					    tr += "</tr>";
				    	$("#caseTable tbody").html(tr);
				    }
		        	if (0 < allData) {
				    	$("#md_allPages").text(md_totalPages);
				    	$("#md_curpage").text(currentPage);
				    	$("#md_totalSize").text(allData);
				    } else {
				    	$("#md_allPages").text("0");
				    	$("#md_curpage").text("0");
				    	$("#md_totalSize").text("0");
				    	$("#caseTable tbody").html("");
				    }
		        } else {
		        	var list = "";
			        if (flag == '1') {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].WARNFEED + "???" + "???????????????" + data.aaData[i].SLSJ;
					    	if ($.trim(data.aaData[i].LARQ) != '0') {
					    		tips += "??????????????????" + data.aaData[i].LARQ;
					    	} else {
					    		tips += "?????????????????????";
					    	}
					    	list+="<li class=\"ulist\"><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"4\")'>"+data.aaData[i].AJMC+"</a></li>";
					    }
			        } else {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].OVERFEED + "???" + "???????????????" + data.aaData[i].SLSJ;
					    	if ($.trim(data.aaData[i].LARQ) != '0') {
					    		tips += "??????????????????" + data.aaData[i].LARQ;
					    	} else {
					    		tips += "?????????????????????";
					    	}
					        list+="<li class=\"ulist\" ><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"4\")'>"+data.aaData[i].AJMC+"</a></li>"					        
					    }
			        }
				    $("#pageMain4").html(list);
		        }
	        },
	        error:function (data,textStatus) {      
	             console.log(data)
	        },
	        beforeSend: function(){      
	            $('<div class="loadingWrap"></div>').appendTo("body");
	        },     
	        complete: function(){      
	           $(".loadingWrap").remove();
	        }  
	 	});  
	}
	
	//??????????????????????????????
	function getPublicSecurityCaseCount(currentPage, length, flag, source){
		//?????????
		var startNum = (currentPage - 1) * length;
		$.ajax({
	        type: "post",
	        url: requestPslesBasePath + "lawproblem/getAdminCaseDealOverdueByPage",
	       
	        data: {
	        	curPage:currentPage,
	        	length:length,
	        	start: startNum,
	        	flag: flag,
	        	ajmc: $('#md_ajmc').val(),
				sldw: $("#md_sldw").val(),
				slsj: $('#md_slsj').val(),
				ajbh: $('#md_ajbh').val()
	        },
	        cache: false,
	        dataType: "json",
	        success: function (data,textStatus,jqXHR){
	        	var allData = data.iTotalRecords;
	        	md_totalPages = Math.ceil(allData / length);
		        if (source == '1') {
		        	var thead = "";
		        	thead += '<th width="60">????????????</th>';
		        	thead += '<th width="150">????????????</th>';
		        	thead += '<th width="90">????????????</th>';
					thead += '<th width="70">????????????</th>';
        			thead += '<th width="150">????????????</th>';
       				thead += '<th width="100">????????????</th>';
       				thead += '<th width="100">????????????</th>';
    				thead += '<th width="100">??????</th>';
		        	$("#caseTable thead").html(thead);
		        	var tr = "";
				    for(var i=0;i<data.aaData.length;i++) {    //??????data??????   
				    	md_seqno = md_seqno + 1;
				    	tr += "<tr>";
// 				    	tr += "<td align=\"center\">" + md_seqno + "</td>";
					    tr += "<td>" + (data.aaData[i].AJBH==null?"":data.aaData[i].AJBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].AJMC) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLDW==null?"":data.aaData[i].SLDW) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLSJ==null?"":data.aaData[i].SLSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].LARQ==null?"":data.aaData[i].LARQ) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJZT==null?"":data.aaData[i].AJZT) + "</td>";
					    if (flag == '1') {
						    tr += "<td>" + (data.aaData[i].WARNFEED==null?"":data.aaData[i].WARNFEED) + "</td>";
						    if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<td><a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"5\")'>??????</a></td>";
						    } else {
						    	tr += "<td></td>";
						    }
					    } else {
					    	tr += "<td>" + (data.aaData[i].OVERFEED==null?"":data.aaData[i].OVERFEED) + "</td>";
						    tr += "<td align=\"center\"><a style=\"color:blue;text-decoration:none;cursor:pointer;\" onclick=\"cancelWarning('" + data.aaData[i].AJBH + "', 'getPublicSecurityCaseCount', '5-" + flag + "')\">??????</a>";
		    				if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"5\")'>??????</a>";
						    }
		    				tr += "</td>";
					    }
					    tr += "</tr>";
				    	$("#caseTable tbody").html(tr);
				    }
		        	if (0 < allData) {
				    	$("#md_allPages").text(md_totalPages);
				    	$("#md_curpage").text(currentPage);
				    	$("#md_totalSize").text(allData);
				    } else {
				    	$("#md_allPages").text("0");
				    	$("#md_curpage").text("0");
				    	$("#md_totalSize").text("0");
				    	$("#caseTable tbody").html("");
				    }
		        } else {
		        	var list = "";
			        if (flag == '1') {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].WARNFEED + "???" + "???????????????" + data.aaData[i].SLSJ;
					    	list+="<li class=\"ulist\"><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"5\")'>"+data.aaData[i].AJMC+"</a></li>";
					    }
			        } else {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].OVERFEED + "???" + "???????????????" + data.aaData[i].SLSJ;
					        list+="<li class=\"ulist\" ><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"5\")'>"+data.aaData[i].AJMC+"</a></li>"					        
					    }
			        }
				    $("#pageMain5").html(list);
		        }
	        },
	        error:function (data,textStatus) {      
	             console.log(data)
	        },
	        beforeSend: function(){      
	            $('<div class="loadingWrap"></div>').appendTo("body");
	        },     
	        complete: function(){      
	           $(".loadingWrap").remove();
	        }  
	 	});  
	}
	
	//????????????????????????
	function getDetentCriminalCaseCount(currentPage, length, flag, source){
		//?????????
		var startNum = (currentPage - 1) * length;
		$.ajax({
	        type: "post",
	        url: requestPslesBasePath + "lawproblem/getCriminalCaseDetentionOverdueByPage",
	        data: {
	        	curPage:currentPage,
	        	length:length,
	        	start: startNum,
	        	flag: flag,
	        	ajmc: $('#md_ajmc').val(),
				sldw: $("#md_sldw").val(),
				slsj: $('#md_slsj').val(),
				ajbh: $('#md_ajbh').val()
	        },
	        cache: false,
	        dataType: "json",
	        success: function (data,textStatus,jqXHR){
	        	var allData = data.iTotalRecords;
	        	md_totalPages = Math.ceil(allData / length);
		        if (source == '1') {
		        	var thead = "";
		        	thead += '<th width="60">????????????</th>';
		        	thead += '<th width="150">????????????</th>';
		        	thead += '<th width="150">???????????????</th>';
		        	thead += '<th width="150">??????????????????</th>';
		        	thead += '<th width="90">????????????</th>';
					thead += '<th width="70">????????????</th>';
        			thead += '<th width="150">??????????????????</th>';
        			thead += '<th width="150">??????????????????</th>';
       				thead += '<th width="100">????????????</th>';
       				thead += '<th width="100">????????????</th>';
    				thead += '<th width="100">??????</th>';
		        	$("#caseTable thead").html(thead);
		        	var tr = "";
				    for(var i=0;i<data.aaData.length;i++) {    //??????data??????   
				    	md_seqno = md_seqno + 1;
				    	tr += "<tr>";
// 				    	tr += "<td align=\"center\">" + md_seqno + "</td>";
					    tr += "<td>" + (data.aaData[i].AJBH==null?"":data.aaData[i].AJBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].AJMC) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].RYXM) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].RYCSBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLDW==null?"":data.aaData[i].SLDW) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLSJ==null?"":data.aaData[i].SLSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].QSSJ==null?"":data.aaData[i].QSSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].ZZSJ==null?"":data.aaData[i].ZZSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJZT==null?"":data.aaData[i].AJZT) + "</td>";
					    if (flag == '1') {
						    tr += "<td>" + (data.aaData[i].WARNFEED==null?"":data.aaData[i].WARNFEED) + "</td>";
						    if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<td><a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"6\")'>??????</a></td>";
						    } else {
						    	tr += "<td></td>";
						    }
					    } else {
					    	tr += "<td>" + (data.aaData[i].OVERFEED==null?"":data.aaData[i].OVERFEED) + "</td>";
						    tr += "<td align=\"center\"><a style=\"color:blue;text-decoration:none;cursor:pointer;\" onclick=\"cancelWarning('" + data.aaData[i].RYCSBH + "', 'getDetentCriminalCaseCount', '6-" + flag + "')\">??????</a>";
		    				if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"6\")'>??????</a>";
						    }
		    				tr += "</td>";
					    }
					    tr += "</tr>";
				    	$("#caseTable tbody").html(tr);
				    }
		        	if (0 < allData) {
				    	$("#md_allPages").text(md_totalPages);
				    	$("#md_curpage").text(currentPage);
				    	$("#md_totalSize").text(allData);
				    } else {
				    	$("#md_allPages").text("0");
				    	$("#md_curpage").text("0");
				    	$("#md_totalSize").text("0");
				    	$("#caseTable tbody").html("");
				    }
		        } else {
		        	var list = "";
			        if (flag == '1') {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].WARNFEED + "??????????????????" + data.aaData[i].SLSJ + "????????????????????????" + data.aaData[i].QSSJ + "????????????????????????" + data.aaData[i].ZZSJ;
					    	list+="<li class=\"ulist\"><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"6\")'>"+data.aaData[i].RYXM+data.aaData[i].WARNFEED+"("+data.aaData[i].AJMC+")</a></li>";
					    }
			        } else {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].OVERFEED + "??????????????????" + data.aaData[i].SLSJ + "????????????????????????" + data.aaData[i].QSSJ + "????????????????????????" + data.aaData[i].ZZSJ;
					        list+="<li class=\"ulist\" ><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"6\")'>"+data.aaData[i].RYXM+data.aaData[i].OVERFEED+"("+data.aaData[i].AJMC+")</a></li>"					        
					    }
			        }
				    $("#pageMain6").html(list);
		        }
	        },
	        error:function (data,textStatus) {      
	             console.log(data)
	        },
	        beforeSend: function(){      
	            $('<div class="loadingWrap"></div>').appendTo("body");
	        },     
	        complete: function(){      
	           $(".loadingWrap").remove();
	        }  
	 	});  
	}
	
	//????????????????????????
	function getArrestCriminalCaseCount(currentPage, length, flag, source){
		//?????????
		var startNum = (currentPage - 1) * length;
		$.ajax({
	        type: "post",
	        url: requestPslesBasePath + "lawproblem/getCriminalCaseArrestOverdueByPage",
	        data: {
	        	curPage:currentPage,
	        	length:length,
	        	start: startNum,
	        	flag: flag,
	        	ajmc: $('#md_ajmc').val(),
				sldw: $("#md_sldw").val(),
				slsj: $('#md_slsj').val(),
				ajbh: $('#md_ajbh').val()
	        },
	        cache: false,
	        dataType: "json",
	        success: function (data,textStatus,jqXHR){
	        	var allData = data.iTotalRecords;
	        	md_totalPages = Math.ceil(allData / length);
		        if (source == '1') {
		        	var thead = "";
		        	thead += '<th width="60">????????????</th>';
		        	thead += '<th width="150">????????????</th>';
		        	thead += '<th width="150">???????????????</th>';
		        	thead += '<th width="150">??????????????????</th>';
		        	thead += '<th width="90">????????????</th>';
					thead += '<th width="70">????????????</th>';
        			thead += '<th width="150">??????????????????</th>';
        			thead += '<th width="150">??????????????????</th>';
       				thead += '<th width="100">????????????</th>';
       				thead += '<th width="100">????????????</th>';
    				thead += '<th width="100">??????</th>';
		        	$("#caseTable thead").html(thead);
		        	var tr = "";
				    for(var i=0;i<data.aaData.length;i++) {    //??????data??????   
				    	md_seqno = md_seqno + 1;
				    	tr += "<tr>";
// 				    	tr += "<td align=\"center\">" + md_seqno + "</td>";
					    tr += "<td>" + (data.aaData[i].AJBH==null?"":data.aaData[i].AJBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].AJMC) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].RYXM) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].RYCSBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLDW==null?"":data.aaData[i].SLDW) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLSJ==null?"":data.aaData[i].SLSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].QSSJ==null?"":data.aaData[i].QSSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].ZZSJ==null?"":data.aaData[i].ZZSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJZT==null?"":data.aaData[i].AJZT) + "</td>";
					    if (flag == '1') {
						    tr += "<td>" + (data.aaData[i].WARNFEED==null?"":data.aaData[i].WARNFEED) + "</td>";
						    if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<td><a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"7\")'>??????</a></td>";
						    } else {
						    	tr += "<td></td>";
						    }
					    } else {
					    	tr += "<td>" + (data.aaData[i].OVERFEED==null?"":data.aaData[i].OVERFEED) + "</td>";
						    tr += "<td align=\"center\"><a style=\"color:blue;text-decoration:none;cursor:pointer;\" onclick=\"cancelWarning('" + data.aaData[i].RYCSBH + "', 'getArrestCriminalCaseCount', '7-" + flag + "')\">??????</a>";
		    				if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"7\")'>??????</a>";
						    }
		    				tr += "</td>";
					    }
					    tr += "</tr>";
				    	$("#caseTable tbody").html(tr);
				    }
		        	if (0 < allData) {
				    	$("#md_allPages").text(md_totalPages);
				    	$("#md_curpage").text(currentPage);
				    	$("#md_totalSize").text(allData);
				    } else {
				    	$("#md_allPages").text("0");
				    	$("#md_curpage").text("0");
				    	$("#md_totalSize").text("0");
				    	$("#caseTable tbody").html("");
				    }
		        } else {
		        	var list = "";
			        if (flag == '1') {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].WARNFEED + "??????????????????" + data.aaData[i].SLSJ + "????????????????????????" + data.aaData[i].QSSJ + "????????????????????????" + data.aaData[i].ZZSJ;
					    	list+="<li class=\"ulist\"><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"7\")'>"+data.aaData[i].RYXM+data.aaData[i].WARNFEED+"("+data.aaData[i].AJMC+")</a></li>";
					    }
			        } else {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].OVERFEED + "??????????????????" + data.aaData[i].SLSJ + "????????????????????????" + data.aaData[i].QSSJ + "????????????????????????" + data.aaData[i].ZZSJ;
					        list+="<li class=\"ulist\" ><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"7\")'>"+data.aaData[i].RYXM+data.aaData[i].OVERFEED+"("+data.aaData[i].AJMC+")</a></li>"					        
					    }
			        }
				    $("#pageMain7").html(list);
		        }
	        },
	        error:function (data,textStatus) {      
	             console.log(data)
	        },
	        beforeSend: function(){      
	            $('<div class="loadingWrap"></div>').appendTo("body");
	        },     
	        complete: function(){      
	           $(".loadingWrap").remove();
	        }  
	 	});  
	}
	
	//??????????????????????????????
	function getAwaitCriminalCaseCount(currentPage, length, flag, source){
		//?????????
		var startNum = (currentPage - 1) * length;
		$.ajax({
	        type: "post",
	        url: requestPslesBasePath + "lawproblem/getCriminalCaseBPTOverdueByPage",
	        data: {
	        	curPage:currentPage,
	        	length:length,
	        	start: startNum,
	        	flag: flag,
	        	ajmc: $('#md_ajmc').val(),
				sldw: $("#md_sldw").val(),
				slsj: $('#md_slsj').val(),
				ajbh: $('#md_ajbh').val()
	        },
	        cache: false,
	        dataType: "json",
	        success: function (data,textStatus,jqXHR){
	        	var allData = data.iTotalRecords;
	        	md_totalPages = Math.ceil(allData / length);
		        if (source == '1') {
		        	var thead = "";
		        	thead += '<th width="60">????????????</th>';
		        	thead += '<th width="150">????????????</th>';
		        	thead += '<th width="150">???????????????</th>';
		        	thead += '<th width="150">??????????????????</th>';
		        	thead += '<th width="90">????????????</th>';
					thead += '<th width="70">????????????</th>';
        			thead += '<th width="150">??????????????????</th>';
        			thead += '<th width="150">??????????????????</th>';
       				thead += '<th width="100">????????????</th>';
       				thead += '<th width="100">????????????</th>';
    				thead += '<th width="100">??????</th>';
		        	$("#caseTable thead").html(thead);
		        	var tr = "";
				    for(var i=0;i<data.aaData.length;i++) {    //??????data??????   
				    	md_seqno = md_seqno + 1;
				    	tr += "<tr>";
// 				    	tr += "<td align=\"center\">" + md_seqno + "</td>";
					    tr += "<td>" + (data.aaData[i].AJBH==null?"":data.aaData[i].AJBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].AJMC) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].RYXM) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].RYCSBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLDW==null?"":data.aaData[i].SLDW) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLSJ==null?"":data.aaData[i].SLSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].QSSJ==null?"":data.aaData[i].QSSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].ZZSJ==null?"":data.aaData[i].ZZSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJZT==null?"":data.aaData[i].AJZT) + "</td>";
					    if (flag == '1') {
						    tr += "<td>" + (data.aaData[i].WARNFEED==null?"":data.aaData[i].WARNFEED) + "</td>";
						    if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<td><a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"8\")'>??????</a></td>";
						    } else {
						    	tr += "<td></td>";
						    }
					    } else {
					    	tr += "<td>" + (data.aaData[i].OVERFEED==null?"":data.aaData[i].OVERFEED) + "</td>";
						    tr += "<td align=\"center\"><a style=\"color:blue;text-decoration:none;cursor:pointer;\" onclick=\"cancelWarning('" + data.aaData[i].RYCSBH + "', 'getAwaitCriminalCaseCount', '8-" + flag + "')\">??????</a>";
		    				if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"8\")'>??????</a>";
						    }
		    				tr += "</td>";
					    }
					    tr += "</tr>";
				    	$("#caseTable tbody").html(tr);
				    }
		        	if (0 < allData) {
				    	$("#md_allPages").text(md_totalPages);
				    	$("#md_curpage").text(currentPage);
				    	$("#md_totalSize").text(allData);
				    } else {
				    	$("#md_allPages").text("0");
				    	$("#md_curpage").text("0");
				    	$("#md_totalSize").text("0");
				    	$("#caseTable tbody").html("");
				    }
		        } else {
		        	var list = "";
			        if (flag == '1') {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].WARNFEED + "??????????????????" + data.aaData[i].SLSJ + "????????????????????????" + data.aaData[i].QSSJ + "????????????????????????" + data.aaData[i].ZZSJ;
					    	list+="<li class=\"ulist\"><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"8\")'>"+data.aaData[i].RYXM+data.aaData[i].WARNFEED+"("+data.aaData[i].AJMC+")</a></li>";
					    }
			        } else {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].OVERFEED + "??????????????????" + data.aaData[i].SLSJ + "????????????????????????" + data.aaData[i].QSSJ + "????????????????????????" + data.aaData[i].ZZSJ;
					        list+="<li class=\"ulist\" ><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"8\")'>"+data.aaData[i].RYXM+data.aaData[i].OVERFEED+"("+data.aaData[i].AJMC+")</a></li>"					        
					    }
			        }
				    $("#pageMain8").html(list);
		        }
	        },
	        error:function (data,textStatus) {      
	             console.log(data)
	        },
	        beforeSend: function(){      
	            $('<div class="loadingWrap"></div>').appendTo("body");
	        },     
	        complete: function(){      
	           $(".loadingWrap").remove();
	        }  
	 	});  
	}
	
	//??????????????????????????????
	function getResidenceCriminalCaseCount(currentPage, length, flag, source){
		//?????????
		var startNum = (currentPage - 1) * length;
		$.ajax({
	        type: "post",
	        url: requestPslesBasePath + "lawproblem/getCriminalCaseSOROverdueByPage",
	        data: {
	        	curPage:currentPage,
	        	length:length,
	        	start: startNum,
	        	flag: flag,
	        	ajmc: $('#md_ajmc').val(),
				sldw: $("#md_sldw").val(),
				slsj: $('#md_slsj').val(),
				ajbh: $('#md_ajbh').val()
	        },
	        cache: false,
	        dataType: "json",
	        success: function (data,textStatus,jqXHR){
	        	var allData = data.iTotalRecords;
	        	md_totalPages = Math.ceil(allData / length);
		        if (source == '1') {
		        	var thead = "";
		        	thead += '<th width="60">????????????</th>';
		        	thead += '<th width="150">????????????</th>';
		        	thead += '<th width="150">???????????????</th>';
		        	thead += '<th width="150">??????????????????</th>';
		        	thead += '<th width="90">????????????</th>';
					thead += '<th width="70">????????????</th>';
        			thead += '<th width="150">??????????????????</th>';
        			thead += '<th width="150">??????????????????</th>';
       				thead += '<th width="100">????????????</th>';
       				thead += '<th width="100">????????????</th>';
    				thead += '<th width="100">??????</th>';
		        	$("#caseTable thead").html(thead);
		        	var tr = "";
				    for(var i=0;i<data.aaData.length;i++) {    //??????data??????   
				    	md_seqno = md_seqno + 1;
				    	tr += "<tr>";
// 				    	tr += "<td align=\"center\">" + md_seqno + "</td>";
					    tr += "<td>" + (data.aaData[i].AJBH==null?"":data.aaData[i].AJBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].AJMC) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].RYXM) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJMC==null?"":data.aaData[i].RYCSBH) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLDW==null?"":data.aaData[i].SLDW) + "</td>";
					    tr += "<td>" + (data.aaData[i].SLSJ==null?"":data.aaData[i].SLSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].QSSJ==null?"":data.aaData[i].QSSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].ZZSJ==null?"":data.aaData[i].ZZSJ) + "</td>";
					    tr += "<td>" + (data.aaData[i].AJZT==null?"":data.aaData[i].AJZT) + "</td>";
					    if (flag == '1') {
						    tr += "<td>" + (data.aaData[i].WARNFEED==null?"":data.aaData[i].WARNFEED) + "</td>";
						    if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<td><a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"9\")'>??????</a></td>";
						    } else {
						    	tr += "<td></td>";
						    }
					    } else {
					    	tr += "<td>" + (data.aaData[i].OVERFEED==null?"":data.aaData[i].OVERFEED) + "</td>";
						    tr += "<td align=\"center\"><a style=\"color:blue;text-decoration:none;cursor:pointer;\" onclick=\"cancelWarning('" + data.aaData[i].RYCSBH + "', 'getResidenceCriminalCaseCount', '9-" + flag + "')\">??????</a>";
		    				if (null != data.aaData[i].AJBH && "" != data.aaData[i].AJBH) {
							    tr += "<a style=\"color:blue;text-decoration:none;cursor:pointer;margin-left:10px;\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"9\")'>??????</a>";
						    }
		    				tr += "</td>";
					    }
					    tr += "</tr>";
				    	$("#caseTable tbody").html(tr);
				    }
		        	if (0 < allData) {
				    	$("#md_allPages").text(md_totalPages);
				    	$("#md_curpage").text(currentPage);
				    	$("#md_totalSize").text(allData);
				    } else {
				    	$("#md_allPages").text("0");
				    	$("#md_curpage").text("0");
				    	$("#md_totalSize").text("0");
				    	$("#caseTable tbody").html("");
				    }
		        } else {
		        	var list = "";
			        if (flag == '1') {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].WARNFEED + "??????????????????" + data.aaData[i].SLSJ + "????????????????????????" + data.aaData[i].QSSJ + "????????????????????????" + data.aaData[i].ZZSJ;
					    	list+="<li class=\"ulist\"><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"9\")'>"+data.aaData[i].RYXM+data.aaData[i].WARNFEED+"("+data.aaData[i].AJMC+")</a></li>";
					    }
			        } else {
			        	for(var i=0;i<data.aaData.length;i++){    //??????data??????   
					    	var tips = data.aaData[i].OVERFEED + "??????????????????" + data.aaData[i].SLSJ + "????????????????????????" + data.aaData[i].QSSJ + "????????????????????????" + data.aaData[i].ZZSJ;
					        list+="<li class=\"ulist\" ><a title=\"" + tips + "\" class=\"lawTips\"></a><a class=\"ajhover\" title=\""+data.aaData[i].AJMC+"\" onclick='jumpDetail(" + JSON.stringify(data.aaData[i]) + ", " + flag + ", \"9\")'>"+data.aaData[i].RYXM+data.aaData[i].OVERFEED+"("+data.aaData[i].AJMC+")</a></li>"					        
					    }
			        }
				    $("#pageMain9").html(list);
		        }
	        },
	        error:function (data,textStatus) {      
	             console.log(data)
	        },
	        beforeSend: function(){      
	            $('<div class="loadingWrap"></div>').appendTo("body");
	        },     
	        complete: function(){      
	           $(".loadingWrap").remove();
	        }  
	 	});  
	}
	
	$(function(){
		getChuJingCaseCount(1, 6, '1');
		getAcceptAdminCaseCount(1, 6, '1');
		getAcceptCriminalCaseCount(1, 6, '1');
		getRegisterCriminalCaseCount(1, 6, '1');
		getPublicSecurityCaseCount(1, 6, '1');
		getDetentCriminalCaseCount(1, 6, '1');
		getArrestCriminalCaseCount(1, 6, '1');
		getAwaitCriminalCaseCount(1, 6, '1');
		getResidenceCriminalCaseCount(1, 6, '1');
		
		//?????????tab??????
		$('a[name=policeWarning]').click(function () {
			if(!$(this).hasClass("active")) {
				$('a[name=policeWarning]').toggleClass("active");
			}
			var tabindex = $(this).attr("tabindex");
			if (tabindex == 'policeWarning') {
				getChuJingCaseCount(1, 6, '1');
			} else {
				getChuJingCaseCount(1, 6, '2');
			}
		});
		
		//????????????tab??????
		$('a[name=adminCaseDeal]').click(function () {
			if(!$(this).hasClass("active")) {
				$('a[name=adminCaseDeal]').toggleClass("active");
			}
			var tabindex = $(this).attr("tabindex");
			if (tabindex == 'adminCaseDealWarning') {
				getAcceptAdminCaseCount(1, 6, '1');
			} else {
				getAcceptAdminCaseCount(1, 6, '2');
			}
		});
		
		//????????????tab??????
		$('a[name=criminalCaseDeal]').click(function () {
			var tabindex = $(this).attr("tabindex");
			if(!$(this).hasClass("active")) {
				$('a[name=criminalCaseDeal]').toggleClass("active");
			}
			var tabindex = $(this).attr("tabindex");
			if (tabindex == 'criminalCaseDealWarning') {
				getAcceptCriminalCaseCount(1, 6, '1');
			} else {
				getAcceptCriminalCaseCount(1, 6, '2');
			}
		});
		
		//????????????tab??????
		$('a[name=criminalCaseRegister]').click(function () {
			var tabindex = $(this).attr("tabindex");
			if(!$(this).hasClass("active")) {
				$('a[name=criminalCaseRegister]').toggleClass("active");
			}
			var tabindex = $(this).attr("tabindex");
			if (tabindex == 'criminalCaseRegisterWarning') {
				getRegisterCriminalCaseCount(1, 6, '1');
			} else {
				getRegisterCriminalCaseCount(1, 6, '2');
			}
		});
		
		//????????????tab??????
		$('a[name=adminCaseHandle]').click(function () {
			var tabindex = $(this).attr("tabindex");
			if(!$(this).hasClass("active")) {
				$('a[name=adminCaseHandle]').toggleClass("active");
			}
			var tabindex = $(this).attr("tabindex");
			if (tabindex == 'adminCaseHandleWarning') {
				getPublicSecurityCaseCount(1, 6, '1');
			} else {
				getPublicSecurityCaseCount(1, 6, '2');
			}
		});
		
		//????????????tab??????
		$('a[name=criminalCaseDetention]').click(function () {
			if(!$(this).hasClass("active")) {
				$('a[name=criminalCaseDetention]').toggleClass("active");
			}
			var tabindex = $(this).attr("tabindex");
			if (tabindex == 'criminalCaseDetentionWarning') {
				getDetentCriminalCaseCount(1, 6, '1');
			} else {
				getDetentCriminalCaseCount(1, 6, '2');
			}
		});
		
		//????????????tab??????
		$('a[name=criminalCaseArrest]').click(function () {
			if(!$(this).hasClass("active")) {
				$('a[name=criminalCaseArrest]').toggleClass("active");
			}
			var tabindex = $(this).attr("tabindex");
			if (tabindex == 'criminalCaseArrestWarning') {
				getArrestCriminalCaseCount(1, 6, '1');
			} else {
				getArrestCriminalCaseCount(1, 6, '2');
			}
		});
		
		//??????????????????tab??????
		$('a[name=criminalCaseBPT]').click(function () {
			if(!$(this).hasClass("active")) {
				$('a[name=criminalCaseBPT]').toggleClass("active");
			}
			var tabindex = $(this).attr("tabindex");
			if (tabindex == 'criminalCaseBPTWarning') {
				getAwaitCriminalCaseCount(1, 6, '1');
			} else {
				getAwaitCriminalCaseCount(1, 6, '2');
			}
		});
		
		//??????????????????tab??????
		$('a[name=criminalCaseSOR]').click(function () {
			if(!$(this).hasClass("active")) {
				$('a[name=criminalCaseSOR]').toggleClass("active");
			}
			var tabindex = $(this).attr("tabindex");
			if (tabindex == 'criminalCaseSORWarning') {
				getResidenceCriminalCaseCount(1, 6, '1');
			} else {
				getResidenceCriminalCaseCount(1, 6, '2');
			}
		});
	});
	
	$('a[name=more]').click(function() {
		$('#md_ajmc').val('');
		$('#md_jyaq').val('');
		$("#md_sldw").val('');
		$('#md_slsj').val('');
		$('#md_ajbh').val('');
		var warn = $(this).prev().prev();
		var over = $(this).prev();
		var warnTabIndex = warn.attr("tabindex");
		var overTabIndex = over.attr("tabindex");
		$('#md_jyaq').parent().show();
		if (warn.hasClass("active")) {
			if (warnTabIndex == "policeWarning") {
				$('#md_jyaq').parent().hide();
				curMore = "policeWarning";
				getChuJingCaseCount(1, md_length, '1', '1');
			} else if (warnTabIndex == "adminCaseDealWarning") {
				$('#md_jyaq').parent().hide();
				curMore = "adminCaseDealWarning";
				getAcceptAdminCaseCount(1, md_length, '1', '1');
			} else if (warnTabIndex == "criminalCaseDealWarning") {
				$('#md_jyaq').parent().hide();
				curMore = "criminalCaseDealWarning";
				getAcceptCriminalCaseCount(1, md_length, '1', '1');
			} else if (warnTabIndex == "criminalCaseRegisterWarning") {
				$('#md_jyaq').parent().hide();
				curMore = "criminalCaseRegisterWarning";
				getRegisterCriminalCaseCount(1, md_length, '1', '1');
			} else if (warnTabIndex == "adminCaseHandleWarning") {
				$('#md_jyaq').parent().hide();
				curMore = "adminCaseHandleWarning";
				getPublicSecurityCaseCount(1, md_length, '1', '1');
			} else if (warnTabIndex == "criminalCaseDetentionWarning") {
				$('#md_jyaq').parent().hide();
				curMore = "criminalCaseDetentionWarning";
				getDetentCriminalCaseCount(1, md_length, '1', '1');
			} else if (warnTabIndex == "criminalCaseArrestWarning") {
				$('#md_jyaq').parent().hide();
				curMore = "criminalCaseArrestWarning";
				getArrestCriminalCaseCount(1, md_length, '1', '1');
			} else if (warnTabIndex == "criminalCaseBPTWarning") {
				$('#md_jyaq').parent().hide();
				curMore = "criminalCaseBPTWarning";
				getAwaitCriminalCaseCount(1, md_length, '1', '1');
			} else if (warnTabIndex == "criminalCaseSORWarning") {
				$('#md_jyaq').parent().hide();
				curMore = "criminalCaseSORWarning";
				getResidenceCriminalCaseCount(1, md_length, '1', '1');
			}
		} else if (over.hasClass("active")) {
			if (overTabIndex == "policeOverdue") {
				$('#md_jyaq').parent().hide();
				curMore = "policeOverdue";
				getChuJingCaseCount(1, md_length, '2', '1');
			} else if (overTabIndex == "adminCaseDealOverdue") {
				$('#md_jyaq').parent().hide();
				curMore = "adminCaseDealOverdue";
				getAcceptAdminCaseCount(1, md_length, '2', '1');
			} else if (overTabIndex == "criminalCaseDealOverdue") {
				$('#md_jyaq').parent().hide();
				curMore = "criminalCaseDealOverdue";
				getAcceptCriminalCaseCount(1, md_length, '2', '1');
			} else if (overTabIndex == "criminalCaseRegisterOverdue") {
				$('#md_jyaq').parent().hide();
				curMore = "criminalCaseRegisterOverdue";
				getRegisterCriminalCaseCount(1, md_length, '2', '1');
			} else if (overTabIndex == "adminCaseHandleOverdue") {
				$('#md_jyaq').parent().hide();
				curMore = "adminCaseHandleOverdue";
				getPublicSecurityCaseCount(1, md_length, '2', '1');
			} else if (overTabIndex == "criminalCaseDetentionOverdue") {
				$('#md_jyaq').parent().hide();
				curMore = "criminalCaseDetentionOverdue";
				getDetentCriminalCaseCount(1, md_length, '2', '1');
			} else if (overTabIndex == "criminalCaseArrestOverdue") {
				$('#md_jyaq').parent().hide();
				curMore = "criminalCaseArrestOverdue";
				getArrestCriminalCaseCount(1, md_length, '2', '1');
			} else if (overTabIndex == "criminalCaseBPTOverdue") {
				$('#md_jyaq').parent().hide();
				curMore = "criminalCaseBPTOverdue";
				getAwaitCriminalCaseCount(1, md_length, '2', '1');
			} else if (overTabIndex == "criminalCaseSOROverdue") {
				$('#md_jyaq').parent().hide();
				curMore = "criminalCaseSOROverdue";
				getResidenceCriminalCaseCount(1, md_length, '2', '1');
			}
		}
		$("#lawWarningBox").css("display","block");
		$("#popBox").css("display","block");
	});
	
	$("#md_queryBtn").on('click',function() {
		md_seqno = 0;
		md_currentPage = 1;
		if (curMore == "policeWarning") {
			getChuJingCaseCount(md_currentPage, md_length, "1", "1");
		} else if (curMore == "adminCaseDealWarning") {
			getAcceptAdminCaseCount(md_currentPage, md_length, '1', '1');
		} else if (curMore == "criminalCaseDealWarning") {
			getAcceptCriminalCaseCount(md_currentPage, md_length, '1', '1');
		} else if (curMore == "criminalCaseRegisterWarning") {
			getRegisterCriminalCaseCount(md_currentPage, md_length, '1', '1');
		} else if (curMore == "adminCaseHandleWarning") {
			getPublicSecurityCaseCount(md_currentPage, md_length, '1', '1');
		} else if (curMore == "criminalCaseDetentionWarning") {
			getDetentCriminalCaseCount(md_currentPage, md_length, '1', '1');
		} else if (curMore == "criminalCaseArrestWarning") {
			getArrestCriminalCaseCount(md_currentPage, md_length, '1', '1');
		} else if (curMore == "criminalCaseBPTWarning") {
			getAwaitCriminalCaseCount(md_currentPage, md_length, '1', '1');
		} else if (curMore == "criminalCaseSORWarning") {
			getResidenceCriminalCaseCount(md_currentPage, md_length, '1', '1');
		} else if (curMore == "policeOverdue") {
			getChuJingCaseCount(md_currentPage, md_length, "2", "1");
		} else if (curMore == "adminCaseDealOverdue") {
			getAcceptAdminCaseCount(md_currentPage, md_length, '2', '1');
		} else if (curMore == "criminalCaseDealOverdue") {
			getAcceptCriminalCaseCount(md_currentPage, md_length, '2', '1');
		} else if (curMore == "criminalCaseRegisterOverdue") {
			getRegisterCriminalCaseCount(md_currentPage, md_length, '2', '1');
		} else if (curMore == "adminCaseHandleOverdue") {
			getPublicSecurityCaseCount(md_currentPage, md_length, '2', '1');
		} else if (curMore == "criminalCaseDetentionOverdue") {
			getDetentCriminalCaseCount(md_currentPage, md_length, '2', '1');
		} else if (curMore == "criminalCaseArrestOverdue") {
			getArrestCriminalCaseCount(md_currentPage, md_length, '2', '1');
		} else if (curMore == "criminalCaseBPTOverdue") {
			getAwaitCriminalCaseCount(md_currentPage, md_length, '2', '1');
		} else if (curMore == "criminalCaseSOROverdue") {
			getResidenceCriminalCaseCount(md_currentPage, md_length, '2', '1');
		}
    });
	
	//??????????????????
	function cancelWarning(ajbh, name, type) {
		var con = confirm("??????????????????????????????????????????");
		if (con == true) {
			$.ajax({
		        type: "post",
		        url: requestPslesBasePath + "lawproblem/lawWarningCancel",		       
		        data: {
		        	ajbh: ajbh,
		        	type: type
		        },
		        cache:false,
		        success: function (data,textStatus,jqXHR) {
		        	if (name == 'getChuJingCaseCount') {
		        		getChuJingCaseCount(md_currentPage, md_length, '2', '1');
		        	} else if (name == 'getAcceptAdminCaseCount') {
		        		getAcceptAdminCaseCount(md_currentPage, md_length, '2', '1');
		        	} else if (name == 'getAcceptCriminalCaseCount') {
		        		getAcceptCriminalCaseCount(md_currentPage, md_length, '2', '1');
		        	} else if (name == 'getRegisterCriminalCaseCount') {
		        		getRegisterCriminalCaseCount(md_currentPage, md_length, '2', '1');
		        	} else if (name == 'getPublicSecurityCaseCount') {
		        		getPublicSecurityCaseCount(md_currentPage, md_length, '2', '1');
		        	} else if (name == 'getDetentCriminalCaseCount') {
		        		getDetentCriminalCaseCount(md_currentPage, md_length, '2', '1');
		        	} else if (name == 'getArrestCriminalCaseCount') {
		        		getArrestCriminalCaseCount(md_currentPage, md_length, '2', '1');
		        	} else if (name == 'getAwaitCriminalCaseCount') {
		        		getAwaitCriminalCaseCount(md_currentPage, md_length, '2', '1');
		        	} else if (name == 'getResidenceCriminalCaseCount') {
		        		getResidenceCriminalCaseCount(md_currentPage, md_length, '2', '1');
		        	}
		    		alert("?????????????????????????????????????????????");
		        },
		        error:function (data,textStatus) {
		        	alert("???????????????????????????????????????");
		        },
		        beforeSend: function(){      
		        },     
		        complete: function(){      
		        }  
		 	});
		}
	}
	
	function closeDialog() {
		$("#lawWarningBox").css("display","none");
		$("#popBox").css("display","none");
	}
	
	function md_prePage() {
		if (md_currentPage > 1) {
			md_currentPage = md_currentPage - 1;
			md_seqno = (md_currentPage - 1) * md_length;
			if (curMore == "policeWarning") {
				getChuJingCaseCount(md_currentPage, md_length, "1", "1");
			} else if (curMore == "adminCaseDealWarning") {
				getAcceptAdminCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseDealWarning") {
				getAcceptCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseRegisterWarning") {
				getRegisterCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "adminCaseHandleWarning") {
				getPublicSecurityCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseDetentionWarning") {
				getDetentCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseArrestWarning") {
				getArrestCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseBPTWarning") {
				getAwaitCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseSORWarning") {
				getResidenceCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "policeOverdue") {
				getChuJingCaseCount(md_currentPage, md_length, "2", "1");
			} else if (curMore == "adminCaseDealOverdue") {
				getAcceptAdminCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseDealOverdue") {
				getAcceptCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseRegisterOverdue") {
				getRegisterCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "adminCaseHandleOverdue") {
				getPublicSecurityCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseDetentionOverdue") {
				getDetentCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseArrestOverdue") {
				getArrestCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseBPTOverdue") {
				getAwaitCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseSOROverdue") {
				getResidenceCriminalCaseCount(md_currentPage, md_length, '2', '1');
			}
		}
	}
	
	function md_first() {
		if (md_currentPage != 1) {
			md_currentPage = 1;
			md_seqno = 0;
			if (curMore == "policeWarning") {
				getChuJingCaseCount(md_currentPage, md_length, "1", "1");
			} else if (curMore == "adminCaseDealWarning") {
				getAcceptAdminCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseDealWarning") {
				getAcceptCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseRegisterWarning") {
				getRegisterCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "adminCaseHandleWarning") {
				getPublicSecurityCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseDetentionWarning") {
				getDetentCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseArrestWarning") {
				getArrestCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseBPTWarning") {
				getAwaitCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseSORWarning") {
				getResidenceCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "policeOverdue") {
				getChuJingCaseCount(md_currentPage, md_length, "2", "1");
			} else if (curMore == "adminCaseDealOverdue") {
				getAcceptAdminCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseDealOverdue") {
				getAcceptCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseRegisterOverdue") {
				getRegisterCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "adminCaseHandleOverdue") {
				getPublicSecurityCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseDetentionOverdue") {
				getDetentCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseArrestOverdue") {
				getArrestCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseBPTOverdue") {
				getAwaitCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseSOROverdue") {
				getResidenceCriminalCaseCount(md_currentPage, md_length, '2', '1');
			}
		}
	}
	
	function md_last() {
		if (md_currentPage != md_totalPages) {
			md_currentPage = md_totalPages;
			md_seqno = (md_currentPage - 1) * md_length;
			if (curMore == "policeWarning") {
				getChuJingCaseCount(md_currentPage, md_length, "1", "1");
			} else if (curMore == "adminCaseDealWarning") {
				getAcceptAdminCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseDealWarning") {
				getAcceptCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseRegisterWarning") {
				getRegisterCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "adminCaseHandleWarning") {
				getPublicSecurityCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseDetentionWarning") {
				getDetentCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseArrestWarning") {
				getArrestCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseBPTWarning") {
				getAwaitCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseSORWarning") {
				getResidenceCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "policeOverdue") {
				getChuJingCaseCount(md_currentPage, md_length, "2", "1");
			} else if (curMore == "adminCaseDealOverdue") {
				getAcceptAdminCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseDealOverdue") {
				getAcceptCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseRegisterOverdue") {
				getRegisterCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "adminCaseHandleOverdue") {
				getPublicSecurityCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseDetentionOverdue") {
				getDetentCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseArrestOverdue") {
				getArrestCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseBPTOverdue") {
				getAwaitCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseSOROverdue") {
				getResidenceCriminalCaseCount(md_currentPage, md_length, '2', '1');
			}
		}
	}
	
	function md_nextPage() {
		if (md_currentPage < md_totalPages) {
			md_currentPage = md_currentPage + 1;
			md_seqno = (md_currentPage - 1) * md_length;
			if (curMore == "policeWarning") {
				getChuJingCaseCount(md_currentPage, md_length, "1", "1");
			} else if (curMore == "adminCaseDealWarning") {
				getAcceptAdminCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseDealWarning") {
				getAcceptCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseRegisterWarning") {
				getRegisterCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "adminCaseHandleWarning") {
				getPublicSecurityCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseDetentionWarning") {
				getDetentCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseArrestWarning") {
				getArrestCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseBPTWarning") {
				getAwaitCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "criminalCaseSORWarning") {
				getResidenceCriminalCaseCount(md_currentPage, md_length, '1', '1');
			} else if (curMore == "policeOverdue") {
				getChuJingCaseCount(md_currentPage, md_length, "2", "1");
			} else if (curMore == "adminCaseDealOverdue") {
				getAcceptAdminCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseDealOverdue") {
				getAcceptCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseRegisterOverdue") {
				getRegisterCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "adminCaseHandleOverdue") {
				getPublicSecurityCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseDetentionOverdue") {
				getDetentCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseArrestOverdue") {
				getArrestCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseBPTOverdue") {
				getAwaitCriminalCaseCount(md_currentPage, md_length, '2', '1');
			} else if (curMore == "criminalCaseSOROverdue") {
				getResidenceCriminalCaseCount(md_currentPage, md_length, '2', '1');
			}
		}
	}
	
	//??????????????????
	function jumpDetail(obj, flag, index) {
		//???????????????
		if (null == obj.AJBH || "" == obj.AJBH) {
	    	if (obj.CJSJ != '0') {
	    		if (flag == '1') {
					alert("???????????????????????????????????????????????????" + obj.JJSJ + "??????????????????" + obj.CJSJ + "????????????" + obj.WARNFEED);
				} else {
					alert("???????????????????????????????????????????????????" + obj.JJSJ + "??????????????????" + obj.CJSJ + "????????????" + obj.OVERFEED);
				}
	    	} else {
	    		alert("???????????????????????????????????????????????????" + obj.JJSJ + "?????????????????????????????????" + obj.OVERFEED);
	    	}
			return;
		}
		window.open(requestPslesBasePath + "lawCaseDetailIndex?caseNumber="+ obj.AJBH + "&&type=" + index + "-" + flag);
	}
</script>
<%@include file="/WEB-INF/views/common/psles-footer.jsp"%>