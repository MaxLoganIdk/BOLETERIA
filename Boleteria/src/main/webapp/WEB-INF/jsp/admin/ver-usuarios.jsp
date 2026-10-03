<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:admin titulo="Ver usuarios">
    <main class="contenedor">
        <h1>Usuarios registrados</h1>
        <table>
            <tr><th>Usuario</th><th>Correo</th><th>Acciones</th></tr>
            <tr><td>Juan</td><td>juan@gmail.com</td><td><button type="button">Ver pedidos</button> <button type="button">Eliminar</button></td></tr>
            <tr><td>Maria</td><td>maria@gmail.com</td><td><button type="button">Ver pedidos</button> <button type="button">Eliminar</button></td></tr>
            <tr><td>Carmen</td><td>carmen@gmail.com</td><td><button type="button">Ver pedidos</button> <button type="button">Eliminar</button></td></tr>
        </table>
    </main>
</t:admin>
