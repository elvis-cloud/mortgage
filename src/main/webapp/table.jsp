<%@ page import="java.util.List" %>
<%@page import="com.barclays.mortgage.User"%>
<%@page import="com.barclays.mortgage.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Table</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #3498db;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
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
            <th>Phone</th>
            <th>Income</th>
            <th>Expenses</th>
            <th>Loans</th>
            <th>Dependents</th>
            <th>Marital Status</th>
            <th>Years of Employment</th>
        </tr>
        <% 
            UserDAO userDAO = new UserDAO();
            List<User> users = userDAO.getAllUsers();
            userDAO.close();
            for (User user : users) {
        %>
        <tr>
            <td><%= user.getId() %></td>
            <td><%= user.getName() %></td>
            <td><%= user.getEmail() %></td>
            <td><%= user.getPhone() %></td>
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
