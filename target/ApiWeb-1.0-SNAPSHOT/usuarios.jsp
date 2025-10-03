<%@ page import="java.util.List" %>

<%
    List<String> nombres = (List<String>) request.getAttribute("listaJugadores");
%>

<h1>Lista de Jugadores</h1>
<ul>
    <% if (nombres != null) {
        for (String nombre : nombres) { %>
    <li><%= nombre %></li>
    <%  }
    } else { %>
    <li>No hay jugadores disponibles.</li>
    <% } %>
</ul>