<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>焦点学苑</title>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			var email=$("#email").val();
			var password=$("#password").val();
			var user={
					"email":email,
					"password":password
			}
			$.post("useradd.do",user,function(data){
				if(data.result == "success"){
					//alert("666");
					$("#em").html("注册成功");
					window.location.href = "login.jsp";	
				}else{
					//alert("77777777777");
					$("#em").html(data.msg);
				}
			},"json")
		})
	})
</script>
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
						<li><a href="article.jsp">文章</a>
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


<!-- <div class="login">
		<div class="login-title">
			<div class="login-a">登录</div>
			<div class="login-b"></div>

		</div>
		<div class="login-btm">
			<div class="login-d">
				<input type="text" id="email" class="login-text"
					placeholder="注册时填写的邮箱">
			</div>
			<div class="login-d">
				<input type="password" id="password" class="login-pas"
					placeholder="密码">
			</div>
			<div class="login-d">
				<input type="button" class="login-btn" value="登录"
					onclick="loginsub()">
			</div>
			<div class="login-d" id="msg"></div>
			<div class="login-f">
				<a href="">忘记密码</a> <span>还没有焦点账号?><a href=""
					class="reg-href">点击注册</a></span>
			</div>
		</div>
	</div> -->
	
  <div class="reg">
    <div class="login-title">
        <div class="login-a">注册</div>
        <div class="login-b"></div>
       
    </div>
    <div class="login-btm">
        <div class="login-d"><input type="email" class="login-text" placeholder="邮箱/手机号" id="email" name="email"></div>
        <div class="login-d"><input type="password" class="login-pas" placeholder="密码" id="password" name="password"></div>
        <em id="em"></em>
        <div class="login-d"><input type="button" class="login-btn" placeholder="注册" value="注册" id="btn"></div>
        <div class="login-f">
             <a href="">忘记密码</a>
        </div>
    </div>
</div>


	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/jquery.SuperSlide.2.1.1.js"></script>
	<script src="js/Action.js"></script>


</body>
</html>

</html>