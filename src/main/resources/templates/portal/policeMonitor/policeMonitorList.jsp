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
		background: url(<%=request.getContextPath()%>/image/xqpcsbg.png);
		background-size: cover;
        background-repeat: no-repeat;
	}
	.title{
		width: 100%;
		height: 9%;
		color: #FFFFFF;
		font-size: 20px;
		display: flex;
		align-items: center;
		justify-content: flex-start;
	}
	.returnImg{
		width:30px;
		cursor: pointer;
		margin-left: 2%;
	}
	.main{
		width: 100%;
		height: 91%;
	}
	.mainContent{
		width: 100%;
		height:900px;	
		display: flex;
		flex-wrap: wrap;
		overflow-y:auto; 
	}
	.firstArea{
		width: 48%;
		height: 47%;
		margin-left: 1%;
		margin-top: 1%;
		background: url(<%=request.getContextPath()%>/image/block.png)no-repeat;
		background-size: 100% 100%;
		display: flex;
		flex-direction: column;
		align-items: center;
	}			
	.policeName{
		width: 85%;
		height: 40px;
		margin-top: 5px;
		display: flex;
		align-items: center;
		justify-content: space-between;
		color: #FFFFFF;
		font-size: 12px;
	}
	.videoBox{
		width: 90%;
		height: 82%;
		display: flex;
		align-items: center;
		justify-content: center;
	}
	select{
		height: 100%;
		background: transparent;
		border: 1px solid rgba(144,166,183,0.3);
		color: #E8E8E8;
		font-size: 12px;
	}
	.option{
    	background: #132456;
    	color: #FFFFFF;
    }
</style>
<link href="<%=request.getContextPath()%>/plugin/video/video-js.min.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/plugin/video/video.min.js"></script>     
<script src="<%=request.getContextPath()%>/plugin/video/videojs-flash.min.js"></script> 
<script src="<%=request.getContextPath()%>/plugin/video/videojs-ie8.min.js"></script>
<div class="title">
	<img src="<%=request.getContextPath()%>/img/return.png" class="returnImg" onclick="returnBasic()"/>
	<h4>??????????????????????????????????????????----???????????????</h4>
	<a id="resetMonitor" dataStatus="1" onclick="resetMonitor()" style="cursor:pointer;margin-left:50px;">??????</a>
