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
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
	/* 큰 테두리 */
	.mypagemenucontainer {
		display: flex;
		width: 940px;
		margin: 0 auto;
		padding-left: 250px;
		padding-top: 20px;
		padding-bottom: 20px;
		text-align: center;
	}
	
	body *{
		font-size: 2rem;
	}

	
</style>


</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
<!-- aaaa -->
	<div class="mypagemenucontainer">
		<nav class="navbar navbar-inverse" style="background-color: white; border: white;">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li style="margin-right: 20px;">
						<a href="${root}/mypage/" class="profileImage">
							<img src="${root}/image/profile.svg">
						</a>
						<b>Profile</b>
					</li>
					<li class="dropdown" style="margin-right: 20px;">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="background-color: white;">
							<span><img src="${root}/image/setting.svg"></span>
						</a><b>Setting</b>
						<ul class="dropdown-menu" style="border-radius: 8px;">
							<li><a href="${root}/mypage/modifyMyInfo">회원정보 수정</a></li>
						</ul>
					</li>
					<li class="dropdown" style="margin-right: 20px;">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" style="background-color: white;">
							<span class="glyphicon glyphicon-heart" style="font-size: 38px; color: black;"></span>
						</a><b>Like</b>
						<ul class="dropdown-menu" style="border-radius: 8px;">
							<li><a href="${root}/mypage/likeList">찜한 게시물</a></li>
							<li><a href="${root}/mypage/commentList">댓글</a></li>
							<li><a href="${root}/mypage/productList">작성한 게시물</a></li>
						</ul>
					</li>
					<li style="margin-right: 20px;">
						<a href="${root}/product/productForm" class="writeImage">
							<img src="${root}/image/pencil.svg">
						</a><b>Write</b>
					</li>
					<li style="margin-right: 20px;">
						<a href="${root}/mypage/modifyMyInfo" class="">
							<img src="${root}/image/pencil.svg">
						</a><b>?????</b>
					</li>
				</ul>
			</div>
		</nav>
	</div>
</body>
</html>











