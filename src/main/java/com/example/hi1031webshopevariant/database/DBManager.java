package com.example.hi1031webshopevariant.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager {

  private static final String DATABASE_URL = "jdbc:postgresql://db:5432/postgres";
  private static final String USERNAME = "postgres";
  private static final String PASSWORD = "mysecretpassword";
  private static DBManager instance = null;
  private Connection con = null;

  /**
   * Singleton get instance
   *
   * @return db manager instance
   */
  private static DBManager getInstance() {
    if (instance == null) {
      instance = new DBManager();
    }
    return instance;
  }

  /** Creates a new db connection */
  private DBManager() {
    try {
      Class.forName("org.postgresql.Driver");
      con = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);
    } catch (SQLException | ClassNotFoundException e) {
      throw new RuntimeException(e);
    }
  }

  public static Connection getConnection() {
    return getInstance().con;
  }
}
