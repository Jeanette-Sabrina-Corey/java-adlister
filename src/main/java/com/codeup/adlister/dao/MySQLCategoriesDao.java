package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.mysql.cj.jdbc.Driver;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLCategoriesDao implements Categories{
  private static Connection connection = null;

  public MySQLCategoriesDao(Config config) {
    try {
      DriverManager.registerDriver(new Driver());
      connection = DriverManager.getConnection(
        config.getUrl(),
        config.getUser(),
        config.getPassword()
      );
    } catch (SQLException e) {
      throw new RuntimeException("Error connecting to the database!", e);
    }
  }

//
//  public void insertAdCategory(long adId, long categoryId) {
//    String query = "INSERT INTO ad_categories(ad_id,categories_id) VALUES (?,?)";
//    try {
//      PreparedStatement stmt = connection.prepareStatement(query);
//      stmt.setLong(1, adId);
//      stmt.setLong(2,categoryId);
//      stmt.executeUpdate();
//
//    } catch (SQLException e) {
//      throw new RuntimeException("Did not add categories");
//    }
//  }

  private Category extractCategories(ResultSet rs) throws  SQLException{
    return new Category(
      rs.getInt("id"),
      rs.getString("name")
    );
  }

  private List<Category> createCatFromResults(ResultSet rs) throws  SQLException {
    List<Category> categories = new ArrayList<>();
    while (rs.next()) {
      categories.add(extractCategories(rs));
    }
    return categories;
  }

  @Override
  public List<Category> all() {
    PreparedStatement stmt = null;
    try {
      stmt = connection.prepareStatement("SELECT * FROM categories");
      ResultSet rs = stmt.executeQuery();
      return createCatFromResults(rs);
    } catch (SQLException e) {
      throw new RuntimeException("Error retrieving all ads.", e);
    }
  }

//  @Override
//  public List<Category> filterCats(long adId) {
//    PreparedStatement stmt = null;
//    try {
//      stmt = connection.prepareStatement("SELECT categories.name" +
//              "        FROM categories\n"  +
//              "        JOIN ad_categories ON categories.id = ad_categories.ad_id WHERE ad_categories.ad_id = ?");
//      ResultSet rs = stmt.executeQuery();
//      return createCatFromResults(rs);
//    } catch (SQLException e) {
//      throw new RuntimeException("Error retrieving all ads.", e);
//    }
//  }


}



