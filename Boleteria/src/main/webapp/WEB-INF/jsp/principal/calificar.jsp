<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Calificar película">
    <main class="contenedor">
        <div class="tarjeta estrecho">
            <h1>Calificar película</h1>
            <label>Película
                <select>
                    <c:forEach var="p" items="${peliculas}"><option>${p.nombre}</option></c:forEach>
                </select>
            </label>
            <label>Puntuación
                <select><option>5 - Excelente</option><option>4 - Muy buena</option><option>3 - Regular</option><option>2 - Mala</option><option>1 - Muy mala</option></select>
            </label>
            <label>Comentario <textarea></textarea></label>
            <div class="acciones">
                <button class="primario" type="button" onclick="alert('¡Gracias por tu opinión!')">Enviar calificación</button>
                <a class="boton" href="/mi-cuenta">Volver</a>
            </div>
        </div>
    </main>
</t:usuario>
