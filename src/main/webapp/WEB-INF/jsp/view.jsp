<%@ include file="/WEB-INF/jsp/init.jsp" %>


<portlet:renderURL var="detail">
	<portlet:param name="action" value="paramViewDetail"/>
</portlet:renderURL>

<a href="${detail}">enviar</a>