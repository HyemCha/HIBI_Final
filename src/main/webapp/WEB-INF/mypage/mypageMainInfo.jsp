<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	
	/* 큰 테두리 */
	.mypagecontainer{
		border: 1px solid #C4C4C4;
		border-radius: 16px;
		width: 940px;
		margin: 0 auto;
		display: flex;
		padding: 20px 70px;
	}
	
	/* 정보적혀있는거 */
	.mypagecontainer .mypageInfo {
		margin-right: 80px; 
		margin-left: 100px;
		margin-top: 5px;
		line-height: 25px;
		padding-right: 80px;
		padding-top: 30px;
		border-right: 1px solid #C4C4C4;
		font-size: 2rem;
	}
	
	/* 프로필사진 */
	.profilePhoto {
		width: 180px;
		height: 180px;
		border: 0px solid gray;
		border-radius: 100px;
	}
	
	/* 뱃지 이미지*/
	#badgemyBtn, #PPBtn{
		width: 150px;
		height: 150px;
		border-radius: 100px;
		margin-top: 5px;
		background-color: white;
		border: 0;
		}
	.badgebtnimage {
		width: 150px;
		height: 150px;
		border-radius: 100px;
		border:0px solid gray;
		;
	}
	
	
	/* 뱃지모달설정 */
	.badgepage, .profilephotopage{
		padding-left: 25px;
		width: 550px;
		height: 780px;
		background-color: white;
		padding-top: 10px;
	}
	.badgetitle, .profilephototitle{
		width: 490px;
		border-bottom: 2px solid gray;
		margin-bottom: 30px;
		margin-top: 30px;
		font-size: 30px;
		font-weight: bold;
	}
	.badgemain, .profilephotomain{
		width: 190px;
		height: 190px;
		background: #F6F186;
		border-radius: 100px;
		text-align: center;	
		margin-left: 155px;	
	}
	.profilephotomain{
		width: 190px;
		height: 190px;
		border-radius: 100px;
		text-align: center;	
		margin-left: 155px;	
	}
	img.mainbimg, img.mainppimg{
		width: 170px;
		height: 170px;
		border-radius: 100px;
		margin: 10px 10px 10px 10px;
	}
	.badgelist, .profilephotolist{
		display: flex;
		width: 490px;
		margin-top: 50px;
		border-top: 1px solid gray;
		text-align: center;
		padding-top: 20px;
	}
	.badgelist2, .profilephotolist2{
		display: flex;
		width: 490px;
		margin-top: 50px;
		text-align: center;
	}
	img.subbimg{
		width: 120px;
		height: 120px;
		border-radius: 100px;
		cursor: pointer;
	}	
	img.subppimg{
		width: 150px;
		height: 150px;
		border-radius: 100px;
		cursor: pointer;
	}	
	.imgback{
		background: #F6F186;
		padding: 5px 5px 5px 5px;
		border-radius: 100px;
	}
  	.close, #updatebgbtn{
  		position: absolute;
  		left: 30px;
  	}
	
	span {
		left: 237px;
	}
	
</style>

<script>


$(function(){
	
	

	$(document).on("click",".subbimg",function(){	// 버튼을 클릭하면
		var src=$(this).val("src"); 
		var ans=confirm("대표배지로 변경할꺼에요?");
		if(ans==true){
			$(".mainbimg").attr("src",$(this).val("src"));
			$("#badgemyBtn .badgebtnimage").attr("src", $(this).val("src"));
		}
	});
	$(document).on("click",".subppimg",function(){	// 버튼을 클릭하면
		var src=$(this).val("src"); 
		var ans=confirm("대표배지로 변경할꺼에요?");
		if(ans==true){
			$(".mainppimg").attr("src",$(this).val("src"));
			$("#badgemyBtn .badgebtnimage").attr("src", $(this).val("src"));
		}
	});

});



