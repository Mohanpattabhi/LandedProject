<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Update Profile</title>
	
	<script>
	function updateProfile(){
		document.forms[0].action="updateSubmit";
		document.forms[0].submit();
	}
	
	function downloadPhoto(){
	    var loginId = document.forms[0].loginId.value;
		var url = "downloadFile?name=" + loginId;
	    window.open(url, "Upload Photo", "width=600,height=500");
	}
	
	function logOut(){
	   	document.forms[0].action="logOut";
		document.forms[0].submit();
	}

	</script>
	<style>
	.errors {
		background-color:#FFCCCC;
		width:400px;
		margin-bottom:8px;
	}
	.blank_row
	{
	    height: 20px !important; /* Overwrite any previous rules */
	    background-color: #FFFFFF;
	}
</style>
</head>
<body>


 


<form:form action="updateSubmit" commandName="loginForm">
       
<c:set var="loginIdValue"  value="${loginForm.loginId}"/>
<table align="center"  width="80%">
			<tr>
				<td>
					<h1>User Updation</h1>
				</td>
			</tr>
			<tr>
				<td>
    <table style="width: 95%">
    <tr>
    <td>
       

<c:if test="${not empty updatedMessage}">
    ${updatedMessage}
</c:if>
    </td>
    </tr>
		<div style="display:none"><form:input path="loginId" /></div>
		<tr>
		<td>
		 <a href="#" onClick="downloadPhoto()">Download Photo</a>
		 </td>
		 </tr>
	
	<tr>
		<td>
			<form:label path="userName">
				<spring:message text="userName"/>
			</form:label>
		</td>
		<td>
			<form:input path="userName" />
		</td> 
		<td>
		<div class="errors" id="errors"><form:errors path="userName" /></div>
		</td> 
	</tr>
	
	<tr>
		<td>
			<form:label path="email">
				<spring:message text="email"/>
			</form:label>
		</td>
		<td>
			<form:input path="email" />
		</td> 
		<td>
		<div class="errors" id="errors"><form:errors path="email" /></div>
		</td> 
	</tr>
	
	<tr>
	<td>
	<b>Address</b>
	</td>
	</tr>
	<tr>
		<td>
			<form:label path="houseNumber">
				<spring:message text="House NO"/>
			</form:label>
		</td>
		<td>
			<form:input path="houseNumber" />
		</td> 
		<td>
		<div class="errors" id="errors"><form:errors path="houseNumber" /></div>
		</td> 
	</tr>
	
	<tr>
		<td>
			<form:label path="street">
				<spring:message text="street"/>
			</form:label>
		</td>
		<td>
			<form:input path="street" />
		</td> 
		<td>
		<div class="errors" id="errors"><form:errors path="street" /></div>
		</td> 
	</tr>
	
	
	<tr>
		<td>
			<form:label path="city">
				<spring:message text="city"/>
			</form:label>
		</td>
		<td>
			<form:input path="city" />
		</td> 
		<td>
		<div class="errors" id="errors"><form:errors path="city" /></div>
		</td> 
	</tr>
	
	<tr>
	<td>
			<form:label path="state">
			<spring:message text="state"/>
			</form:label>
	</td>
	<td>
			<c:set var="selectedState"  value="${loginForm.state}"/>
		<form:select path="state">
			<form:option value="0" label="--- Select ---"/>
				<c:forEach var="item" items="${loginForm.states}">
	 
					<option value="${item.stateId}" ${item.stateId == selectedState ? 'selected="selected"' : ''}>${item.stateName}</option>
				</c:forEach>
		</form:select>
	</td> 
	<td>
	<div class="errors" id="errors"><form:errors path="state" /></div>
	</td> 
	</tr>
	
	<tr>
		<td>
			<form:label path="country">
				<spring:message text="country"/>
			</form:label>
		</td>
		<td>
			<form:input path="country" />
		</td> 
		<td>
		<div class="errors" id="errors"><form:errors path="country" /></div>
		</td> 
	</tr>
	<tr class="blank_row">
    <td colspan="3"></td>
</tr>
	
	<tr>
		<td><input type="button" value="Submit" onClick="updateProfile()"/>
		</td>
		<td><input type="button" value="LogOut" onClick="logOut()"/></td>
	</tr>
</table>
</td>

				<td></td>
				<td></td>
			</tr>

</table>	



</form:form>
<br>

</body>
</html>
