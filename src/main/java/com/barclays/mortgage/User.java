package com.barclays.mortgage;

public class User {
    private int id;
    private String name;
    private String email;
    private String phone;
    private double income;
    private int expenses;
    private int loans;
    private int dependents;
    private String maritalStatus;
    private int yearsOfEmployment;

    public User (){
    }

    public User(int id, String name, String email, String phone, double income, int expenses, int loans, int dependents, String maritalStatus, int yearsOfEmployment) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.income = income;
        this.expenses = expenses;
        this.loans = loans;
        this.dependents = dependents;
        this.maritalStatus = maritalStatus;
        this.yearsOfEmployment = yearsOfEmployment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public double getIncome() {
        return income;
    }

    public void setIncome(double income) {
        this.income = income;
    }

    public int getExpenses() {
        return expenses;
    }

    public void setExpenses(int expenses) {
        this.expenses = expenses;
    }

    public int getLoans() {
        return loans;
    }

    public void setLoans(int loans) {
        this.loans = loans;
    }

    public int getDependents() {
        return dependents;
    }

    public void setDependents(int dependents) {
        this.dependents = dependents;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public int getYearsOfEmployment() {
        return yearsOfEmployment;
    }

    public void setYearsOfEmployment(int yearsOfEmployment) {
        this.yearsOfEmployment = yearsOfEmployment;
    }
}
