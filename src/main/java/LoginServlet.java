import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/login.jsp").forward(req, resp);

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        HttpSession session = req.getSession();

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        boolean attemptValid = username.equals("admin") && password.equals("password");

        if (attemptValid) {

            session.setAttribute("user", username);
            resp.sendRedirect("/profile");

        } else {

            resp.sendRedirect("/login");

        }
    }
}
