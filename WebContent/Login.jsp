<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="author" content="Lanre Allioke">
<meta name="description" content="Login Application">
<title>LOGIN</title>
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
	text-align: left;
	display: inline-block;
	margin-left: auto;
	margin-right: auto;
}

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
		var username = document.form.username.value;
		var password = document.form.passowrd.value;

		if (username == null || username == "") {
			alert("First Name can't be blank")
			return false
		}

		else
			(password == null || password == "")
		{
			alert("Password can't be blank")
			return false
		}
	}
</script>
</head>
<body>
	<div class="top">
		<h1>Login Application in java Using MVC and MSSQL</h1>
	</div>
	<br>
	<div class="form1">
		<form name=form action="LoginServlet" method="post"
			onsubmit="returnvalidate()">
			<table>
				<tr>
					<td>Username <input type="text" name="username"
						placeholder="Your username"></td>
				</tr>
				<tr>
					<td>Password <input type="text" name="password"
						placeholder="Your password"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type=submit name=login></td>
					<td><input type=Reset name=reset></td>
				</tr>
			</table>

		</form>
	</div>
</body>


</html>