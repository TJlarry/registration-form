<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="author" content="Lanre Allioke">
<meta name="description" content="Registration Form">

<title>Register</title>

<style type="text/css">
input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

body {
	background-color: lightblue;
	text-align: center;
}

.top {
	text-align: center;
}

.form1 {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	display: inline-block;
	margin-left: auto;
	margin-right: auto;
	text-align: left;
}

input[type=submit]:hover {
	background-color: #45a049
}

input[type=Reset]:hover {
	background-color: #45a049
}

input[type=submit] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=Reset] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
</style>

<script>
	function validate() {
		var firstname = document.form.firstname.value;
		var lastname = document.form.lastname.value;
		var email = document.form.email.value;
		var username = document.form.username.value;
		var password = document.form.password.value;
		var repassword = document.form.repassword.value;

		if (firstname == null || firstname == "") {
			alert("First Name can't be blank");
			return false;
		} else if (lastname == null || lastname == "") {
			alert("Last Name can't be blank");
			return false;
		} else if (email == null || email == "") {
			alert("Email can't be blank");
			return false;
		} else if (username == null || username == "") {
			alert("Username can't be blank");
			return false;
		} else if (password.length < 6) {
			alert("Password must be at least 6 characters long.");
			return false;
		} else if (password != repassword) {
			alert("Confirm Password should match with the Password");
			return false;
		}
	}
</script>
</head>
<body>
	<div class="top">
		<h2>Enter Details</h2>
	</div>
	<div class="form1">
		<form name="form" action="RegisterServlet" method="post"
			onsubmit="return validate()">
			<table>
				<tr>
					<td><strong>First Name</strong></td>
					<td><input type="text" name="firstname" /></td>
				</tr>
				<tr>
					<td><strong>Last Name</strong></td>
					<td><input type="text" name="lastname" /></td>
				</tr>
				<tr>
					<td><strong>Email </strong></td>
					<td><input type="text" name="email" /></td>
				</tr>

				<tr>
					<td><strong>Username</strong></td>
					<td><input type="text" name="username" /></td>
				</tr>

				<tr>
					<td><strong> Password </strong></td>
					<td><input type="text" name="password" /></td>
				</tr>
				<tr>
					<td><strong> Confirm Password </strong></td>
					<td><input type="text" name="repassword" /></td>
				</tr>

				<tr>
					<td><strong> Submit </strong></td>
					<td><input type="submit" name="submit" /></td>
				</tr>
				
				<tr>
				<td><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></td>
				 </tr>

				<tr>
					<td><strong>Reset </strong></td>
					<td><input type="Reset" name="reset" /></td>
				</tr>
			</table>



		</form>
	</div>
</body>
</html>