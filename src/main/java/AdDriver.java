import com.mysql.cj.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class AdDriver {

    public Connection getConnection() {
        return connection;
    }

    private Connection connection;



    public AdDriver() {

        try {
            DriverManager.registerDriver(new Driver());
            this.connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/adlister_db?allowPublicKeyRetrieval=true&useSSL=false",
                    "root",
                    "codeup");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }



//        Statement statement = connection.createStatement();
//
//        statement.execute("INSERT INTO users (username, email, password) VALUES ('JohnM','@JohnM', '1234')");

    }

}
