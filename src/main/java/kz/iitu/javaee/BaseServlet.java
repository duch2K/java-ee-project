package kz.iitu.javaee;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
<<<<<<< HEAD
=======
import javax.servlet.annotation.WebServlet;
>>>>>>> 52f13cd... init
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

<<<<<<< HEAD
=======
@WebServlet(name = "base", value = "/")
>>>>>>> 52f13cd... init
public class BaseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("redirect base page to main");
        ServletContext servletContext = getServletContext();
        RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/main");
        requestDispatcher.forward(req, resp);
    }
}
