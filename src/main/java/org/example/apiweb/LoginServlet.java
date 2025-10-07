package org.example.apiweb;

import java.io.IOException;
import dao.UsuarioDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Usuario;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        String cedula = request.getParameter("cedula");
        String contrasenia = request.getParameter("contrasenia");

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        boolean loginExitoso = usuarioDAO.inicioSesion(cedula, contrasenia);

        if (loginExitoso) {
            HttpSession session = request.getSession();
            session.setAttribute("usuarioCedula", cedula);
            response.sendRedirect("users");
        } else {
            request.setAttribute("errorLogin", "Cédula o contraseña incorrecta");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
