<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<style>
.blank_row
{
    height: 20px !important; /* Overwrite any previous rules */
    background-color: #FFFFFF;
}
.errors {
	background-color:#FFCCCC;
	width:400px;
	margin-bottom:8px;
}
</style>

<title>Register Page</title>
</head>
<script>
	function register() {
		document.forms[0].action = "registerSubmit";
		document.forms[0].submit();

	}

	function uploadPhoto() {
		var loginId = document.forms[0].loginId.value;
		if (null == loginId || '' == loginId) {
			document.getElementById("errors").innerHTML = "Please enter loginId before Uploading";
		} else {
			document.getElementById("errors").innerHTML = "";
			var url = "uploadPhoto?loginId=" + loginId;
			window.open(url, "Upload Photo", "width=600,height=500");
		}

	}
</script>
</head>
<body>








	<form:form action="/registerSubmit" commandName="loginForm">

		<table align="center"  width="80%">
			<tr>
				<td>
					<h1>User Registeration</h1>
				</td>
			</tr>
			<tr>
				<td>
					<table style="width: 95%">


						<tr>
							<td><form:label path="loginId">
									<spring:message text="Login Id" />
								</form:label></td>
							<td><form:input path="loginId" /></td>
							<td>
								<div class="errors" id="errors">
									<form:errors path="loginId" />
								</div>
							</td>
						</tr>


						<tr>
							<td><form:label path="password">
									<spring:message text="Password" />
								</form:label></td>
							<td><form:password path="password" /></td>
							<td>
								<div class="errors" id="errors">
									<form:errors path="password" />
								</div>
							</td>
						</tr>

						<tr>
							<td><form:label path="userName">
									<spring:message text="userName" />
								</form:label></td>
							<td><form:input path="userName" /></td>
							<td>
								<div class="errors" id="errors">
									<form:errors path="userName" />
								</div>
							</td>
						</tr>

						<tr>
							<td><form:label path="email">
									<spring:message text="email" />
								</form:label></td>
							<td><form:input path="email" /></td>
							<td>
								<div class="errors" id="errors">
									<form:errors path="email" />
								</div>
							</td>
						</tr>

						<tr>
							<td><b>Address</b></td>
						</tr>

						<tr>
							<td><form:label path="houseNumber">
									<spring:message text="House NO" />
								</form:label></td>
							<td><form:input path="houseNumber" /></td>
							<td>
								<div class="errors" id="errors">
									<form:errors path="houseNumber" />
								</div>
							</td>
						</tr>

						<tr>
							<td><form:label path="street">
									<spring:message text="street" />
								</form:label></td>
							<td><form:input path="street" /></td>
							<td>
								<div class="errors" id="errors">
									<form:errors path="street" />
								</div>
							</td>
						</tr>


						<tr>
							<td><form:label path="city">
									<spring:message text="city" />
								</form:label></td>
							<td><form:input path="city" /></td>
							<td>
								<div class="errors" id="errors">
									<form:errors path="city" />
								</div>
							</td>
						</tr>

						<tr>
							<td><form:label path="state">
									<spring:message text="state" />
								</form:label></td>
							<td><c:set var="selectedState" value="${loginForm.state}" />
								<form:select path="state">
									<form:option value="0" label="--- Select ---" />
									<c:forEach var="item" items="${loginForm.states}">

										<option value="${item.stateId}"
											${item.stateId == selectedState ? 'selected="selected"' : ''}>${item.stateName}</option>
									</c:forEach>
								</form:select></td>
							<td>
								<div class="errors" id="errors">
									<form:errors path="state" />
								</div>
							</td>
						</tr>

						<tr>
							<td><form:label path="country">
									<spring:message text="country" />
								</form:label></td>
							<td><form:input path="country" /></td>
							<td>
								<div class="errors" id="errors">
									<form:errors path="country" />
								</div>
							</td>
						</tr>
						<tr class="blank_row">
    <td colspan="3"></td>
</tr>
						<tr>
							<td><input type="button" value="Submit" onClick="register()" />
							</td>
							<td><input type="RESET" value="Clear" /></td>
						</tr>
						</form:form>

					</table>
				</td>

				<td><a href="#" onClick="uploadPhoto()">Upload Photo</a></td>
				<td></td>
			</tr>

		</table>




		<br>
</body>
</html>
