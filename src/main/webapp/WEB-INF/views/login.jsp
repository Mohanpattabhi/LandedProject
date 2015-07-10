<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
	<title>UPM Login Page</title>
	<style type="text/css">
	.errors
	 {
		background-color:#FFCCCC;
		width:400px;
		margin-bottom:8px;
	}
	tr.spaceUnder > td
	{
 		 padding-bottom: 1em;
	}
	</style>
	
	<script type="text/javascript">
	function register(){
		document.forms[0].action="register";
		document.forms[0].submit();
				
	}
	
	function login(){
		document.forms[0].action="loginSubmit";
		document.forms[0].submit();
				
	}
	function generateOTP(){
		document.getElementById("errors").innerHTML ="";
	

	var loginId = document.forms[0].loginId.value;
	
	if(null == loginId || '' == loginId){
		document.getElementById("errors").innerHTML ="Please enter loginId";
		return false;
	}
	
	 var url = "generateOTP?loginId=" + loginId;
	 window.open(url, "OTP", "width=600,height=500");

				
	}
	
	
	

	</script>
</head>
<body>



<form:form action="loginSubmit" commandName="loginForm">
 
<table align="Center">
<tr>
<td>

	<h1>User Login</h1>
</td>
</tr>
<tr>
   <td>
  <c:if test="${not empty errorMessage}">  
                    <div class="errors" id="errors"><c:out value="${errorMessage}" /></div>
  </c:if>
  </td>
</tr>
	
	<tr>
		<td>
			<form:label path="loginId">
				<spring:message text="Login Id"/>
			</form:label>
		</td>
		<td>
			<form:input path="loginId" />
		</td> 
		<td>
			   <div class="errors" id="errors"><form:errors path="loginId" /></div>
		</td>
	</tr>

	<tr>
		<td>
			<form:label path="otp">
				<spring:message text="OTP"/>
			</form:label>
		</td>
		<td>
			<form:input path="otp" />
		</td> 
		<td>
			   <div class="errors" id="errors"><form:errors path="otp" /></div>
		</td>
	</tr>
	<tr>
			<td>
			<form:label path="password">
				<spring:message text="Password"/>
			</form:label>
		</td>
		<td>
			<form:input path="password" type="password" />
		</td> 
		<td>
			   <div class="errors" id="errors"><form:errors path="password" /></div>
		</td>
	</tr>
	<tr class="spaceUnder">
	</tr>
	<tr>
	<td>
	    <div style="margin-left: 50px"><input type="button" value="Register" onClick="register()"/></div>
	</td>
	<td>
	    <div style="margin-left: 50px"><input type="button" value="Login" onClick="login()"/></div>
	</td>
	<td><a href="#" onClick="generateOTP()">Generate OTP</a></td>
	</tr>
</table>	




</form:form>

<br>

</body>
</html>
