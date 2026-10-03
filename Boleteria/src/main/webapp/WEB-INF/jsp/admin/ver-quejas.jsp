<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:admin titulo="Ver quejas">
    <main class="contenedor">
        <h1>Quejas y sugerencias</h1>
        <table>
            <tr><th>Cliente</th><th>Mensaje</th><th>Estado</th><th>Acción</th></tr>
            <tr><td>Juan</td><td>El aire de la sala 2 no funcionaba</td><td>Pendiente</td><td><button type="button">Marcar atendida</button></td></tr>
            <tr><td>Maria</td><td>Excelente atención</td><td>Atendida</td><td><button type="button">Eliminar</button></td></tr>
        </table>
    </main>
</t:admin>
