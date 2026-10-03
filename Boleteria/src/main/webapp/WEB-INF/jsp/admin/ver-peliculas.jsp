<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:admin titulo="Ver películas">
    <main class="contenedor">
        <h1>Películas registradas</h1>
        <table>
            <tr><th>Película</th><th>Duración</th><th>Clasificación</th><th>Acciones</th></tr>
            <c:forEach var="p" items="${peliculas}">
                <tr><td>${p.nombre}</td><td>${p.duracion}</td><td>${p.clasificacion}</td>
                    <td><button type="button">Editar</button> <button type="button">Eliminar</button></td></tr>
            </c:forEach>
        </table>
        <div class="acciones"><a class="boton primario" href="/admin/peliculas/nueva">Agregar nueva película</a></div>
    </main>
</t:admin>
