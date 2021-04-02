package kz.iitu.javaee;

import kz.iitu.javaee.dao.StudentDao;
import kz.iitu.javaee.models.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    private StudentDao userDao;

    public void init() {
        userDao = new StudentDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            HttpSession session = req.getSession();
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            String status = "false";

                if (userDao.checkStudent(username, password)) {
                    Student s = userDao.selectStudents(username);
                    req.setAttribute("status", "true");
                    session.setAttribute("IS_AUTH", username);
//                    session.setAttribute("USER_ID", s.getId());
                    String path = req.getContextPath() + "/main";
                    resp.sendRedirect(path);
                } else {
                    req.setAttribute("status", "false");
                    RequestDispatcher view = req.getRequestDispatcher("login.jsp");
                    view.forward(req, resp);
                }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }
}
