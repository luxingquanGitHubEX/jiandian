<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>焦点学苑</title>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/style.css">

</head>

<body>
	<div class="header">
		<div class="head wrap">
			<div class="logo fl">
				<a href=""><img src="images/logo.png"></a>
			</div>
			<div class="head-right fr">
				<div class="head-a fr">
					<div class="head-a1 fl">
						<a href=""><img src="images/tb-a.png"></a>
					</div>
					<div class="head-a1 fl">
						<a href=""><img src="images/tb-b.png"></a>
					</div>


				</div>
				<div class="clearfix"></div>
				<div class="nav fr">
					<ul>
						<li class="nav-cut"><a href="index.jsp">首页</a></li>
						<li><a href="article.html">文章</a>
							<div class="sub-nav">
								<div class="bich-top"></div>
								<div class="bich">
									<a href="">服饰</a> <a href="">美食</a> <a href="">出行</a> <a
										href="">约会</a>
								</div>

							</div></li>
						<li><a href="community.jsp">社区</a></li>
						<li><a href="course.jsp">课程</a></li>
						<li><a href="active.jsp">活动</a></li>
						<li><a href="contact.jsp">联系我们</a></li>

					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="content"></div>

	<div class="footer">
		<div class="wrap">
			<div class="foot">
				<div class="foot-left fl">
					<a href="">关于我们</a> <a href="">加入我们</a> <a href="contact.html">联系我们</a>
					<a href="">媒体采访</a>
				</div>
				<div class="foot-c fl">
					<a href=""><img src="images/foot-logo.jpg"></a>
				</div>
				<div class="foot-right fr">
					<a href="">同城活动</a> <a href="">课程资讯</a> <a href="">最新发布</a> <a
						href="">热门文章</a>
				</div>
			</div>
			<div class="foot-btm"></div>
		</div>
	</div>



	<div class="login">
		<div class="login-title">
			<div class="login-a">登录</div>
			<div class="login-b"></div>

		</div>
		<div class="login-btm">
			<div class="login-d">
				<input type="email" id="email" class="login-text"
					placeholder="注册时填写的邮箱">
			</div>
			<div class="login-d">
				<input type="password" id="password" class="login-pas"
					placeholder="密码">
			</div>
			<div class="login-d">
				<input type="button" class="login-btn" value="登录" id="btn01">
			</div>
			<div class="login-d" id="msg"></div>
			<div class="login-f">
				<a href="">忘记密码</a> <span>还没有焦点账号?><a href="registe.jsp"
					class="reg-href">点击注册</a></span>
			</div>
		</div>
	</div>
	<!--  <div class="reg">
    <div class="login-title">
        <div class="login-a">注册</div>
        <div class="login-b"></div>
        <div class="login-c close">x</div>
    </div>
    <div class="login-btm">
        <div class="login-d"><input type="text" class="login-text" placeholder="邮箱/手机号"></div>
        <div class="login-d"><input type="password" class="login-pas" placeholder="密码"></div>
        <div class="login-d"><input type="button" class="login-btn" placeholder="注册"></div>
        <div class="login-f">
             <a href="">忘记密码</a>
        </div>
    </div>
</div>-->


	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/jquery.SuperSlide.2.1.1.js"></script>
	<script src="js/Action.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#btn01").click(function(){
		var email = $("#email").val();
		var password = $("#password").val();

		$("#msg").empty();
		if (email != "" && password != "") {
			var params = {
				"email" : email,
				"password" : password,
			};
			$.post("login01.do", params, function(data) {
				alert(data);
				if (data.result == "success") {
					window.location.href = "indexDX.jsp";					
				} else {
					var msg = "<em>" + data.msg + "</em>";
					$("#msg").append(msg);
				}
			}, "json");
		} else {
			$("#msg").append("<em>请输入正确的邮箱号和密码</em>");
		}
		})
	})
</script>
</body>
</html>
