<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Cancelar pedido">
    <main class="contenedor">
        <h1>Cancelar pedido</h1>
        <p>Solo puedes cancelar hasta 2 horas antes de la función.</p>
        <table>
            <tr><th>Pedido</th><th>Película</th><th>Horario</th><th>Entradas</th><th>Acción</th></tr>
            <tr><td>1</td><td>Coyote vs Acme</td><td>Martes 14:00</td><td>2</td>
                <td><button type="button" onclick="if(confirm('¿Cancelar el pedido 1?')) alert('Pedido cancelado')">Cancelar</button></td></tr>
            <tr><td>2</td><td>Sonic</td><td>Jueves 17:30</td><td>1</td>
                <td><button type="button" onclick="if(confirm('¿Cancelar el pedido 2?')) alert('Pedido cancelado')">Cancelar</button></td></tr>
        </table>
        <div class="acciones"><a class="boton" href="/mi-cuenta">Volver a mi cuenta</a></div>
    </main>
</t:usuario>
