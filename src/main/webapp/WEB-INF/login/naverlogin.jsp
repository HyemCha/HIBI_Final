<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests"> 
  <link rel="shortcut icon" href="${root}/image/naver.ico" type="image/x-icon">
  <title>네이버 로그인</title>
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<style>
	div.naverlogin{
		width: 400px;
		height: 360px;
		margin: 100px auto;
		border: 0px solid black;
		border-radius: 10px;
		background: #EEEEEE;
		box-shadow: 0px 0px 0px #2DB400;
	}
	
	p.naverok{
		font-size: 30px;
		text-align: center;
		padding-top: 20px;
		color: #2DB400;
	}

	p.naveroks{
		font-size: 20px;
		text-align: center;
	}
	
	div.naveridlogin img{
		max-width: 300px;
		max-height: 120px;
		margin: 20px 0 0 50px;
	}
	
	img.hibi_logo_img{
		margin: auto;
		width: 311px; 
		height: 117px; 
	}
	
	div.hibi_logo{
		display: flex;
		margin: 100px auto;
		width: 400px;
		height: 130px;
		padding-bottom: 13px;
		border-bottom: 2px solid #EEEEEE;
		
	}
</style>
<body>
	<div class="hibi_logo">
		<img class="hibi_logo_img" src="${root}/image/KakaoTalk_Image_2022-05-19-19-44-47.png" id="image">
	</div>
	<div class="naverlogin">
		<p class="naverok">네이버로 로그인하기</p>
		<p class="naveroks">로그인 하시려면</p>
		<p class="naveroks">버튼을 눌러주세요</p>
		<div class="naveridlogin" id="naver_id_login">
		</div>
	</div>
	<script type="text/javascript">
		var naver_id_login = new naver_id_login("L_JLkR8lU8vY4v1VSTJo", "http://127.0.0.1:9001/login/naver/callback");
	  	var state = naver_id_login.getUniqState();
	  	naver_id_login.setButton("white", 2, 150);
	  	naver_id_login.setDomain("http://127.0.0.1:9001/login/naver");
	  	naver_id_login.setState(state);
	  	naver_id_login.init_naver_id_login();
	</script>
</body>
</html>