</div>
<div class="main">
	<div class="mainContent">
		<div class="firstArea" style="margin-left: 1%;">
			<div class="policeName">
				<span>??????????????????</span>
				<span>
					<select name="monitor" belong="wgcpolice" class="check">
						<option value="92.175.76.3" class="option">?????????</option>
						<option value="192.168.2.207" class="option">?????????</option>
						<option value="192.168.2.206" class="option">?????????1</option>
						<option value="192.168.2.215" class="option">?????????2</option>
					</select>
				</span>
			</div>
			<div class="videoBox">
				<video id="wgcvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">
				    <source id="cnsource" src="rtmp://92.175.70.203:1935/hls/zwpli" type="rtmp/flv"/>
				</video>
			</div>
		</div>
		<div class="firstArea">
			<div class="policeName">
				<span>??????????????????</span>
				<span>
					<select name="monitor" belong="wcbpolice" class="check">
						<option value="92.175.79.1" class="option">?????????</option>
						<option value="192.168.2.144" class="option">?????????1</option>
						<option value="192.168.2.146" class="option">?????????2</option>
					</select>
				</span>
			</div>
			<div class="videoBox">
				<video id="wcbvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">
				    <source id="wcbsource" src="rtmp://admin:wq123456@92.175.79.1" type="rtmp/flv"/>
				</video>
			</div>1
		</div>
		<div class="firstArea">
			<div class="policeName">
				<span>???????????????</span>
				<span>
					<select name="monitor" belong="zwpolice" class="check">
						<option value="92.175.74.3" class="option">?????????3</option>
						<option value="92.175.74.252" class="option">????????????</option>
						<option value="92.175.74.1" class="option">?????????1</option>
						<option value="92.175.74.2" class="option">?????????2</option>
						<option value="92.175.75.4" class="option">?????????</option>
					</select>
				</span>
			</div>
			<div class="videoBox">
				<video id="zwvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">
				    <source id="zwsource" src="rtmp://Admin:1111@92.175.74.3" type="rtmp/flv"/>
				</video>
			</div>
		</div>
		<div class="firstArea">
			<div class="policeName">
				<span>???????????????</span>
				<span>
					<select name="monitor" belong="ccpolice" class="check">
						<option value="92.175.73.6" class="option">?????????</option>
						<option value="192.168.2.50" class="option">?????????</option>
						<option value="192.168.2.45" class="option">?????????</option>
					</select>
				</span>
			</div>
			<div class="videoBox">
				<video id="hgvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">
				    <source id="hgsource" src="rtmp://admin:wq123456@92.175.73.6" type="rtmp/flv"/>
				</video>
			</div>
		</div>
		<div class="firstArea">
			<div class="policeName">
				<span>???????????????</span>
				<span>
					<select name="monitor" belong="czpolice" class="check">
						<option value="192.168.2.40" class="option">?????????</option>
						<option value="192.168.2.50" class="option">?????????</option>
						<!--
						<option value="192.168.2.32" class="option">?????????</option>
						-->
						<option value="192.168.2.45" class="option">?????????</option>
					</select>
				</span>
			</div>
			<div class="videoBox">
				<video id="hgvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">
				    <source id="hgsource" src="rtmp://10.175.12.114:1935/hls/hgpolice40" type="rtmp/flv"/>
				</video>
			</div>
		</div>
		<div class="firstArea">
			<div class="policeName">
				<span>???????????????</span>
				<span>
					<select name="monitor" belong="mgpolice" class="check">
						<option value="192.168.2.40" class="option">?????????</option>
						<option value="192.168.2.50" class="option">?????????</option>
						<!--
						<option value="192.168.2.32" class="option">?????????</option>
						-->
						<option value="192.168.2.45" class="option">?????????</option>
					</select>
				</span>
			</div>
			<div class="videoBox">
				<video id="hgvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">
				    <source id="hgsource" src="rtmp://10.175.12.114:1935/hls/hgpolice40" type="rtmp/flv"/>
				</video>
			</div>
		</div>
		<div class="firstArea">
			<div class="policeName">
				<span>???????????????</span>
				<span>
					<select name="monitor" belong="xzpolice" class="check">
						<option value="192.168.2.40" class="option">?????????</option>
						<option value="192.168.2.50" class="option">?????????</option>
						<!--
						<option value="192.168.2.32" class="option">?????????</option>
						-->
						<option value="192.168.2.45" class="option">?????????</option>
					</select>
				</span>
			</div>
			<div class="videoBox">
				<video id="hgvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">
				    <source id="hgsource" src="rtmp://10.175.12.114:1935/hls/hgpolice40" type="rtmp/flv"/>
				</video>
			</div>
		</div>
		<div class="firstArea">
			<div class="policeName">
				<span>??????????????????</span>
				<span>
					<select name="monitor" belong="wwzpolice" class="check">
						<option value="192.168.2.40" class="option">?????????</option>
						<option value="192.168.2.50" class="option">?????????</option>
						<!--
						<option value="192.168.2.32" class="option">?????????</option>
						-->
						<option value="192.168.2.45" class="option">?????????</option>
					</select>
				</span>
			</div>
			<div class="videoBox">
				<video id="hgvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">
				    <source id="hgsource" src="rtmp://10.175.12.114:1935/hls/hgpolice40" type="rtmp/flv"/>
				</video>
			</div>
		</div>
		<div class="firstArea">
			<div class="policeName">
				<span>???????????????</span>
				<span>
					<select name="monitor" belong="bbpolice" class="check">
						<option value="192.168.2.40" class="option">?????????</option>
						<option value="192.168.2.50" class="option">?????????</option>
						<!--
						<option value="192.168.2.32" class="option">?????????</option>
						-->
						<option value="192.168.2.45" class="option">?????????</option>
					</select>
				</span>
			</div>
			<div class="videoBox">
				<video id="hgvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">
				    <source id="hgsource" src="rtmp://10.175.12.114:1935/hls/hgpolice40" type="rtmp/flv"/>
				</video>
			</div>
		</div>
		<div class="firstArea">
			<div class="policeName">
				<span>???????????????</span>
				<span>
					<select name="monitor" belong="xcpolice" class="check">
						<option value="192.168.2.40" class="option">?????????</option>
						<option value="192.168.2.50" class="option">?????????</option>
						<!--
						<option value="192.168.2.32" class="option">?????????</option>
						-->
						<option value="192.168.2.45" class="option">?????????</option>
					</select>
				</span>
			</div>
			<div class="videoBox">
				<video id="hgvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">
				    <source id="hgsource" src="rtmp://10.175.12.114:1935/hls/hgpolice40" type="rtmp/flv"/>
				</video>
			</div>
		</div>
		<div class="firstArea">
			<div class="policeName">
				<span>??????????????????</span>
				<span>
					<select name="monitor" belong="tbcpolice" class="check">
						<option value="192.168.2.40" class="option">?????????</option>
						<option value="192.168.2.50" class="option">?????????</option>
						<!--
						<option value="192.168.2.32" class="option">?????????</option>
						-->
						<option value="192.168.2.45" class="option">?????????</option>
					</select>
				</span>
			</div>
			<div class="videoBox">
				<video id="hgvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">
				    <source id="hgsource" src="rtmp://10.175.12.114:1935/hls/hgpolice40" type="rtmp/flv"/>
				</video>
			</div>
		</div>
		<div class="firstArea">
			<div class="policeName">
				<span>??????????????????</span>
				<span>
					<select name="monitor" belong="zgmpolice" class="check">
						<option value="192.168.2.40" class="option">?????????</option>
						<option value="192.168.2.50" class="option">?????????</option>
						<!--
						<option value="192.168.2.32" class="option">?????????</option>
						-->
						<option value="192.168.2.45" class="option">?????????</option>
					</select>
				</span>
			</div>
			<div class="videoBox">
				<video id="hgvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">
				    <source id="hgsource" src="rtmp://10.175.12.114:1935/hls/hgpolice40" type="rtmp/flv"/>
				</video>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	var body = document.querySelector("body");
	var h = document.documentElement.clientHeight;
	body.style.height = h + "px";
	
	videojs.options.flash.swf = "<%=request.getContextPath()%>/plugin/video/video-js.swf";

	function changeDivHeight(){
		var h = document.documentElement.clientHeight;
		body.style.height = h + "px";
	}

	function returnBasic(){
		window.opener=null;
		window.open('','_self');
		window.close();
	}
	
	function resetMonitor() {
		$.ajax({
      type: "post",
      url: requestPslesBasePath + "remoteCall/monitorShellScript",		       
      data: {},
      cache:false,
      dataType: "json",
      success: function (data,textStatus,jqXHR) {
      	alert(data.msg);
      	window.location.reload();
      },
      error:function (data,textStatus) { 
      	alert("?????????????????????");
      }
	 	});  
	}
	
	$('select[name=monitor]').change(function () {
		var ipVal = $(this).val().split('.')[3];
		var belong = $(this).attr('belong');
		if (belong == 'zwpolice') {
			var videoDiv = $('#cnvideo').parent();
			//????????????????????????video,???????????????
			var myPlayer = videojs('cnvideo');
			myPlayer.dispose();
			var videoDom = '<video id="cnvideo" class="video-js vjs-default-skin vjs-bi
			g-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">';
			videoDom += '<source id="cnsource" src="rtmp://Admin:1111@' + ipVal + '" type="rtmp/flv"/></video>';
			videoDiv.html(videoDom);
			var myPlayer = videojs("cnvideo");
			myPlayer.play();
		}else if (belong == 'cnpolice') {
			var videoDiv = $('#cnvideo').parent();
			//????????????????????????video,???????????????
			var myPlayer = videojs('cnvideo');
			myPlayer.dispose();
			var videoDom = '<video id="cnvideo" class="video-js vjs-default-skin vjs-bi
			g-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">';
			videoDom += '<source id="cnsource" src="rtmp://10.175.12.114:1935/hls/cnpolice' + ipVal + '" type="rtmp/flv"/></video>';
			videoDiv.html(videoDom);
			var myPlayer = videojs("cnvideo");
			myPlayer.play();
		} else if (belong == 'xxpolice') {
			var videoDiv = $('#xxvideo').parent();
			//????????????????????????video,???????????????
			var myPlayer = videojs('xxvideo');
			myPlayer.dispose();
			var videoDom = '<video id="xxvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">';
			videoDom += '<source id="xxsource" src="rtmp://10.175.12.114:1935/hls/xxpolice' + ipVal + '" type="rtmp/flv"/></video>';
			videoDiv.html(videoDom);
			var myPlayer = videojs("xxvideo");
			myPlayer.play();
		} else if (belong == 'whpolice') {
			var videoDiv = $('#whvideo').parent();
			//????????????????????????video,???????????????
			var myPlayer = videojs('whvideo');
			myPlayer.dispose();
			var videoDom = '<video id="whvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">';
			videoDom += '<source id="whsource" src="rtmp://10.175.12.114:1935/hls/whpolice' + ipVal + '" type="rtmp/flv"/></video>';
			videoDiv.html(videoDom);
			var myPlayer = videojs("whvideo");
			myPlayer.play();
		} else if (belong == 'hgpolice') {
			var videoDiv = $('#hgvideo').parent();
			//????????????????????????video,???????????????
			var myPlayer = videojs('hgvideo');
			myPlayer.dispose();
			var videoDom = '<video id="hgvideo" class="video-js vjs-default-skin vjs-big-play-centered" style="object-fit:fill;width:100%;height:100%;" preload="auto" autoplay="autoplay" data-setup="{}">';
			videoDom += '<source id="hgsource" src="rtmp://10.175.12.114:1935/hls/hgpolice' + ipVal + '" type="rtmp/flv"/></video>';
			videoDiv.html(videoDom);
			var myPlayer = videojs("hgvideo");
		}
	});
</script>
<%@include file="/WEB-INF/views/common/psles-footer.jsp"%>