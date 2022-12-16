import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "view-color-two-serv", urlPatterns = "/view-color-two-serv")
public class ViewColorTwoServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String color = request.getParameter("color-input");

        request.setAttribute("color", color);

        request.getRequestDispatcher("/view-color.jsp").forward(request, response);

        response.sendRedirect("/view-color.jsp");

    }

}
