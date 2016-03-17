<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员主页</title>
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="css/public.css">
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
	<div class="container">
		<div class="header">
			<div class="logo">
				<div class="logo-main">
					<img src="img/logo-main.gif" alt="">
				</div>
			</div>
			<div class="ph">
				<p>
					您好！欢迎登录，
					<s:if test="#session.user.permissionSign">
				超级管理员!</s:if>
					<s:else>管理员!</s:else>
				</p>
				<div class="admin">
					<ul class="topnav">
						<li><a class="ad" href="#"></a>
							<ul class="subnav">
								<s:if test="#session.user.permissionSign">
									<li><a href="adduser.jsp">添加用户</a></li>
								</s:if>
								<li><a href="resetpwd.jsp">修改密码</a></li>
								<li><a href="login!quit">退出</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main">
			<div class="leftnav">
				<div class="leftsidebar_box">
					<div class="nav-header">
						<div class="nav-admin-png"></div>
					</div>
					<dl class="system_log">
						<dt onClick="changeImage()" class="active">
							<a href="admin.html">网站首页</a><img src="img/select_xl01.png"
								alt="">
						</dt>
						<dd class="first_dd">
							<a href="text-list.html">图片新闻</a>
						</dd>

					</dl>

					<dl class="custom">
						<dt onClick="changeImage()">
							<a href="text-list.html">通知公告</a>
						</dt>

					</dl>

					<dl class="channel">
						<dt>
							<a href="text-list.html">机构设置</a>
						</dt>
					</dl>

					<dl class="app">
						<dt onClick="changeImage()">
							研究生培养<img src="img/select_xl01.png" alt="">
						</dt>
						<dd class="first_dd">
							<a href="text-list.html">培养方案</a>
						</dd>
						<dd>
							<a href="text-list.html">招生就业</a>
						</dd>
						<dd>
							<a href="text-list.html">工作动态</a>
						</dd>
						<dd>
							<a href="text-list.html">学生工作</a>
						</dd>
					</dl>

					<dl class="cloud">
						<dt>
							学科建设<img src="img/select_xl01.png" alt="">
						</dt>
						<dd class="first_dd">
							<a href="text-list.html">重点学科</a>
						</dd>
						<dd class="first_dd">
							<a href="text-list.html">学科动态</a>
						</dd>
						<dd class="first_dd">
							<a href="text-list.html">学科团队</a>
						</dd>
					</dl>

					<dl class="syetem_management">
						<dt>
							<a href="">科学研究</a><img src="img/select_xl01.png" alt="">
						</dt>
						<dd class="first_dd">
							<a href="text-list.html">他山之石</a>
						</dd>
						<dd>
							<a href="text-list.html">学习交流</a>
						</dd>


					</dl>
					<dl class="syetem_management">
						<dt>
							<a href="text-list.html">导师队伍</a>
						</dt>


					</dl>

					<dl class="source">
						<dt>
							<a href="text-list.html">管理制度</a>
						</dt>

					</dl>

					<dl class="statistics">
						<dt>
							<a href="text-list.html">下载专区</a>
						</dt>

					</dl>
				</div>
			</div>
			<div class="right-main">
				<div class="right-title">
					<h2>
						<a href="admin.html">后台管理系统</a>
					</h2>
				</div>
				<div class="buttons">
					<div class="button" href="columnList">
						<span> <a href="columnList"><img src="img/pencil.png"
								alt=""></a> <a class="title" href="columnList">发布管理</a>
						</span>
					</div>
					<s:if test="#session.user.permissionSign">
						<div class="button" href="showUserList">
							<a href="showUserList"><img src="img/user-admin.png" alt=""></a>
							<a class="title" href="showUserList">用户管理</a>
						</div>
					</s:if>
					<div class="button" href="resetpwd.jsp">
						<a href="resetpwd.jsp"><img src="img/resetpwd.png" alt=""></a>
						<a class="title" href="resetpwd.jsp">修改密码</a>
					</div>
					<div class="button" href="login.jsp">
						<a href="login.jsp"><img src="img/exit.png" alt=""></a> <a
							class="title" href="login.jsp">退出</a>
					</div>
				</div>
				<div class="admin-main">
					<div class="col-all">
						<div class="col-title-2">
							<h3>最近新闻</h3>
						</div>
						<div class="col-main-2">
							<ul>
								<li class="id">id</li>
								<li class="newstitle">新闻标题</li>
								<li class="update-program">更新栏目</li>
								<li class="funcation">操作</li>
								<li class="upload-user">上传用户</li>
								<li class="update-time">更新时间</li>
							</ul>
							<ul class="default">
								<li class="id">id</li>
								<li class="newstitle">新闻标题</li>
								<li class="update-program">更新栏目</li>
								<li class="funcation">操作</li>
								<li class="upload-user">上传用户</li>
								<li class="update-time">更新时间</li>

							</ul>
							<ul>
								<li class="id">id</li>
								<li class="newstitle">新闻标题</li>
								<li class="update-program">更新栏目</li>
								<li class="funcation">操作</li>
								<li class="upload-user">上传用户</li>
								<li class="update-time">更新时间</li>
							</ul>
							<ul class="default">
								<li class="id">id</li>
								<li class="newstitle">新闻标题</li>
								<li class="update-program">更新栏目</li>
								<li class="funcation">操作</li>
								<li class="upload-user">上传用户</li>
								<li class="update-time">更新时间</li>
							</ul>
							<ul>
								<li class="id">id</li>
								<li class="newstitle">新闻标题</li>
								<li class="update-program">更新栏目</li>
								<li class="funcation">操作</li>
								<li class="upload-user">上传用户</li>
								<li class="update-time">更新时间</li>
							</ul>
							<ul class="default">
								<li class="id">id</li>
								<li class="newstitle">新闻标题</li>
								<li class="update-program">更新栏目</li>
								<li class="funcation">操作</li>
								<li class="upload-user">上传用户</li>
								<li class="update-time">更新时间</li>
							</ul>
						</div>
					</div>

					<div class="col">
						<div class="col-title">
							<h3>温馨提示</h3>
						</div>
						<div class="col-main">
							<div class="point-main">
								<p>您好！欢迎登录后台管理系统！</p>
								<p>
									这是您第&nbsp;<b class="warning">1</b>&nbsp;次登录系统！
								</p>
								<p>
									您上次登录时间为:&nbsp;<b class="warning">2015.10.25</b>
								</p>
								<p>
									该系统为超级管理员所有，你可以添加用户，删除用户，修改用户密码，发布相关新闻等操作！管理员能删除文章和记录，请谨慎操作，数据一旦删除，无法复原！
								</p>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="col-title">
							<h3>访客记录</h3>
						</div>
						<div class="col-main-i">
							<ul>
								<li>今日访问量：<s:property value="#application.counter.todayCount"/></li>
								<li>昨日访问量：<s:property value="#application.counter.yesterdayCount"/></li>
								<li>累计访问数：<s:property value="#application.counter.allCount"/></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {

			$("ul.subnav").parent().append("<span></span>"); //Only shows drop down trigger when js is enabled - Adds empty span tag after ul.subnav

			$(".admin li span").click(function() { //When trigger is clicked...

				//Following events are applied to the subnav itself (moving subnav up and down)
				$(this).parent().find("ul.subnav").slideDown('fast').show(); //Drop down the subnav on click

				$(this).parent().hover(function() {
				}, function() {
					$(this).parent().find("ul.subnav").slideUp('slow'); //When the mouse hovers out of the subnav, move it back up
				});

				//Following events are applied to the trigger (Hover events for the trigger)
			}).hover(function() {
				$(this).addClass("subhover"); //On hover over, add class "subhover"
			}, function() { //On Hover Out
				$(this).removeClass("subhover"); //On hover out, remove class "subhover"
			});

		});
	</script>
	<script type="text/javascript">
		$(".leftsidebar_box dt").css({
			"background-color" : "#4C2C4C"
		});
		$(".leftsidebar_box dt img").attr("src", "img/select_xl01.png");
		$(function() {
			$(".leftsidebar_box dd").hide();
			$(".leftsidebar_box dt").hover(
					function() {
						$(".leftsidebar_box dt").css({
							"background-color" : "#4C2C4C"
						})
						$(this).css({
							"background-color" : "#000"
						});
						$(this).parent().find('dd').removeClass("menu_chioce");
						$(".leftsidebar_box dt img").attr("src",
								"img/select_xl01.png");
						$(this).parent().find('img').attr("src",
								"img/select_xl.png");
						$(".menu_chioce").slideUp();
						$(this).parent().find('dd').slideToggle();
						$(this).parent().find('dd').addClass("menu_chioce");
					});
		})
	</script>
</body>
</html>