package com.inventory;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {

    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static List<User> validate(String id, String name) {
        ArrayList<User> users = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "select * from inventory where id='" + id + "' and name='" + name + "'";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                int userId = rs.getInt(1);
                String userName = rs.getString(2);
                String url = rs.getString(3);
                String ptype = rs.getString(4);
                String type = rs.getString(5);
                String available = rs.getString(6);
                String price = rs.getString(7);

                User user = new User(userId, userName, url, ptype, type, available, price);
                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();

        }

        return users;
    }

    public static boolean insertcustomer(String name, String url, String ptype, String type, String available, String price) {
        boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "insert into inventory (name, url, ptype, type, available, price) values ('" + name + "','" + url + "','" + ptype + "','" + type + "','" + available + "','" + price + "')";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static boolean updatecustomer(String id, String name, String url, String ptype, String type, String available, String price) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "update inventory set name='" + name + "',url='" + url + "',ptype='" + ptype + "',type='" + type + "',available='" + available + "',price='" + price + "' where id='" + id + "'";
            int rs = stmt.executeUpdate(sql);

            isSuccess = rs > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static List<User> getCustomerDetails(String id) {
        int convertedID = Integer.parseInt(id);
        ArrayList<User> users = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "select * from users where id='" + convertedID + "'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int userId = rs.getInt(1);
                String name = rs.getString(2);
                String url = rs.getString(3);
                String ptype = rs.getString(4);
                String type = rs.getString(5);
                String available = rs.getString(6);
                String price = rs.getString(7);

                User user = new User(userId, name, url, ptype, type, available, price);
                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }

    public static boolean deleteCustomer(String id) {
        int convId = Integer.parseInt(id);

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "delete from inventory where id='" + convId + "'";
            int r = stmt.executeUpdate(sql);

            isSuccess = r > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static List<User> getAllAdmins() {
        ArrayList<User> users = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "select * from inventory";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int userId = rs.getInt(1);
                String name = rs.getString(2);
                String url = rs.getString(3);
                String ptype = rs.getString(4);
                String type = rs.getString(5);
                String available = rs.getString(6);
                String price = rs.getString(7);

                User user = new User(userId, name, url, ptype, type, available, price);
                users.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }
}
