<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Buscar película">
    <main class="contenedor">
        <h1>Buscar película</h1>
        <div class="tarjeta">
            <label>Nombre <input type="text" id="q" placeholder="Escribe el nombre..." oninput="filtrar()"></label>
            <label>Clasificación
                <select id="c" onchange="filtrar()">
                    <option value="">Todas</option>
                    <option>Apto para todos</option><option>+14</option><option>+18</option>
                </select>
            </label>
        </div>
        <table id="t">
            <tr><th>Película</th><th>Duración</th><th>Clasificación</th><th></th></tr>
            <c:forEach var="p" items="${peliculas}">
                <tr><td>${p.nombre}</td><td>${p.duracion}</td><td>${p.clasificacion}</td>
                    <td><a href="/funcion/${p.id}">Ver funciones</a></td></tr>
            </c:forEach>
        </table>
    </main>

    <script>
        // Muestra solo las filas que coinciden con el nombre y la clasificación elegidos
        function filtrar() {
            var q = document.getElementById('q').value.toLowerCase();
            var c = document.getElementById('c').value;
            var filas = document.querySelectorAll('#t tr');
            for (var i = 1; i < filas.length; i++) {
                var ok = filas[i].cells[0].innerText.toLowerCase().includes(q) &&
                         (c === '' || filas[i].cells[2].innerText === c);
                filas[i].style.display = ok ? '' : 'none';
            }
        }
    </script>
</t:usuario>
