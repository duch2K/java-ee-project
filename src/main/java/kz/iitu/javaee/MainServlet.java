package kz.iitu.javaee;

import kz.iitu.javaee.dao.BookDao;

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
@WebServlet(name = "main", value = "/main")
>>>>>>> 52f13cd... init
public class MainServlet extends HttpServlet {
    private BookDao bookDao;

    public void init() {
        bookDao = new BookDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
