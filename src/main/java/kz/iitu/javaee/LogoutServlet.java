package kz.iitu.javaee;

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
@WebServlet(name = "logout", value = "/logoutServlet")
>>>>>>> 52f13cd... init
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect(request.getContextPath() + "/login");
    }
}
