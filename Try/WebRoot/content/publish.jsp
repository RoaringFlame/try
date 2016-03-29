<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布管理</title>
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
				<p>您好！欢迎登录，超级管理员!</p>
				<div class="admin">
					<ul class="topnav">
						<li><a class="ad" href="#"></a>
							<ul class="subnav">
								<s:if test="#session.user.permissionSign">
									<li><a href="showUserList">添加用户</a></li>
								</s:if>
								<li><a href="resetpwd.jsp">修改密码</a></li>
								<li><a href="login!quit">退出</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main-2">
			<div class="leftnav">
				<div class="leftsidebar_box-2">
					<div class="nav-header">
						<div class="nav-admin-png"></div>
					</div>
					<dl class="system_log">
						<dt onClick="changeImage()" class="active">
							<a href="recentNews">网站首页</a>
						</dt>
						<dd class="first_dd">
							<a href="upageAction?column=1">图片新闻</a>
						</dd>

					</dl>

					<dl class="custom">
						<dt onClick="changeImage()">
							<a href="upageAction?column=2">通知公告</a>
						</dt>

					</dl>

					<dl class="channel">
						<dt>
							<a href="upageAction?column=3">机构设置</a>
						</dt>



					</dl>

					<dl class="app">
						<dt onClick="changeImage()">研究生培养</dt>
						<dd class="first_dd">
							<a href="upageAction?column=4">培养方案</a>
						</dd>
						<dd>
							<a href="upageAction?column=5">招生就业</a>
						</dd>
						<dd>
							<a href="upageAction?column=6">工作动态</a>
						</dd>
						<dd>
							<a href="upageAction?column=7">学生工作</a>
						</dd>
					</dl>

					<dl class="cloud">
						<dt>学科建设</dt>
						<dd class="first_dd">
							<a href="upageAction?column=8">重点学科</a>
						</dd>
						<dd class="first_dd">
							<a href="upageAction?column=9">学科动态</a>
						</dd>
						<dd class="first_dd">
							<a href="upageAction?column=10">学科团队</a>
						</dd>
					</dl>

					<dl class="syetem_management">
						<dt>
							<a href="">科学研究</a>
						</dt>
						<dd class="first_dd">
							<a href="upageAction?column=11">他山之石</a>
						</dd>
						<dd>
							<a href="upageAction?column=12">学习交流</a>
						</dd>


					</dl>
					<dl class="syetem_management">
						<dt>
							<a href="upageAction?column=13">导师队伍</a>
						</dt>


					</dl>

					<dl class="source">
						<dt>
							<a href="upageAction?column=14">管理制度</a>
						</dt>

					</dl>

					<dl class="statistics">
						<dt>
							<a href="upageAction?column=15">下载专区</a>
						</dt>

					</dl>
				</div>
			</div>
			<div class="right-main">
				<div class="right-title">
					<h2>
						<a href="recentNews">后台管理系统</a>
					</h2>
				</div>

				<div class="newsbox">
					<div class="page-title">当前所在：发布管理</div>
					<div class="newsleft">
						<div class="publish-title">
							<ul>
								<li class="li-left">发布项目</li>
								<li class="li-right">操作</li>
							</ul>
						</div>

						<!-- 						这里可以考虑用容器遍历同时方便传递参数加权限过滤 -->
						<div class="publish-content">
							<s:iterator value="lcolumn">
								<ul>
									<li class="li-left"><s:a href="upageAction?column=%{key}">
											<s:property value="value" />
										</s:a></li>
									<li class="li-right"><s:if
											test="#session.user.permissionSign">
											<s:if test="key!=15">
												<s:a cssClass="left" href="showEditor?column=%{key}">发布</s:a>
											</s:if>
											<s:else>
												<s:a cssClass="left" href="upfile.jsp">上传</s:a>
											</s:else>
											<s:a cssClass="right" href="upageAction?column=%{key}">查看</s:a>
										</s:if> <s:else>
											<s:a cssClass="centent" href="upageAction?column=%{key}">查看</s:a>
										</s:else></li>
								</ul>
							</s:iterator>
						</div>
					</div>

					<div class="newsright">
						<div class="publish-title">
							<ul>
								<li class="li-left">发布项目</li>
								<li class="li-right">操作</li>
							</ul>
						</div>

						<div class="publish-content">
							<s:iterator value="rcolumn">
								<ul>
									<li class="li-left"><s:a href="upageAction?column=%{key}">
											<s:property value="value" />
										</s:a></li>
									<li class="li-right"><s:if
											test="#session.user.permissionSign">
											<s:if test="key!=15">
												<s:a cssClass="left" href="showEditor?column=%{key}">发布</s:a>
											</s:if>
											<s:else>
												<s:a cssClass="left" href="upfile.jsp">上传</s:a>
											</s:else>
											<s:a cssClass="right" href="upageAction?column=%{key}">查看</s:a>
										</s:if> <s:else>
											<s:a cssClass="centent" href="upageAction?column=%{key}">查看</s:a>
										</s:else></li>
								</ul>
							</s:iterator>
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
		$(".leftsidebar_box-2 dt").css({
			"background-color" : "#4C2C4C"
		});
		$(".leftsidebar_box-2 dt img").attr("src", "img/select_xl01.png");
		$(function() {
			$(".leftsidebar_box-2 dd").hide();
			$(".leftsidebar_box-2 dt").hover(
					function() {
						$(".leftsidebar_box-2 dt").css({
							"background-color" : "#4C2C4C"
						})
						$(this).css({
							"background-color" : "#000"
						});
						$(this).parent().find('dd').removeClass("menu_chioce");
						$(".leftsidebar_box-2 dt img").attr("src",
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