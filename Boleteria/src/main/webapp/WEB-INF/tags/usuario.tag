<%@ tag description="Plantilla de las páginas del cliente" pageEncoding="UTF-8" %>
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

    <!-- Barra de navegación -->
    <header class="barra">
        <a class="logo" href="/principal">EL CHAPLIN</a>
        <nav>
            <a href="/principal">Cartelera</a>
            <a href="/estrenos">Estrenos</a>
            <a href="/promociones">Promociones</a>
            <a href="/buscar">Buscar</a>
            <a href="/mi-cuenta">Mi cuenta</a>
            <a href="/login">Salir</a>
        </nav>
    </header>

    <!-- Aquí se inserta el contenido de cada página -->
    <jsp:doBody/>

    <footer class="pie">
        Cine El Chaplin · Contacto: 999 999 999 · Perú
    </footer>

</body>
</html>
