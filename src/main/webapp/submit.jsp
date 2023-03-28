<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.barclays.mortgage.User,com.barclays.mortgage.UserDAO" %>
<%
    String name = request.getParameter("name");
    double yearlyIncome = Double.parseDouble(request.getParameter("yearlyIncome"));
    double expenses = Double.parseDouble(request.getParameter("expenses"));
    double otherLoans = Double.parseDouble(request.getParameter("otherLoans"));
    int dependents = Integer.parseInt(request.getParameter("dependents"));
    String maritalStatus = request.getParameter("maritalStatus");
    int yearsOfEmployment = Integer.parseInt(request.getParameter("yearsOfEmployment"));
    
    User user = new User(name, yearlyIncome, expenses, otherLoans, dependents, maritalStatus, yearsOfEmployment);
    UserDAO userDao = new UserDAO();
    userDao.addUser(user);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Thank You</title>
</head>
<body>
	<h1>Thank You</h1>
	<p>A mortgage specialist will be in contact with you shortly.</p>
	<br><br>
	<a href="index.jsp">Go Back to Home Page</a>
</body>
</html>
