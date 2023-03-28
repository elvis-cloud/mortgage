<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Mortgage Affordability App</title>
</head>
<body>
	<h1>Mortgage Affordability App</h1>
	<form action="submit.jsp" method="post">
		<label for="name">Name:</label>
		<input type="text" name="name" required><br><br>
		
		<label for="yearlyIncome">Yearly Income:</label>
		<input type="number" name="yearlyIncome" required><br><br>
		
		<label for="expenses">Expenses:</label>
		<input type="number" name="expenses" required><br><br>
		
		<label for="otherLoans">Other Loans:</label>
		<input type="number" name="otherLoans" required><br><br>
		
		<label for="dependents">Dependents:</label>
		<input type="number" name="dependents" required><br><br>
		
		<label for="maritalStatus">Marital Status:</label>
		<select name="maritalStatus" required>
			<option value="Single">Single</option>
			<option value="Married">Married</option>
			<option value="Divorced">Divorced</option>
			<option value="Widowed">Widowed</option>
		</select><br><br>
		
		<label for="yearsOfEmployment">Years of Employment:</label>
		<input type="number" name="yearsOfEmployment" required><br><br>
		
		<input type="submit" value="Submit">
	</form>
	<br><br>
	<a href="table.jsp">View All Entries</a>
</body>
</html>
