<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="s"%>

<%@ page import="Siirex.Model.UserForm"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Update</title>
	</head>
	
	<body>
		
		<html:link action="/home.do">Home page</html:link>

		<br>
			<logic:present name="message">
				<bean:write name="message" />
			</logic:present>
		<br>
		
		<!-- Sau khi nhập data, POST request này sẽ thực hiện call Action "/updateUser.do" để thực hiện quá trình Update -->
		<html:form action="/updateUser.do" method="post">

			<label>Id</label>
			<html:text property="id" name="userForm" readonly="true"></html:text>

			<br>
			
			<label>Name</label>
			<html:text property="name" name="userForm"></html:text>
			<html:errors property="name"/>
			
			<br>
			
			<label>Age</label>
			<html:text property="age" name="userForm"></html:text>
			<html:errors property="age"/>

			<br>
			
			<html:submit>Update User!</html:submit>
			
		</html:form>
		
	</body>
</html>