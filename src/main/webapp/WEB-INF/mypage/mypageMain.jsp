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
<style type="text/css">
	body * {
		font-size: 2rem;
	}
	
	.mypagemaincontainer1, .section {
		width:940px;
		margin:0 auto;
	}
	
	hr {
		width: 940px;
	}
	
	/*나의게시물, 나의찜*/
	.mpimg {
		width: 200px;
		height: 110px;
		background-size: cover;
	}
	.mlimg {
		width: 167px;
		height: 216px;
	}
	
	/* 나의게시물, 나의찜 제목*/
	.mypagetopic {
		width: 200px;
		margin-top: 50px;
		font-size: 3rem;
		display: flex;
	}
	
	/* +more */
	.plusmore {
		cursor: pointer;
		float: right;
		color: #C4C4C4;
	}


	
	.section input[id*="slide"], .section2 input[id*="slide2"]{
		display: none;
	}
	.section .slidewrap, .section2 .slidewrap2 {
		max-width: 940px;
		margin: 0 auto;
		overflow: hidden;
	}
	.section .slidelist, .section2 .slidelist2 {
		white-space: nowrap;
	}
	.section .slidelist > li, .section2 .slidelist2 > li {
		display: inline-block;
		vertical-align:middle;
		width: 100%;
		transition: all .5s;
		
	}
	.section .slidelist > li > a, .section2 .slidelist2 > li > a {
		display: block;
		position: relative;
	}
	.section .slidelist > li > a img, .section2 .slidelist2 > li > a img {
		width: 100%;
	}
	.section .slidewrap .slidelist label, .section2 .slidewrap2 .slidelist2 label {
		position: absolute;
		z-index: 10;
		top: 50%;
		padding: 20px;
		cursor: pointer;
	}
	.section .slidelist .left, .section2 .slidelist2 .left {
		left: 3px;
	}
	.section .slidelist .right, .section2 .slidelist2 .right {
		right: 3px;
	}
	.section [id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
	.section [id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%);}
	.section [id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}
	.section2 [id="slide201"]:checked ~ .slidewrap2 .slidelist2 > li {transform:translateX(0%);}
	.section2 [id="slide202"]:checked ~ .slidewrap2 .slidelist2 > li {transform:translateX(-100%);}
	.section2 [id="slide203"]:checked ~ .slidewrap2 .slidelist2 > li {transform:translateX(-200%);}
	
