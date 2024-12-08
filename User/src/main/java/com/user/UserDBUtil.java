package com.user;

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
            String sql = "select * from user where id='" + id + "' and name='" + name + "'";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                int userId = rs.getInt(1);
                String userName = rs.getString(2);
                String price = rs.getString(3);
                String qty = rs.getString(4);
                String total = rs.getString(5);

                User user = new User(userId, userName, price, qty, total);
                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();

        }

        return users;
    }

    public static boolean insertCustomer(String name, String price, String qty, String total) {
        boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "insert into user (name, price, qty, total) values ('" + name + "','" + price + "','" + qty + "','" + total + "')";
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

    public static boolean updateCustomer(String id, String name, String price, String qty, String total) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "update user set name='" + name + "',price='" + price + "',qty='" + qty + "',total='" + total + "' where id='" + id + "'";
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
            String sql = "select * from user where id='" + convertedID + "'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int userId = rs.getInt(1);
                String name = rs.getString(2);
                String price = rs.getString(3);
                String qty = rs.getString(4);
                String total = rs.getString(5);

                User user = new User(userId, name, price, qty, total);
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
            String sql = "delete from user where id='" + convId + "'";
            int r = stmt.executeUpdate(sql);

            isSuccess = r > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static List<User> getAllUsers() {
        ArrayList<User> users = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "select * from user";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int userId = rs.getInt(1);
                String name = rs.getString(2);
                String price = rs.getString(3);
                String qty = rs.getString(4);
                String total = rs.getString(5);

                User user = new User(userId, name, price, qty, total);
                users.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }
}
