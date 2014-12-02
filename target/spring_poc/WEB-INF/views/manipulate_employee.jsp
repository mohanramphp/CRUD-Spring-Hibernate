<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="true"%>
<html>
<head>
<title>Manipulate Employee</title>
<link href="<c:url value="/resources/themes/css/style.css" />" rel="stylesheet"></head>
<body>
	<h1>
		<c:choose>
			<c:when test="${!empty employee.firstName}">
				<spring:message text="Edit Employee" />
			</c:when>
			<c:otherwise>
				<spring:message text="Add Employee" />
			</c:otherwise>
		</c:choose>
	</h1>

	<div>
		<span><a href="<c:url value="/employee" ></c:url>">List
				Employee</a></span> <span class="logout"><a
			href="<c:url value="/j_spring_security_logout" />"> Logout</a></span>
	</div>
	<c:url var="addAction" value="/employee/manipulate"></c:url>
	<form:form action="${addAction}" commandName="employee">
		<table>
			<c:if test="${!empty employee.firstName}">
				<tr>
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<td><form:input path="id" readonly="true" size="8"
							disabled="true" /> <form:hidden path="id" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="firstName">
						<spring:message text="First Name" />
					</form:label></td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
				<td><form:label path="lastName">
						<spring:message text="Last Name" />
					</form:label></td>
				<td><form:input path="lastName" /></td>
			</tr>
			<tr>
				<td><form:label path="email">
						<spring:message text="Email Address" />
					</form:label></td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td><form:label path="phone">
						<spring:message text="Phone #" />
					</form:label></td>
				<td><form:input path="phone" /></td>
			</tr>
			<tr>
				<td><form:label path="address">
						<spring:message text="Address" />
					</form:label></td>
				<td><form:textarea path="address" rows="5" cols="30" /></td>
			</tr>
			<tr>
				<td><form:label path="sex">
						<spring:message text="Sex" />
					</form:label></td>
				<td><form:radiobutton path="sex" value="Male" /> Male&nbsp; <form:radiobutton
						path="sex" value="Female" />Female</td>
			</tr>
			<tr>
				<td><form:label path="isPermanent">
						<spring:message text="Is Permanent" />
					</form:label></td>
				<td><form:checkbox path="isPermanent" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty employee.firstName}">
						<input type="submit"
							value="<spring:message text="Edit Employee"/>" />
					</c:if> <c:if test="${empty employee.firstName}">
						<input type="submit" value="<spring:message text="Add Employee"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
</body>
</html>

