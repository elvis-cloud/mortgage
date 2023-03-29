package com.barclays.mortgage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class UserDAO {
    private DataSource dataSource;

    public UserDAO() {
        try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:/comp/env");
            dataSource = (DataSource) envContext.lookup("jdbc/MortgageDB");
        } catch (NamingException e) {
            throw new RuntimeException("Unable to initialize data source", e);
        }
    }

    public void addUser(User user) {
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement("INSERT INTO users (name, email, phone, income, expenses, loans, dependents, marital_status, years_of_employment) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)")) {
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPhone());
            stmt.setDouble(4, user.getIncome());
            stmt.setDouble(5, user.getExpenses());
            stmt.setDouble(6, user.getLoans());
            stmt.setInt(7, user.getDependents());
            stmt.setString(8, user.getMaritalStatus());
            stmt.setInt(9, user.getYearsOfEmployment());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Unable to add user", e);
        }
    }

    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users");
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                User user = new User(rs.getInt("id"),
                                     rs.getString("name"),
                                     rs.getString("email"),
                                     rs.getString("phone"),
                                     rs.getDouble("income"),
                                     rs.getDouble("expenses"),
                                     rs.getDouble("loans"),
                                     rs.getInt("dependents"),
                                     rs.getString("marital_status"),
                                     rs.getInt("years_of_employment"));
                users.add(user);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Unable to retrieve users", e);
        }
        return users;
    }

    public void close() {
        try {
            dataSource.getConnection().close();
        } catch (SQLException e) {
            throw new RuntimeException("Unable to close data source", e);
        }
    }
}
