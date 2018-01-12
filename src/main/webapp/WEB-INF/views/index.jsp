<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<title>学生信息筛选系统</title>
<link rel="stylesheet" type="text/css" href="${ctx }/css/common.css">
<link rel="stylesheet" type="text/css" href="${ctx }/css/style.css">
</head>

<body>
	<div id="topLogoPanel">
		<div class="top-logo-panel">
			<img src="${ctx }/images/logo.png">
		</div>
	</div>
	<div id="bottomContentPanel">
		<div class="bottom-content-panel">
			<div class="left-menu-panel">
				<div class="left-direction-menu-panel">
					<span>方向：</span>
					<span>全部</span>&nbsp;
					<span class="java-menu-panel style-menu">Java开发</span>&nbsp;
					<span class="data-menu-panel style-menu">大数据</span>&nbsp;
					<span class="test-menu-panel style-menu">软件测试</span>&nbsp;
					<span class="web-menu-panel style-menu">Web前端</span>
				</div>
				<div class="left-sex-menu-panel">
					<span>性别：</span>
					<span>全部</span>&nbsp;
					<span class="male-menu-panel style-menu">男</span>&nbsp;&nbsp;
					<span class="female-menu-panel style-menu">女</span>
				</div>
				<div class="left-add-panel">
					<p>新增学生</p>
				</div>
			</div>
			<div class="right-content-panel"></div>
		</div>
	</div>
	<script type="text/javascript" src="${ctx }/plugins/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="${ctx }/plugins/jquery-form/jquery.form.min.js"></script>
	<script type="text/javascript">
		var ctx = "${ctx}";

		var $topLogoPanel = $("#topLogoPanel");
		var $bottomContentPanel = $("#bottomContentPanel");
		var $rightContentPanel = $bottomContentPanel.find(".right-content-panel");

		$(function() {
			var p = $(".left-add-panel").find("p");
			
			// 加载所有学生列表
			loadMainContent("/student/list");
			
			// 加载添加页面
			p.on("click", function() {
				loadMainContent("/student/add");
			});
			
			// Java开发学生列表
			$(".java-menu-panel").on("click", function() {
				loadMainContent("/student/javaList");
			});
			
			// 大数据学生列表
			$(".data-menu-panel").on("click", function() {
				loadMainContent("/student/dataList");
			});
			
			// 软件测试学生列表
			$(".test-menu-panel").on("click", function() {
				loadMainContent("/student/testList");
			});
			
			// Web前端学生列表
			$(".web-menu-panel").on("click", function() {
				loadMainContent("/student/webList");
			});
			
			// 男性学生列表
			$(".male-menu-panel").on("click", function() {
				loadMainContent("/student/maleList");
			});
			
			// 女性学生列表
			$(".female-menu-panel").on("click", function() {
				loadMainContent("/student/femaleList");
			});
		});

		// 加载主页面内容
		function loadMainContent(url, callbacks, params) {
			$rightContentPanel.load(ctx + url, params, callbacks);
		}
		
		// 显示验证提示
		function showInputTip($input, value) {
			var $parent = $input.parent();
			var $formGroup = $("form").find(".form-group");

			$parent.addClass("error-group");
			$parent.find(".input-label span").remove();
			$parent.find(".input-label").append("<span>" + value + "</span>");
			$formGroup.find("span").css("color", "red");
			$input.focus();
			return false;
		}

		// 隐藏验证提示
		function hideInputTip($input) {
			var $parent = $input.parent();

			$parent.removeClass("error-group");
			$parent.find(".input-label span").remove();
		}
	</script>
</body>

</html>