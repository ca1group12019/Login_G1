package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Customer;

public class CustomerDAO implements ObjectDAO{

    public static ArrayList<Customer> listCustomer = getListCustomer();

    // get
    private static ArrayList<Customer> getListCustomer() {
        ArrayList<Customer> index = new ArrayList<>();
        try {
            Connection connect = ConnectToDatabaseOnline.downDatabase();
            PreparedStatement statement = connect.prepareStatement("SELECT * FROM FN_CUSTOMER");
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                String customer = result.getString(1);
                String account = result.getString(2);
                String password = result.getString(3);
                String phone = result.getString(4);
                String email = result.getString(5);
                index.add(new Customer(customer, account, password,  phone, email));
            }
        } catch (Exception ex) {
            System.out.println("error");
        }
        return index;
    }
    
    private static void print() {
        for (Customer c : listCustomer) {
            System.out.println(c);
        }
    }
    // end get.

    // login
    public static int findIndexAccount(String user) {
        int index = 0;
        for (Customer c : listCustomer) {
            if (!c.getAccount().equals(user)) {
                index++;
            }else{
                break;
            }
        }
        if (index >= listCustomer.size()) {
            index = -1;
        }
        return index;
    }
    
   

    public static boolean check(String user, String password) {
        if (findIndexAccount(user) == -1) {
            return false;
        }
        Customer customer = listCustomer.get(findIndexAccount(user));
        if (customer != null) {
            if (customer.getPassword().equals(password)) {
                return true;
            } else {
                return false;
            }
        }
        return false;
    }
    // end login.
   
    // AED
    public static int findIndexCustomer(String customer){
        int index = 0;
        for(Customer c:listCustomer){
            if(!c.getCustomer().equals(customer)){
                index++;
            }else{
                break;
            }
        }
        if(index >= listCustomer.size()){
            index = -1;
        }
        return index;
    }

    
    public String findNewCodeCustomer() {
        ArrayList<Integer> list = new ArrayList<>();
        StringBuffer index = new StringBuffer();
        index.append("CT");
        Integer trung = 01;
        for (Customer m : listCustomer) {
            Integer addnew = Integer.parseInt(m.getCustomer().substring(2, 4));
            list.add(addnew);
        }
        for (Integer s : list) {
            if (trung == s) {
                trung++;
            }
        }
        if (trung < 10) {
            index.append("0");
            index.append(trung);
        } else {
            index.append(trung);
        }
        return index.toString();
    }
    
    public static ArrayList<String> listCodeCustomerDifferent(){
        ArrayList<String> index = new ArrayList<>();
        for(Customer c:listCustomer){
            index.add(c.getCustomer());
        }
        return index;
    }
    

    
  
}
