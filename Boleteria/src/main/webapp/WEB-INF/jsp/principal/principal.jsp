<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Cartelera">
    <!-- Banner de publicidad -->
    <section class="banner">
        <img src="/imagenes/publicidad.png" alt="Sala de cine">
        <div>
            <h1>Bienvenido a El Chaplin</h1>
            <p>Elige tu película, tu horario y tus butacas en pocos pasos.</p>
            <a class="boton primario" href="#cartelera">Ver cartelera</a>
        </div>
    </section>

    <main class="contenedor">
        <h2 id="cartelera" class="centrado">Cartelera</h2>

        <!-- Se repite una tarjeta por cada película que envía el controlador -->
        <div class="grid">
            <c:forEach var="p" items="${peliculas}">
                <div class="tarjeta pelicula">
                    <img src="/imagenes/${p.imagen}" alt="Poster de ${p.nombre}">
                    <h3>${p.nombre}</h3>
                    <p>${p.duracion} · ${p.clasificacion}</p>
                    <a class="boton primario" href="/funcion/${p.id}">Ver funciones</a>
                </div>
            </c:forEach>
        </div>

        <!-- Libro de reclamaciones -->
        <section class="tarjeta aviso centrado">
            <h2>Consultas</h2>
            <p>¿Tienes alguna queja o sugerencia? Cuéntanos.</p>
            <a class="boton" href="/consultas">Libro de reclamaciones</a>
        </section>
    </main>
</t:usuario>