</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
	
	<div class="section2">
		<input type="radio" name="slide2" id="slide201" checked="checked"> 
		<input type="radio" name="slide2" id="slide202"> 
		<input type="radio" name="slide2" id="slide203">
		
		<div class="slidewrap2">
			<div class="mypagetopic">작성한 게시물</div><b class="plusmore" onclick="location.href='${root}/mypage/likeList'">+more</b>
			<hr>
			<ul class="slidelist2">
				<li>
					<a>
						<div style="display: flex;">
							<label for="slide203" class="left" style="background: url(${root}/image/leftnextpage.svg) center center / 100% no-repeat;"></label>
							<c:forEach var="mylikeImage2" begin="1" end="4">
								<div class="zzz2" style="width: 235px; text-align: center;">
									<a href="${root}/product/productDetail">
								   		<img class="mlimg" src="${root}/image/${mylikeImage2}.jpg">
								   	</a>
								   	<ul>
										<li>게시글 제목</li>
										<li>날짜</li>
										<li>내용</li>
									</ul>
								</div>
							</c:forEach>
							<label for="slide202" class="right" style="background: url(${root}/image/rightnextpage.svg) center center / 100% no-repeat;"></label>
						</div>
					</a>
				</li>
				<li>
					<a>
						<div style="display: flex;">
							<label for="slide201" class="left" style="background: url(${root}/image/leftnextpage.svg) center center / 100% no-repeat;"></label>
							<c:forEach var="mylikeImage2" begin="5" end="8">
								<div class="zzz2" style="width: 235px; text-align: center;">
									<a href="${root}/product/productDetail">
								   		<img class="mlimg" src="${root}/image/${mylikeImage2}.jpg">
								   	</a>
								   	<ul>
										<li>게시글 제목</li>
										<li>날짜</li>
										<li>내용</li>
									</ul>
								</div>
							</c:forEach>
							<label for="slide203" class="right" style="background: url(${root}/image/rightnextpage.svg) center center / 100% no-repeat;"></label>
						</div>
					</a>
				</li>
				<li>
					<a>
						<div style="display: flex;">
							<label for="slide202" class="left" style="background: url(${root}/image/leftnextpage.svg) center center / 100% no-repeat;"><label>
							<c:forEach var="mylikeImage2" begin="9" end="10">
								<div class="zzz2" style="width: 235px; text-align: center;">
									<a href="${root}/product/productDetail">
								   		<img class="mlimg" src="${root}/image/${mylikeImage2}.jpg">
								   	</a>
								   	<ul>
										<li>게시글 제목</li>
										<li>날짜</li>
										<li>내용</li>
									</ul>
								</div>
							</c:forEach>
							<label for="slide201" class="right" style="background: url(${root}/image/rightnextpage.svg) center center / 100% no-repeat;"></label>
						</div>
					</a>
				</li>
			</ul>
		</div>
	</div>
	
	
	<div class="section">
		<input type="radio" name="slide" id="slide01" checked="checked"> 
		<input type="radio" name="slide" id="slide02"> 
		<input type="radio" name="slide" id="slide03">
		
		<div class="slidewrap">
			<div class="mypagetopic">나의 찜</div><b class="plusmore" onclick="location.href='${root}/mypage/likeList'">+more</b>
			<hr>
			<ul class="slidelist">
				<li>
					<a>
						<div style="display: flex;">
							<label for="slide03" class="left" style="background: url(${root}/image/leftnextpage.svg) center center / 100% no-repeat;"></label>
							<c:forEach var="mylikeImage" begin="1" end="4">
								<div class="zzz" style="width: 235px; text-align: center;">
									<a href="${root}/product/productDetail">
								   		<img class="mlimg" src="${root}/image/${mylikeImage}.jpg">
								   	</a>
								   	<ul>
										<li>게시글 제목</li>
										<li>날짜</li>
										<li>내용</li>
									</ul>
								</div>
							</c:forEach>
							<label for="slide02" class="right" style="background: url(${root}/image/rightnextpage.svg) center center / 100% no-repeat;"></label>
						</div>
					</a>
				</li>
				<li>
					<a>
						<div style="display: flex;">
							<label for="slide01" class="left" style="background: url(${root}/image/leftnextpage.svg) center center / 100% no-repeat;"></label>
							<c:forEach var="mylikeImage" begin="5" end="8">
								<div class="zzz" style="width: 235px; text-align: center;">
									<a href="${root}/product/productDetail">
								   		<img class="mlimg" src="${root}/image/${mylikeImage}.jpg">
								   	</a>
								   	<ul>
										<li>게시글 제목</li>
										<li>날짜</li>
										<li>내용</li>
									</ul>
								</div>
							</c:forEach>
							<label for="slide03" class="right" style="background: url(${root}/image/rightnextpage.svg) center center / 100% no-repeat;"></label>
						</div>
					</a>
				</li>
				<li>
					<a>
						<div style="display: flex;">
							<label for="slide02" class="left" style="background: url(${root}/image/leftnextpage.svg) center center / 100% no-repeat;"><label>
							<c:forEach var="mylikeImage" begin="9" end="10">
								<div class="zzz" style="width: 235px; text-align: center;">
									<a href="${root}/product/productDetail">
								   		<img class="mlimg" src="${root}/image/${mylikeImage}.jpg">
								   	</a>
								   	<ul>
										<li>게시글 제목</li>
										<li>날짜</li>
										<li>내용</li>
									</ul>
								</div>
							</c:forEach>
							<label for="slide01" class="right" style="background: url(${root}/image/rightnextpage.svg) center center / 100% no-repeat;"></label>
						</div>
					</a>
				</li>
			</ul>
		</div>
	</div>	
	
	
</body>
</html>








