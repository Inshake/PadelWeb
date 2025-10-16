/*package org.example.apiweb;
import dao.ReservaDAO;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
@WebServlet("/inicioUsuario")
public class inicioUsuarioServlet extends HttpServlet {
    private ReservaDAO reservaDAO;

    @Override
    public void init() {
        reservaDAO = new ReservaDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession sesion = request.getSession(false);

        if (sesion == null || sesion.getAttribute("cedula") == null) {
            response.sendRedirect("login");
            return;
        }

        String cedulaUsuario = (String) sesion.getAttribute("cedula");

        int reservasActivas = reservaDAO.contarReservasActivasPorCedula(cedulaUsuario);

        request.setAttribute("reservasActivas", reservasActivas);
        request.getRequestDispatcher("/inicioUsuario.jsp").forward(request, response);
    }
}*/
