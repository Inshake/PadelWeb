<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de control</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Flaticon Icons -->
    <link rel="stylesheet" href="https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css">

    <!-- Tu hoja de estilos -->
    <link rel="stylesheet" href="../css/panel.css">
</head>
<body>

<div class="panel">
    <%@include file="/WEB-INF/components/headerPanel.jsp"%>

    <div class="titulo">
        <h1 class="tituloGestion">Gestión de usuarios</h1>
    </div>

    <div class="busquedaAgregar">
        <i class="fi fi-rr-search"></i>
        <input type="text" id="buscar" placeholder="Buscar usuario">
        <button class="btn-agregar">Agregar usuario</button>
    </div>

    <div class="listaUser">
        <ul>
            <li>
                <span>Matías Parente</span>
                <div>
                    <button title="Eliminar"><i class="fi fi-rr-trash"></i></button>
                    <button title="Editar"><i class="fi fi-rr-user-pen"></i></button>
                    <button title="Ver"><i class="fi fi-rr-document"></i></button>
                </div>
            </li>
            <li>
                <span>Matías Parente</span>
                <div>
                    <button title="Eliminar"><i class="fi fi-rr-trash"></i></button>
                    <button title="Editar"><i class="fi fi-rr-user-pen"></i></button>
                    <button title="Ver"><i class="fi fi-rr-document"></i></button>
                </div>
            </li>
            <li>
                <span>Matías Parente</span>
                <div>
                    <button title="Eliminar"><i class="fi fi-rr-trash"></i></button>
                    <button title="Editar"><i class="fi fi-rr-user-pen"></i></button>
                    <button title="Ver"><i class="fi fi-rr-document"></i></button>
                </div>
            </li>
            <li>
                <span>Matías Parente</span>
                <div>
                    <button title="Eliminar"><i class="fi fi-rr-trash"></i></button>
                    <button title="Editar"><i class="fi fi-rr-user-pen"></i></button>
                    <button title="Ver"><i class="fi fi-rr-document"></i></button>
                </div>
            </li>
            <li>
                <span>Matías Parente</span>
                <div>
                    <button title="Eliminar"><i class="fi fi-rr-trash"></i></button>
                    <button title="Editar"><i class="fi fi-rr-user-pen"></i></button>
                    <button title="Ver"><i class="fi fi-rr-document"></i></button>
                </div>
            </li>
            <li>
                <span>Matías Parente</span>
                <div>
                    <button title="Eliminar"><i class="fi fi-rr-trash"></i></button>
                    <button title="Editar"><i class="fi fi-rr-user-pen"></i></button>
                    <button title="Ver"><i class="fi fi-rr-document"></i></button>
                </div>
            </li>
        </ul>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
