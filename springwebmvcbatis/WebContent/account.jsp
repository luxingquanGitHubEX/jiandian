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
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			var nickname=$("#nickname").val();
			var sex=$("#sex").val();
			var job=$("#job").val();
			var city=$("#city").val();
			var birthday=$("#birthday").val();
			var homepage=$("#homepage").val();
			var self_introduce=$("#self_introduce").val();
			var wechat=$("#wechat").val();
			var sina=$("#sina").val();
			var qq=$("#qq").val();
			var selfweb={
					"nickname":nickname,
					"sex":sex,
					"job":job,
					"city":city,
					"birthday":birthday,
					"homepage":homepage,
					"self_introduce":self_introduce,
					"wechat":wechat,
					"sina":sina,
					"qq":qq
			}
			$.post("selfwebadd.do",selfweb,function(data){
				if(data.result == "success"){
					alert("666");
					$("#em").html("保存成功");
					window.location.href = "collection.jsp";	
				}else{
					alert("77777777777");
					$("#em").html(data.msg);
				}
			},"json")
		})
	})
</script>
<body>
<div class="head-box">
    <div class="head wrap">
          <div class="logo fl"><a href=""><img src="images/logo.png"></a></div>
          <div class="head-right fr">
              <div class="head-a fr">
                   <div class="hgt fl"><img src="images/hgt.png">
                         <div class="hgt-top">
                             <input type="text" class="hgt-text">
                         </div>
                   </div>
                   <div class="head-a1 fl"><a href=""><img src="images/tb-a.png"></a></div>
                   <div class="head-a1 fl"><a href=""><img src="images/tb-b.png"></a></div>
                   <!-- <div class="head-a3 login-click fl">登录</div>
                   <div class="head-a4 reg-click fl">注册</div>  -->
                  
              
              </div>
              <div class="clearfix"></div>
              <div class="nav fr">
                  <ul>
                       <li><a href="index.jsp">首页</a></li>
                       <li><a href="article.jsp">文章</a>
                           <div class="sub-nav">
                                <div class="bich-top"></div>
                                 <div class="bich">
                                     <a href="">服饰</a>
                                     <a href="">美食</a>
                                     <a href="">出行</a>
                                     <a href="">约会</a>
                                 </div>
                           
                           </div>
                       </li>
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

<div class="content">
    <div class="wrap">
         <div class="tsm-height"></div>
         <div class="account">
                 <div class="account-title">账户设置</div>
                 <div class="tsm-box">
                      <div class="tsm-title">个人资料
                      </div>
                      <div class="tsm-a" style="display:block;">
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">用户名：</div>
                                         <div class="tsm-a3"><input type="text" class="tsm-text1" id="nickname" name="nickname"></div>
                                   </div>
                                   
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">性别：</div>
                                         <div class="tsm-a4">
                                             <input type="radio" checked="checked"id="sex" name="Sex" value="男" >男
                                             <span><input type="radio" id="sex" name="Sex" value="女" />女</span>
                                         </div>
                                   </div>
                                   
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">职业：</div>
                                         <div class="tsm-a3"><input type="text" class="tsm-text1" id="job" name="job"></div>
                                   </div>
                                   
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">所在城市：</div>
                                         <div class="tsm-a3"><input type="text" class="tsm-text1" id="homepage" name="homepage"></div>
                                   </div>
                                   
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">生日：</div>
                                         <div class="tsm-a3"><input type="text" class="tsm-text1" id="birthday" name="birthday"></div>
                                   </div>
                                   <!--  <div class="tsm-a1">
                                         <div class="tsm-a2 fl">个人主页：</div>
                                         <div class="tsm-a3"><input type="text" class="tsm-text1"></div>
                                   </div> -->
                                  
                                   
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">自我介绍：</div>
                                         <div class="tsm-a5"><textarea class="tsm-area" id="self_introduce" name="self_introduce"></textarea></div>
                                   </div>
                        </div>
                 </div>
                 <!--  <div class="tsm-box">
                      <div class="tsm-title">头像修改
                      </div>
                      <div class="tsm-b">
                           <div id="preview" class="fl">
                  <img id="imghead" width=122 height=122 border=0 src='<%=request.getContextPath()%>/images/defaul.jpg'>
                           </div>
                           <div class="tt-put fl">
                                             
                                               <input type="button" class="tt-btn" value="上传图片"/>
                                               <input type="button" class="tt-b" value="保存图片"></div> 
                      </div>
                 </div> -->
                
                 
                  <div class="tsm-box">
                      <div class="tsm-title">邮箱</div>
                      <div class="tsm-a">
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl" name="email">邮箱：</div>
                                         <div class="tsm-c1">${sessionScope.user.email}</div>
                                   </div>
 								<!--
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">新邮箱：</div>
                                             <div class="tsm-a3"><input type="text" class="tsm-text1"></div>-->
                                       
                                   </div>
                                  <!--   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">邮箱密码：</div>
                                         <div class="tsm-a3"><input type="text" class="tsm-text1"></div>
                                   </div>--> 
                                  
                                   
                                 
                        </div>
                 </div>
                 <div class="tsm-box">
                      <div class="tsm-title">密码
                      </div>
                      <div class="tsm-a">
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">当前密码：</div>
                                         <div class="tsm-a3"><input type="text" class="tsm-text1"></div>
                                   </div>
 
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">新密码：</div>
                                         <div class="tsm-a3"><input type="text" class="tsm-text1"></div>
                                   </div>
                                  <!--  <div class="tsm-a1">
                                         <div class="tsm-a2 fl">确认密码：</div>
                                         <div class="tsm-a3"><input type="text" class="tsm-text1"></div>
                                   </div> --> 
                                  
                                   
                                 
                        </div>
                 </div>
                 
                 <div class="tsm-box">
                      <div class="tsm-title">关联账户</div>
                      <div class="tsm-a">
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">微信：</div>
                                         <div class="tsm-a3"><input type="text" class="tsm-text1" name="wechat" id="wechat"></div>
                                   </div>
 
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">微博：</div>
                                         <div class="tsm-a3"><input type="text" class="tsm-text1" name="sina" id="sina"></div>
                                   </div>
                                   <div class="tsm-a1">
                                         <div class="tsm-a2 fl">QQ：</div>
                                         <div class="tsm-a3"><input type="text" class="tsm-text1" name="qq" id="qq"></div>
                                   </div>
                                   
                                 
                        </div>
                 </div>
                 <em id="em"></em>
                 <div class="tsm-href"><input type="button" class="tsm-btn" id="btn" value="保存"></div>
                 
         </div>
    </div>
 
