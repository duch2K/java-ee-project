package kz.iitu.javaee;

import kz.iitu.javaee.dao.StudentDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "borrowedBooks", value = "/borrowed-books")
public class BorrowedBooksServlet extends HttpServlet {
//    private StudentDao userDao;
//
//    public void init() {
//        userDao = new StudentDao();
//    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("borrowed-books.jsp").forward(request, response);
    }
}
