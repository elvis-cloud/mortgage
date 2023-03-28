package com.barclays.mortgage;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    private Connection connection;

    public UserDAO() {
        String url = System.getenv("DB_URL");
        String username = System.getenv("DB_USERNAME");
        String password = System.getenv("DB_PASSWORD");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Add user to database
    public void addUser(User user) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into users(name, email, phone, yearly_income, expenses, other_loans, dependents, marital_status, years_of_employment) values (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPhone());
            preparedStatement.setDouble(4, user.getIncome());
            preparedStatement.setDouble(5, user.getExpenses());
            preparedStatement.setDouble(6, user.getLoans());
            preparedStatement.setInt(7, user.getDependents());
            preparedStatement.setString(8, user.getMaritalStatus());
            preparedStatement.setInt(9, user.getYearsOfEmployment());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Get all users from database
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<User>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from users");
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setIncome(rs.getDouble("yearly_income"));
                user.setExpenses(rs.getDouble("expenses"));
                user.setLoans(rs.getDouble("loans"));
                user.setDependents(rs.getInt("dependents"));
                user.setMaritalStatus(rs.getString("marital_status"));
                user.setYearsOfEmployment(rs.getInt("years_of_employment"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
}