</div>

<div class="footer">
   <div class="wrap">
      <div class="foot">
            <div class="foot-left fl">
                 <a href="">关于我们</a>
                 <a href="">加入我们</a>
                 <a href="contact.jsp">联系我们</a>
                 <a href="">媒体采访</a>
            </div>
            <div class="foot-c fl"><a href=""><img src="images/foot-logo.jpg"></a></div>
            <div class="foot-right fr">
                 <a href="">同城活动</a>
                 <a href="">课程资讯</a>
                 <a href="">最新发布</a>
                 <a href="">热门文章</a>
            </div>
       </div> 
       <div class="foot-btm">网页制作by云邦</div>    
   </div>
</div>


<!--登录注册弹窗
<div class="mask"></div>
<div class="login">
    <div class="login-title">
        <div class="login-a">登录</div>
        <div class="login-b"></div>
        <div class="login-c close">x</div>
    </div>
    <div class="login-btm">
        <div class="login-d"><input type="text" class="login-text" placeholder="注册时填写的邮箱"></div>
        <div class="login-d"><input type="password" class="login-pas" placeholder="密码"></div>
        <div class="login-d"><input type="button" class="login-btn" placeholder="登录"></div>
        <div class="login-f">
             <a href="">忘记密码</a>
             <span>还没有焦点账号?><a href="javascript:;" class="reg-href">点击注册</a></span>
        </div>
    </div>
</div>

<div class="reg">
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
</div>
-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/Action.js"></script>
<script>
$(".tsm-title").click(function(){
	  $(this).toggleClass("tsm-t2").parent().siblings().find(".tsm-title").removeClass("tsm-t2"),
	  $(this).next().slideToggle().parent().siblings().find(".tsm-a").slideUp()
})
</script>

<!--<script type="text/javascript">
                //图片上传预览    IE是用了滤镜。
        function previewImage(file)
        {
          var MAXWIDTH  = 122; 
          var MAXHEIGHT = 122;
          var div = document.getElementById('preview');
          if (file.files && file.files[0])
          {
              div.innerHTML ='<img id=imghead>';
              var img = document.getElementById('imghead');
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//                 img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file.files[0]);
          }
          else //兼容IE
          {
            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = '<img id=imghead>';
            var img = document.getElementById('imghead');
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
            div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
          }
        }
        function clacImgZoomParam( maxWidth, maxHeight, width, height ){
            var param = {top:0, left:0, width:width, height:height};
            if( width>maxWidth || height>maxHeight )
            {
                rateWidth = width / maxWidth;
                rateHeight = height / maxHeight;
                 
                if( rateWidth > rateHeight )
                {
                    param.width =  maxWidth;
                    param.height = Math.round(height / rateWidth);
                }else
                {
                    param.width = Math.round(width / rateHeight);
                    param.height = maxHeight;
                }
            }
             
            param.left = Math.round((maxWidth - param.width) / 2);
            param.top = Math.round((maxHeight - param.height) / 2);
            return param;
        }
</script> -->
</body>
</html>
