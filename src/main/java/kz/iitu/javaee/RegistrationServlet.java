package kz.iitu.javaee;

import kz.iitu.javaee.dao.StudentDao;
import kz.iitu.javaee.models.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
<<<<<<< HEAD
=======
import javax.servlet.annotation.WebServlet;
>>>>>>> 52f13cd... init
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

<<<<<<< HEAD
=======
@WebServlet(name = "registration", value = "/registration")
>>>>>>> 52f13cd... init
public class RegistrationServlet extends HttpServlet {
    private StudentDao userDao;

    public void init() {
        userDao = new StudentDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("registration.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String status = "registration";

        req.setAttribute("username", username);
        req.setAttribute("password", password);
        req.setAttribute("status", status);

        if (!userDao.checkLogin(username)) {
<<<<<<< HEAD
            Student s = userDao.selectStudents(username);
            userDao.createStudent(new Student(username, password));
            req.setAttribute("status", "true");
            session.setAttribute("IS_AUTH", username);
//            session.setAttribute("USER_ID", s.getId());
            String path = req.getContextPath() + "/main";
            resp.sendRedirect(path);
=======
            userDao.createStudent(new Student(username, password));
            req.setAttribute("status", "true");
            session.setAttribute("IS_AUTH", username);
            String path = req.getContextPath() + "/main";
            resp.sendRedirect(path);

>>>>>>> 52f13cd... init
        } else {
            req.setAttribute("status", "false");
            RequestDispatcher view = req.getRequestDispatcher("registration.jsp");
            view.forward(req, resp);
        }
    }
}
