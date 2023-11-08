package com.codeup.adlister.controllers;

import java.sql.*;
import java.util.Properties;
import java.util.logging.Logger;

public class MySQLAdsDao implements AdsDao {
        private Connection connection;

        public MySQLAdsDao(Config config) throws SQLException {

                String selectQuery = "SELECT * FROM ads";

                DriverManager.registerDriver(new Driver() {
                        @Override
                        public Connection connect(String url, Properties info) throws SQLException {
                                return null;
                        }

                        @Override
                        public boolean acceptsURL(String url) throws SQLException {
                                return false;
                        }

                        @Override
                        public DriverPropertyInfo[] getPropertyInfo(String url, Properties info) throws SQLException {
                                return new DriverPropertyInfo[0];
                        }

                        @Override
                        public int getMajorVersion() {
                                return 0;
                        }

                        @Override
                        public int getMinorVersion() {
                                return 0;
                        }

                        @Override
                        public boolean jdbcCompliant() {
                                return false;
                        }

                        @Override
                        public Logger getParentLogger() throws SQLFeatureNotSupportedException {
                                return null;
                        }
                });
                Connection connection = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/codeup_test_db?allowPublicKeyRetrieval=true&useSSL=false",
                        "root",
                        "codeup"
                );

                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery(selectQuery);

                while (rs.next()) {
                        System.out.println("Here's an album:");
                        System.out.println("  id: " + rs.getLong("id"));
                        System.out.println("  artist: " + rs.getString("artist"));
                        System.out.println("  name: " + rs.getString("name"));
                }
        }
}