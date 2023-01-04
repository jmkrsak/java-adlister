import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads{

    private Connection connection;

    public MySQLAdsDao(Config config) {
        try {
            this.connection = DriverManager.getConnection(config.getUrl(),config.getUser(),config.getPassword());
            } catch (SQLException e) {
            System.out.println("e.getMessage() = " + e.getMessage());
        }
    }

    @Override
    public List<Ad> all() throws SQLException {
        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM ads");
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(new Ad(
                    rs.getLong("id"),
                    rs.getLong("user_id"),
                    rs.getString("title"),
                    rs.getString("description")
            ));
        }
        return ads;
    }

    @Override
    public Long insert(Ad ad) throws SQLException {
        Statement stmt = connection.createStatement();
        int result = stmt.executeUpdate("INSERT INTO ads (user_id, title, description) VALUES ('" + ad.getUserId() + "','" + ad.getTitle() + "','" + ad.getDescription() + "')");
        if (result > 0) {
            ResultSet rs = stmt.getGeneratedKeys();
            return rs.getLong(1);
        } else {
            return null;
        }

    }

}
