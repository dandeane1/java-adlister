package dao;

import models.Ad;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Logger;


public class MySQLAdsDao implements Ads {

    private List<Ad> ads;
    @Override
    public List<Ad> all() throws SQLException {
        List<Ad> adsList = new ArrayList<>();
        String getAllQuery = "SELECT * FROM ads";

        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(getAllQuery);
        while (rs.next()) {
            Ad ad = new Ad(rs.getString("title"),rs.getString("description"));
            adsList.add(ad);
        }

        return adsList;
    }


    @Override
    public Long insert(Ad ad) throws SQLException {

        String query = "INSERT INTO ads (title, description, user_id) VALUES ('" + ad.getTitle() + "', '" + ad.getDescription() + "', " + ad.getUserId() + ")";
        Statement statement = connection.createStatement();
        statement.execute(query);

        return (long) Statement.RETURN_GENERATED_KEYS;
    }

    private Connection connection;
    public MySQLAdsDao(Config config) throws SQLException {
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
        this.connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );
    };
}
