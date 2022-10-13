package com.example.hi1031webshopevariant.database;

import com.example.hi1031webshopevariant.business.Item;

import java.sql.*;
import java.util.Collection;
import java.util.Optional;
import java.util.Vector;

public class ItemDB extends Item {

  private ItemDB(Integer id, String name, Integer price, String description) {
    super(id, name, price, description);
  }

  public static Optional<Item> findById(Integer id) {
    Connection con = null;
    try {

      con = DBManager.getConnection();
      PreparedStatement ps = con.prepareStatement("SELECT * FROM t_items WHERE item_id = ?");
      ps.setInt(1, id);
      ResultSet rs = ps.executeQuery();

      if (rs.next()) {
        Integer itemId = rs.getInt("item_id");
        String name = rs.getString("item_name");
        Integer price = rs.getInt("item_price");
        String description = rs.getString("item_description");
        return Optional.of(new ItemDB(itemId, name, price, description));
      }
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }

    return Optional.empty();
  }

  public static Collection<Item> findAllItems() {
    Vector<Item> v = new Vector<>();
    Connection con = null;
    try {

      con = DBManager.getConnection();
      Statement ps = con.createStatement();
      ResultSet rs = ps.executeQuery("select * from t_items");

      while (rs.next()) {
        Integer id = rs.getInt("item_id");
        String name = rs.getString("item_name");
        Integer price = rs.getInt("item_price");
        String description = rs.getString("item_description");
        v.addElement(new ItemDB(id, name, price, description));
      }
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }
    return v;
  }
}
