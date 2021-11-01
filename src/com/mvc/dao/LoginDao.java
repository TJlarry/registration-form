package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.sql.Statement;

import com.mvc.bean.LoginBean;
import com.mvc.util.DBConnection;

public class LoginDao {

	public String authenticateUser(LoginBean loginBean) {
		String userName = loginBean.getUserName();
		String password = loginBean.getPassword();

		Connection con = null;
		PreparedStatement preparedStatement = null;
		// Statement statement = null;
		// ResultSet resultSet = null;

		// String userNameDB = "";
		// String passwordDB = "";
		try {
			con = DBConnection.createConnection();
			String query = "select * from User_Registration where username = ? and password = ?";
			preparedStatement = con.prepareStatement(query);
			System.out.println("Before assignning the values:" + query);

			preparedStatement.setString(1, userName);
			preparedStatement.setString(2, password);
			System.out.println("Statement after generating:" + preparedStatement.toString());

			ResultSet rs = preparedStatement.executeQuery();
			System.out.println("After assigning the values username" + userName);
			System.out.println("After assigning the values password" + password);

			// resultSet = statement.executeQuery("select * from [User_Registration]");

			// while (resultSet.next()) {
			// userNameDB = resultSet.getString("userName");
			// passwordDB = resultSet.getString("password");;

			// if (userName.equals(userNameDB) && password.equals(passwordDB)) {
			// return "SUCCESS";
			// }
			if (rs.next()) {
				return "SUCCESS";
			} else {
				return "not found";
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}
		return "Invalid user credential";

	}

}
