package com.example.hi1031webshopevariant.database;

import com.example.hi1031webshopevariant.business.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;

public class UserDB extends User {

  private UserDB(String username, String password) {
    super(username, password);
  }

  public static Optional<User> findByUsernamePassword(String username, String password) {
    Connection con = null;
    try {

      con = DBManager.getConnection();
      PreparedStatement ps =
          con.prepareStatement(
              "SELECT * FROM t_users WHERE user_username = ? AND user_password = ?");
      ps.setString(1, username);
      ps.setString(2, password);
      ResultSet rs = ps.executeQuery();

      if (rs.next()) {
        String foundUsername = rs.getString("user_username");
        String foundPassword = rs.getString("user_password");
        return Optional.of(new UserDB(foundUsername, foundPassword));
      }
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }

    return Optional.empty();
  }

  public static void createUser(String username, String password) {
    Connection con = null;
    try {

      con = DBManager.getConnection();
      PreparedStatement ps =
          con.prepareStatement("INSERT INTO t_users(user_username, user_password) VALUES (?, ?)");
      ps.setString(1, username);
      ps.setString(2, password);
      ps.executeUpdate();
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
  }
}
