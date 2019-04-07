package model;

import java.sql.Date;

public class Customer {
    private String customer;
    private String account;
    private String password;
    private String phone;
    private String email;

    public Customer(String customer, String account, String password, String phone, String email) {
        this.customer = customer;
        this.account = account;
        this.password = password;
        this.phone = phone;
        this.email = email;
    }

    public String getCustomer() {
        return customer;
    }

    public String getAccount() {
        return account;
    }

    public String getPassword() {
        return password;
    }

   

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    @Override
    public String toString() {
        return "Customer{" + "customer=" + customer + ", account=" + account + ", password=" + password  + ", phone=" + phone + ", email=" + email + '}';
    }
    
}