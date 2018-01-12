<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>

<div id="userAddPanel">
	<div class="headline">
		<h2>新增学生</h2>
	</div>
	<form class="real-content-form form" action="${ctx }/student/save" method="post">
		<div class="form-group">
			<label class="input-label">学号</label> <input name="number" class="input-content" type="text" placeholder="请输入学号" autofocus required>
		</div>
		<div class="form-group">
			<label class="input-label">姓名</label> <input name="name" class="input-content" type="text" placeholder="请输入名字" required>
		</div>
		<div class="form-group">
			<label class="input-label">专业</label> <input name="major" class="input-content" type="text" placeholder="请输入专业" required>
		</div>
		<div class="form-group">
			<label class="input-label">技术</label> <input name="skill" class="input-content" type="number" placeholder="请输入技术评分" min ="1" max="100" required>
		</div>
		<div class="form-group">
			<label class="input-label">能力</label> <input name="capacity" class="input-content" type="number" placeholder="请输入能力评分" min ="1" max="100" required>
		</div>
		<div class="form-group">
			<label class="input-label">方向</label> 
			<select class="select-content" name="direction">
					<option>Java开发</option>
					<option>大数据</option>
					<option>软件测试</option>
					<option>Web前端</option>
			</select><i class="select-arrow"></i>
		</div>
		<div class="form-group">
			<label class="input-label">性别</label> 
			<div class="radio-content">
				<label><input type="radio" name="sex" value="男" checked> 男</label>
				<label><input type="radio" name="sex" value="女"> 女</label>
			</div>
		</div>
	</form>
	<div class="bottom-menu-panel">
		<button class="btn btn-bg save-user-btn">保存</button>
		<button class="btn btn-bg cancel-btn">取消</button>
	</div>
</div>

<script>
	$(function() {
		var $userAddPanel = $("#userAddPanel");
		var $userContentForm = $userAddPanel.find("form");

		// 初始化表单提交
		$userContentForm.on("submit", function(e) {
			// 阻止表单默认提交事件
			e.preventDefault();

			var $this = $(this);

			// jquery-form的异步提交方式
			$this.ajaxSubmit({
				beforeSubmit : function(data, $form) {
					var number = $form.find("input[name='number']");
					var name = $form.find("input[name='name']");
					var major = $form.find("input[name='major']");
					var skill = $form.find("input[name='skill']");
					var capacity = $form.find("input[name='capacity']");

					if ($.trim(number.val()) === "") {
						return showInputTip(number, "请输入学号");
					} else {
						hideInputTip(number);
					}
					
					if ($.trim(name.val()) === "") {
						return showInputTip(name, "请输入姓名");
					} else {
						hideInputTip(name);
					}
					
					if ($.trim(major.val()) === "") {
						return showInputTip(major, "请输入专业");
					} else {
						hideInputTip(major);
					}
					
					if ($.trim(skill.val()) === "") {
						return showInputTip(skill, "请输入1~100的技术评分");
					} else {
						hideInputTip(skill);
					}
					
					if ($.trim(capacity.val()) === "") {
						return showInputTip(capacity, "请输入1~100的能力评分");
					} else {
						hideInputTip(capacity);
					}
				}, 
				success : function() {
					// 刷新页面
					loadMainContent("/student/list");
				}
			});
		});

		// 保存用户
		$userAddPanel.find(".save-user-btn").on("click", function() {
			$userContentForm.trigger("submit");
		});

		// 取消保存
		$userAddPanel.find(".cancel-btn").on("click", function() {
			// 刷新页面
			loadMainContent("/student/list");
		});
	})
</script>