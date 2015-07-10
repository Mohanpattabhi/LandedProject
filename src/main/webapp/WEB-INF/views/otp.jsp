<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Generate  OTP</title>
</head>
<Script>

function closeWindow(){
	window.close();
}
</Script>
<body>
<h1>
	Generate  OTP
</h1>

<c:choose>
  <c:when test="${not empty errorMessage}">
     <c:out value="${errorMessage}" />
     </c:when>

<c:otherwise>
<form:form  commandName="loginForm">
Pls copy the generated OTP and use it in the login page
<table>
	
	<tr>
		<td>
			<form:label path="loginId">
				<spring:message text="Login Id"/>
			</form:label>
		</td>
		<td>
			<form:input   path="loginId" />
		</td> 
	</tr>

	
	<tr>
			<td>
			<form:label readonly="true" path="otp">
				<spring:message text="otp"/>
			</form:label>
		</td>
		<td>
			<form:input path="otp" />
		</td> 
	</tr>
	

	
	
</table>	


</form:form>
 </c:otherwise>
 </c:choose>
<a href="#"  onclick="closeWindow()">go Back</a></td>

<br>

</body>
</html>
