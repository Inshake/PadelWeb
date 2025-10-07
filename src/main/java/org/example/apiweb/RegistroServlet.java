package org.example.apiweb;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;


import dao.*;
import models.*;

@WebServlet("/registro")
public class RegistroServlet extends HttpServlet {

    private JugadorDAO jugadorDAO;
    private UsuarioDAO usuarioDAO;

    @Override
    public void init() {
        jugadorDAO = new JugadorDAO();
        usuarioDAO = new UsuarioDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("registro.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            request.setCharacterEncoding("UTF-8");

            String cedula = request.getParameter("cedula");
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String correo = request.getParameter("correo");
            String contrasenia = request.getParameter("contrasenia");
            String telefono = request.getParameter("telefono");
            String fechaStr = request.getParameter("fechaNacimiento");
            String categoria = request.getParameter("categoria");
            String genero = request.getParameter("genero");

            if (usuarioDAO.existeUsuario(cedula)) {
                request.setAttribute("errorRegistro", "Ya existe un usuario con esa cédula.");
                request.getRequestDispatcher("/registro.jsp").forward(request, response);
                return;
            }

            Date fechaNacimiento = new SimpleDateFormat("yyyy-MM-dd").parse(fechaStr);

            int incumplePago = 0;
            boolean estaBaneado = false;

            Jugador nuevoJugador = new Jugador(
                    cedula, nombre, apellido, correo, telefono,
                    contrasenia, fechaNacimiento, categoria, genero,
                    incumplePago, estaBaneado
            );

            jugadorDAO.altaJugador(nuevoJugador);

            request.setAttribute("mensajeExito", "Registro exitoso. Ya puedes iniciar sesión.");
            request.getRequestDispatcher("/login.jsp").forward(request, response);

        } catch (Exception e) {
            request.setAttribute("errorRegistro", "Error al registrar jugador: " + e.getMessage());
            request.getRequestDispatcher("/registro.jsp").forward(request, response);
        }
    }
}
