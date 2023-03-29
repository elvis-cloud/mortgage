<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Mortgage Affordability App</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
			padding: 20px;
		}

		h1 {
			text-align: center;
			color: #2c3e50;
		}

		form {
			background-color: #ffffff;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
			max-width: 600px;
			margin: 0 auto;
		}

		label {
			display: block;
			margin-bottom: 5px;
			color: #2c3e50;
		}

		input[type=text],
		input[type=email],
		input[type=tel],
		input[type=number],
		select {
			width: 100%;
			padding: 10px;
			border-radius: 3px;
			border: none;
			margin-bottom: 10px;
			box-sizing: border-box;
		}

		input[type=submit] {
			background-color: #2c3e50;
			color: #ffffff;
			padding: 10px 20px;
			border: none;
			border-radius: 3px;
			cursor: pointer;
		}

		input[type=submit]:hover {
			background-color: #1e2b3d;
		}

		a {
			color: #2c3e50;
			text-align: center;
			display: block;
			margin-top: 20px;
		}
	</style>
</head>
<body>
	<h1>Mortgage Affordability App</h1>
	<form action="submit.jsp" method="post">
		<label for="name">Name:</label>
		<input type="text" name="name" required>

		<label for="email">Email:</label>
		<input type="email" name="email" required>

		<label for="phone">Phone:</label>
		<input type="tel" name="phone" required>
		
		<label for="income">Yearly Income:</label>
		<input type="number" name="income" required>
		
		<label for="expenses">Expenses:</label>
		<input type="number" name="expenses" required>
		
		<label for="loans">Other Loans:</label>
		<input type="number" name="loans" required>
		
		<label for="dependents">Dependents:</label>
		<input type="number" name="dependents" required>
		
		<label for="maritalStatus">Marital Status:</label>
		<select name="maritalStatus" required>
			<option value="Single">Single</option>
			<option value="Married">Married</option>
			<option value="Divorced">Divorced</option>
			<option value="Widowed">Widowed</option>
		</select>
		
		<label for="yearsOfEmployment">Years of Employment:</label>
		<input type="number" name="yearsOfEmployment" required>
		
		<input type="submit" value="Submit">
	

