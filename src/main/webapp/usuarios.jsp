<%@ page import="java.util.List" %>

<%
    List<String> nombres = (List<String>) request.getAttribute("listaJugadores");
%>

<h1>Lista de Jugadores</h1>

<form action="<%= request.getContextPath() %>/logout" method="get">
    <button type="submit">Cerrar sesión</button>
</form>


<ul>
    <% if (nombres != null) {
        for (String nombre : nombres) { %>
    <li><%= nombre %></li>
    <%  }
    } else { %>
    <li>No hay jugadores disponibles.</li>
    <% } %>
</ul>
