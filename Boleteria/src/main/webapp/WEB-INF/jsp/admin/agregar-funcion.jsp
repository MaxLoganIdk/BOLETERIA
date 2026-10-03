<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:admin titulo="Agregar función">
    <main class="contenedor">
        <div class="tarjeta estrecho">
            <h1>Agregar función</h1>
            <label>Película
                <select>
                    <c:forEach var="p" items="${peliculas}"><option>${p.nombre}</option></c:forEach>
                </select>
            </label>
            <label>Día
                <select><option>Lunes</option><option>Martes</option><option>Miércoles</option><option>Jueves</option><option>Viernes</option><option>Sábado</option><option>Domingo</option></select>
            </label>
            <label>Horario <input type="time"></label>
            <label>Sala <select><option>Sala 1</option><option>Sala 2</option><option>Sala 3</option></select></label>
            <label>Precio por entrada (S/) <input type="text" placeholder="Ej: 15.00"></label>
            <div class="acciones">
                <a class="boton primario" href="/admin">Guardar función</a>
                <a class="boton" href="/admin">Volver</a>
            </div>
        </div>
    </main>
</t:admin>
