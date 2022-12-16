import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "/view-color", urlPatterns = "/view-color")
public class ViewColorServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.getWriter().println("<h1>This is the ViewColorServlet!</h1>");

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        String color = request.getParameter("color-input");

        PrintWriter out = response.getWriter();

        out.println(

        "<!DOCTYPE html>" +
        "<html lang=\"en\">" +
        "<head>" +
        "<meta charset=\"utf-8\">" +
        "<title>Title</title>" +

        "<style>" +

            "html {" +
                "background-color: " + color + ";" +
            "}" +

        "</style>" +

        "</head>" +
        "<body>" +

            "<h1>COLOR</h1>" +

        "</body>" +
        "</html>"

        );

    }

}
