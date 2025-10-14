<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Inicio - PadelManager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet"
          href="https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css">
</head>
<body>

<%@include file="/WEB-INF/components/header.jsp"%>

<main class="hero text-center py-5">
    <div class="hero-content container">
        <h2 class="tituloPrincipal mb-3">Bienvenido</h2>
        <p class="lead mb-4">
            Gestiona usuarios, canchas y más desde un solo lugar.<br>
            Rápido, moderno y fácil de usar.
        </p>
        <a href="login.jsp" class="btn btn-primary btn-lg">Comenzar</a>
    </div>
</main>

<section class="links container my-5 d-flex justify-content-center gap-4 flex-wrap">
    <div class="link-card card p-4 text-center shadow-sm" style="width: 18rem;">
        <i class="fi fi-rr-user fs-1 mb-3"></i>
        <h3>Usuarios</h3>
        <p>Administra tus usuarios, modifica y gestiona sus datos fácilmente.</p>
        <a href="<%= request.getContextPath() %>/users" class="btn btn-outline-primary mt-2">Ir al panel</a>


    </div>

    <div class="link-card card p-4 text-center shadow-sm" style="width: 18rem;">
        <i class="fi fi-rr-basketball fs-1 mb-3"></i>
        <h3>Canchas</h3>
        <p>Consulta y organiza la disponibilidad de canchas.</p>
        <a href="<%= request.getContextPath() %>/cancha" class="btn btn-outline-primary mt-2">Ir al panel</a>
    </div>
</section>

<%@include file="/WEB-INF/components/footer.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-czL6JuqcKJfSTNn2tPbdm1cA4y3Z7rU2q2GVxPzrcTtGkh3qHuvZ4z5gDMSlB/xK"
        crossorigin="anonymous"></script>

</body>
</html>
