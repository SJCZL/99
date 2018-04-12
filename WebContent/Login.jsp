<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<script src="js/jquery-3.0.0.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<title></title>
		<style type="text/css">
			html,body{
				/*background:url(movie_bg.png) repeat;*/
				/*background-color: gray;*/
				height: 100%;
				width: 100%;
			}
			.head {
				background-color: #4682B4;
				color: white;
				font-family: '微软雅黑';
				font-weight: bold;
				font-size:x-large;
				border-bottom: 1px solid #4682B4;
				height: 100px;
				margin-bottom: 1px;
				width: 100%;
			}
			
			#hsp {
				clear: both;
				float: right;
				padding-top: 4px;
			}
			
			#hs {
				font-size: 50%;
				/*font-style: normal;*/
				font-style: italic;
			}
			
			#ht {
				font-family: "楷体";
				/*font-style: normal;*/
				
				color: white;
				/* float:left; */
				font-size: 150%;
				/*font-style: italic;*/
				margin-left:5%;
			}
			.navi{
				background-color:#E5E5E5;
				/*border: solid #080808 1px;*/
				height: 35px;
			}
			.navi li {
				float: left;
				display: inline;
				height: 30px;
				color:white;
				font-size: 14px;
				font-weight: 700;
				padding: 0 20px;
				margin: 4px 30px;
				line-height: 25px;
				text-align: center;
				border: 1px transparent solid;
				border-radius: 5px;
				/* behavior: url(css/PIE.htc); */
				position: relative;
			}
			
			.navi li:hover,
			.navi li.on {
				cursor: pointer;
				background:#8C8C8C;
				
				/*border-top: 1px #000 solid;*/
				/*border-left: 1px #000 solid;*/
			}
			/*进入网页主体！！！！！！！！！！！！！！*/
			.container{
				
				margin:0 auto;
				padding-bottom: 60px;
				width: 994px;
				position: relative;
				height: 100%;
				width: 100%;
			}
			/*进入网页底部！！！！！！！！！！！！！！！！！！*/
			
			.foot {
				border-top: 1px solid #4682B4;
				color: white;
				background-color: #4682B4;
				text-align: center;
				height: 60px;
				width: 98.3%;
				position:absolute;
				bottom:0px;
			}
		</style>
		<link rel="stylesheet" href="css/lgPanel.css" />
	</head>

	<body>
		<!--style="background-image:url(img/background.jpg) ;height:50px;width:80%;float:right"-->
		<div class="container">
			<div class="head">
				<p id="ht">Timer12306<strong id="hs">|客服热线:12306</strong></p>
			</div>
			<div class="navi-w">
				<div class="navi">

			<ul class="navi">
				<li class="on">
					<a href="Main.html">客运首页</a>
				</li>
				<li >
					<a href="My12306.jsp">个人中心</a>
				</li>
				<li >
					<a href="QueryRoute.jsp">车票预定</a>
				</li>
				<li >
					<a href="QueryStation.jsp">站点查询</a>
				</li>
				<li>
					<a href="http://www.baidu.com/">出行向导</a>
				</li>
			</ul>
				</div>
				<div>

					<div class="bg-img"><img src="img/17.jpg" class="img-responsive" alt="Cinque Terre" style="width: 100%;height:84%"> </div>
					<div class="lg-block">
						<div class="lg-block-1">
							<div class="lg-line"></div>
							<div class="lg-panel1">
								<div class="lg-panel2">
									<li2>Timer12306</li3>
								</div>
								<div class="lg-panel3">
									<li3>用户登录</li3>
								</div>
								${request.message}
								<form action="LoginServlet" method = "post">
									<ul1>
										<li1 style="margin-left: 10px;margin-top: 10px;">
											<label1>用户名</label>
												</li>
												<input type="text" name="username" style="margin-left: 0px;margin-top: 5px;" />
												<li1 style="margin-left: 10px;margin-top: 10px;">
													<label1>
														密码
														<label1></label1>
												</li1>
												<input type="password" name="password" style="margin-left: 8px;margin-top: 5px" />
									</ul1>
									<input type="submit" value="登录" style="margin-left: 70px;margin-top:10px;width:50px;height:auto;" />
									<input type="button" value="取消" onclick="reset()" style="width:50px;height:auto;" />
								</form>
								<label style="margin-left: 75px;margin-top: 10px;"><a href="userRegister.html">注册</a></label>
								<label><a href="resetpassword.html">忘记密码</a></label>

							</div>
							<p style="margin-top: ;">
								<label>温馨提示：</label>
								<br /> 1、Timer12306.cn网站每日
								<br />07:00~23:00提供服务.
								<br /> 2、在Timer12306网站购
								<br />票、改签和退票须不晚于开车
								<br />前30分钟；办理“变更到站”
								<br />业务时，请不晚于开车前
								<br />48小时。
							</p>
						</div>

						<div class=" lg-block-3">
							<ul>
								<label style="margin-top: 10px;">使用须知</label>
								<li><a href="http://www.baidu.com/">注册新用户？</a></li>
								<li><a href="http://www.baidu.com/">网上购票流程</a></li>
								<li><a href="http://www.baidu.com/">身份核验</a></li>
							</ul>
							<ul style="margin: 200px;margin-top: -95px;">
								<label>购票常见问题</label>
								<li><a href="http://www.baidu.com/">身份核验结果有哪几种状态？</a></li>
								<li><a href="http://www.baidu.com/">如何了解自己的身份信息核验结果？</a></li>

							</ul>

						</div>
					</div>
				</div>
				<!-- 左部菜单栏 -->
				<br/>
				<div style="position:absolute; z-index:2; left:40px; top:18%">

				
					<div style="text-align:left;color:#000000;float: left;"><strong>您现在的位置：</strong><a href="userlogin.html">用户登录</a></div>

					</div>

			</div>
		</div>
		<div class="foot">
			<p>
				<a href="http://abputus.com" style="color: white">关于我们 &nbsp;</a>|
				<a href="http://comment.com" style="color: white">&nbsp;网站声明 </a>
			</p>
			<p>版权所有©2016 &nbsp; 湘潭大学 &nbsp;Timer小组</p>
		</div>
		</div>
	</body>

</html>