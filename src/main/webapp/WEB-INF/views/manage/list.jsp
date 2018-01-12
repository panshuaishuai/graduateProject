<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>

<div id="userManageListPanel">
	<div class="real-content-panel">
		<table class="table table-stripe table-hover">
			<thead>
				<th>学号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>专业</th>
				<th>方向</th>
				<th>技术</th>
				<th>能力</th>
			</thead>
			<tbody>
				<c:forEach var="student" items="${allStudents }">
					<tr>
						<td>${student.number }</td>
						<td>${student.name }</td>
						<td>${student.sex }</td>
						<td>${student.major }</td>
						<td>${student.direction }</td>
						<td>${student.skill }</td>
						<td>${student.capacity }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>