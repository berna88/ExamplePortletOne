<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Detail</title>
</head>
<body>
	<h1>Detail</h1>
	

<portlet:defineObjects />
<portlet:actionURL var="submitFormURL" name="handleCustomer"/>
<form:form name="persona" method="post" modelAttribute="persona" action="${ submitFormURL.toString() }">
<br/>
    <table style="margin-left:80px">
        <tbody>
            <tr>
                <td><form:label path="nombre">First Name</form:label></td>
                <td><form:input path="nombre"></form:input></td>
            </tr>
            <tr>
                <td><form:label path="apellido">Middle Name</form:label></td>
                <td><form:input path="apellido"></form:input></td>
            </tr>
            <tr>
                <td><form:label path="edad">Last Name</form:label></td>
                <td><form:input path="edad"></form:input></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Submit Form">
                </td>
            </tr>
        </tbody>
    </table>
</form:form>
</body>
</html>