</script>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
	<!-- 뱃지 변경 -->
	<div class="mypagecontainer">
		<!-- 프로필 사진 modal -->
		<div class="profilePhotocontainer">
			<button type="button" class="PPbtn" data-toggle="modal" data-target="#profilePhotoModal" id="PPBtn">
				<img src="" class="profilePhoto"></button>
			<div class="modal fade" id="profilePhotoModal" role="dialog">
				<div class="modal-dialog">
		      <!-- Modal content-->
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="profilephotopage">
						<div class="profilephototitle">
							프로필 사진 변경하기
						</div>
						<div class="profilephotomain">
							<img class="mainppimg" src="/image/8.jpg">
							<h5>프로필 사진</h5>
						</div>
						<div class="profilephotolist">
							<c:forEach var="profilephotoNum" begin="1" end="3">
								<div class="profilephotos" style="margin: 0 auto;">
									<img class="subppimg" src="/image/${profilephotoNum}.jpg" style="padding: 5px 5px 5px 5px;">
									<h5>${profilephotoname}</h5>
								</div>
								<c:if test="${profilephotoNum%3==0}">
									<br>
								</c:if>
							</c:forEach>
						</div>
						<div class="profilephotolist2">
							<c:forEach var="profilephotoNum" begin="4" end="6">
								<div class="profilephotos" style="margin: 0 auto;">
									<img class="subppimg" src="/image/${profilephotoNum}.jpg" >
									<h5>${profilephotoname}</h5>
								</div>
							</c:forEach>
						</div>
						<span class="glyphicon glyphicon-menu-down"></span>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 개인정보 -->
		<div class="mypageInfo">
			<ul>
				<li>권은비</li>
				<li>1994.04.03</li>
				<li>서울 강서구 마곡동</li>
				<li>qwerqwe@gmail.com</li>
				<li>010-2343-3456</li>
			</ul>
		</div>
		
		<!-- 뱃지 -->
		<div class="badgecontainer">
			<button type="button" class="bbtn" data-toggle="modal" data-target="#badgemyModal" id="badgemyBtn">
				<img src="" class="badgebtnimage"></button>
			<div style="font-size: 2rem; margin-left: 40px; margin-top: 5px;">뱃지 이름</div>
			<div class="modal fade" id="badgemyModal" role="dialog">
				<div class="modal-dialog">
		      <!-- Modal content-->
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="badgepage">
						<div class="badgetitle">
							활동 뱃지
						</div>
						<div class="badgemain">
							<img class="mainbimg" src="">
							<h5>대표 뱃지<br>
							뱃지 이름</h5>
						</div>
						<div class="badgelist">
							<c:forEach var="badgeNum" begin="1" end="3">
								<div class="badges" style="margin-left: 25px;">
									<div class="imgback">
										<img class="subbimg" src="/image/${badgeNum}.jpg">
									</div>
									<h5>${badgename}</h5>
								</div>
								<c:if test="${badgeNum%3==0}">
									<br>
								</c:if>
							</c:forEach>
						</div>
						<div class="badgelist2">
							<c:forEach var="badgeNum" begin="4" end="6">
								<div class="badges" style="margin-left: 25px;">
									<div class="imgback">
										<img class="subbimg" src="/image/${badgeNum}.jpg" >
									</div>
									<h5>${badgename}</h5>
								</div>
							</c:forEach>
						</div>
						<span class="glyphicon glyphicon-menu-down"></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	 
	<!-- 프로필사진 변경 
	<input type="file" id="upload" name="upload" accept="image/*" required="required" multiple="multiple">
	<div id="imagePreview">
		<button class="upBtn"><img src="" id="myimg" style="width: 100px; height: 100px;">zzz</button>
  	</div>
	 -->
	
</body>
	<script type="text/javascript">
	/*
	$(function() {
		// 미리보기 코드	
		$("#upload").change(function(){
			// 정규표현식
			var reg = /(.*?)\/(jpg|jpeg|png|bmp)$/;
			
			var f = $(this)[0].files[0]; // 현재 선택한 파일
			if(!f.type.match(reg)){
				alert("확장자가 이미지 파일이 아닙니다.");
				return;
			}
			var reader = new FileReader();
			reader.onload = function(e){
				$("#myimg").attr("src", e.target.result); // 선택한 이미지가 배열로 리턴
			}
			
			reader.readAsDataURL(f);
		});
	});
	*/
	/*
		const uploadBtn = document.querySelector('.upBtn');
		const realInput = document.querySelector('#realup');
	
		uploadBtn.addEventListener('click',()=>{
			realInput.click();
		});
		
		
		function readInputFile(e){
		    var sel_files = [];
		    
		    sel_files = [];
		    $('#imagePreview').empty();
		    
		    var files = e.target.files;
		    var fileArr = Array.prototype.slice.call(files);
		    var index = 0;
		    
		    fileArr.forEach(function(f){
		    	if(!f.type.match("image/.*")){
		        	alert("이미지 확장자만 업로드 가능합니다.");
		            return;
		        };
		        if(files.length < 3){
		        	sel_files.push(f);
		            var reader = new FileReader();
		            reader.onload = function(e){
		            	var html = `<a id=img_id_${index}><img src=${e.target.result} data-file=${f.name} /></a>`;
		                $('imagePreview').append(html);
		                index++;
		            };
		            reader.readAsDataURL(f);
		        }
		    })
		    if(files.length > 11){
		    	alert("최대 10장까지 업로드 할 수 있습니다.");
		    }
		}

		$('#real-input').on('change',readInputFile);
		*/
	</script>


</html>










