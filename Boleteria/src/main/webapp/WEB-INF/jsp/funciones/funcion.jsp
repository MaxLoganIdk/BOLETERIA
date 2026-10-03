<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="${pelicula.nombre}">
    <main class="contenedor">
        <a href="/principal">&larr; Volver a la cartelera</a>

        <!-- Datos de la película (los envía el controlador) -->
        <div class="detalle">
            <img src="/imagenes/${pelicula.imagen}" alt="Poster de ${pelicula.nombre}">
            <div>
                <h1>${pelicula.nombre}</h1>
                <p><span class="etiqueta">2D</span><span class="etiqueta">${pelicula.duracion}</span><span class="etiqueta">${pelicula.clasificacion}</span></p>
                <h3>Sinopsis</h3>
                <p>${pelicula.sinopsis}</p>
                <a class="boton primario" href="${pelicula.trailer}" target="_blank">Ver tráiler</a>
            </div>
        </div>

        <!-- Horarios: al elegir uno se pasa a la selección de asientos -->
        <h2 style="margin-top: 2rem;">Horarios disponibles</h2>
        <div class="tarjeta">
            <c:forEach var="dia" items="${horarios}">
                <div class="dia">
                    <h3>${dia.key}</h3>
                    <c:forEach var="hora" items="${dia.value}">
                        <a class="boton" href="/asientos">${hora}</a>
                    </c:forEach>
                </div>
            </c:forEach>
        </div>
    </main>
</t:usuario>
