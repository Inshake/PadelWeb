<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Inicio Usuario - PadelManager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet"
          href="https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css">
</head>
<body>

<%@include file="/WEB-INF/components/headerUsuario.jsp"%>

<main class="hero text-center py-5">
    <div class="hero-content container">
        <h2 class="tituloPrincipal mb-3">¡Bienvenido jugador!</h2>
        <p class="lead mb-4">
            Consulta tus reservas, estadísticas personales y próximos torneos.
        </p>
    </div>
</main>

<section class="links container my-5 d-flex justify-content-center gap-4 flex-wrap">
    <div class="link-card card p-4 text-center shadow-sm" style="width: 18rem;">
        <i class="fi fi-rr-basketball fs-1 mb-3"></i>
        <h3>Tus Reservas</h3>
        <p>Visualiza y gestiona tus reservas activas y pasadas.</p>
        <a href="reservasUsuario.jsp" class="btn btn-outline-primary mt-2">Ver reservas</a>
    </div>

    <div class="link-card card p-4 text-center shadow-sm" style="width: 18rem;">
        <i class="fi fi-rr-chart-histogram fs-1 mb-3"></i>
        <h3>Estadísticas</h3>
        <p>Consulta tu rendimiento, partidos jugados y evolución general.</p>
        <a href="estadisticasUsuario.jsp" class="btn btn-outline-primary mt-2">Ver estadísticas</a>
    </div>
</section>

<section class="container my-5">
    <h3 class="text-center mb-4">Noticias y Novedades</h3>
    <div class="row justify-content-center">
        <div class="col-md-4 mb-3">
            <div class="card p-3 shadow-sm h-100">
                <h5>Torneo Primavera 2025</h5>
                <p>¡Inscríbete al nuevo torneo local y demuestra tu nivel!</p>
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <div class="card p-3 shadow-sm h-100">
                <h5>Mejora tu juego</h5>
                <p>Consejos de entrenamiento y táctica cada semana en nuestro blog.</p>
            </div>
        </div>
    </div>
</section>

<%@include file="/WEB-INF/components/footer.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-czL6JuqcKJfSTNn2tPbdm1cA4y3Z7rU2q2GVxPzrcTtGkh3qHuvZ4z5gDMSlB/xK"
        crossorigin="anonymous"></script>

</body>
</html>
