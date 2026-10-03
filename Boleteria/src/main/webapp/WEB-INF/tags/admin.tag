<%@ tag description="Plantilla de las páginas del administrador" pageEncoding="UTF-8" %>
<%@ attribute name="titulo" required="true" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${titulo} | El Chaplin</title>
    <link rel="stylesheet" href="/css/estilos.css">
</head>
<body>

    <!-- Barra de navegación del administrador -->
    <header class="barra">
        <a class="logo" href="/admin">EL CHAPLIN · ADMIN</a>
        <nav>
            <a href="/admin/peliculas">Películas</a>
            <a href="/admin/usuarios">Usuarios</a>
            <a href="/admin/pedidos">Pedidos</a>
            <a href="/admin/reportes">Reportes</a>
            <a href="/admin/quejas">Quejas</a>
            <a href="/login">Salir</a>
        </nav>
    </header>

    <jsp:doBody/>

</body>
</html>
