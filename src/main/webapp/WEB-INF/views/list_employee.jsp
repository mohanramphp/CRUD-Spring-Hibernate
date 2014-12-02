<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="true"%>
<html>
<head>
<title>List Employee</title>
<link href="<c:url value="/resources/themes/css/style.css" />" rel="stylesheet">
</head>
<body>

	<br>
	<h3>Employee List</h3>
	<div>
		<span><a href="<c:url value="/employee/add" ></c:url>">Add
				Employee</a></span> <span class="logout"><a
			href="<c:url value="/j_spring_security_logout" />"> Logout</a></span>
	</div>
	<div style="clear: both;">&nbsp;</div>
	<c:if test="${!empty listEmployee}">
		<table class="tg">
			<tr>
				<th>Employee Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Address</th>
				<th>Sex</th>
				<th>IsPermanent</th>
				<th colspan="2">Action</th>
			</tr>
			<c:forEach items="${listEmployee}" var="employee">
				<tr>
					<td>${employee.lastName},${employee.firstName}</td>
					<td>${employee.email}</td>
					<td>${employee.phone}</td>
					<td>${employee.address}</td>
					<td>${employee.sex}</td>
					<td>${employee.isPermanent}</td>
					<td colspan="2"><a
						href="<c:url value='/employee/edit/${employee.id}' />">Edit</a>&nbsp;|&nbsp;<a
						href="<c:url value='/employee/remove/${employee.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>

