<%@page import="java.util.ArrayList"%>
<%@page import="com.barclays.mortgage.User"%>
<%@page import="com.barclays.mortgage.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Table</title>
    <style>
        table, th, td {
          border: 1px solid black;
          border-collapse: collapse;
          padding: 5px;
        }
    </style>
</head>
<body>
    <h2>User Table</h2>
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Income</th>
            <th>Expenses</th>
            <th>Loans</th>
            <th>Dependents</th>
            <th>Marital Status</th>
            <th>Years of Employment</th>
        </tr>
        <% 
            UserDAO userDAO = new UserDAO();
            ArrayList<User> users = userDAO.getAllUsers();
            for (User user : users) {
        %>
        <tr>
            <td><%= user.getId() %></td>
            <td><%= user.getName() %></td>
            <td><%= user.getEmail() %></td>
            <td><%= user.getIncome() %></td>
            <td><%= user.getExpenses() %></td>
            <td><%= user.getLoans() %></td>
            <td><%= user.getDependents() %></td>
            <td><%= user.getMaritalStatus() %></td>
            <td><%= user.getYearsOfEmployment() %></td>
        </tr>
        <% 
            }
        %>
    </table>
</body>
</html>
