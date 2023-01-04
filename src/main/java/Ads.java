import java.sql.SQLException;
import java.util.List;

public interface Ads {

    List<Ad> all() throws SQLException;

    Long insert(Ad ad) throws SQLException;

}
