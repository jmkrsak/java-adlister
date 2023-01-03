import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="ViewAdsServlet", urlPatterns="/ads")
public class ViewAdsServlet extends HttpServlet{

    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("ads", DaoFactory.getAdsDao().all());
        req.getRequestDispatcher("/ads/index.jsp").forward(req, resp);

    }

}
