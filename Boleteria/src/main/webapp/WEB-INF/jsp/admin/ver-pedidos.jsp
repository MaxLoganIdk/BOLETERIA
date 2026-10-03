<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:admin titulo="Ver pedidos">
    <main class="contenedor">
        <h1>Todos los pedidos</h1>
        <table>
            <tr><th>Orden</th><th>Usuario</th><th>Película</th><th>Horario</th><th>Entradas</th><th>Total</th></tr>
            <tr><td>000123</td><td>Juanz</td><td>Coyote vs Acme</td><td>Martes 14:00</td><td>2</td><td>S/ 30.00</td></tr>
            <tr><td>000124</td><td>Mariaa</td><td>Avengers: Doomsday</td><td>Jueves 17:30</td><td>1</td><td>S/ 15.00</td></tr>
            <tr><td>000125</td><td>Carlitoss</td><td>Resident Evil</td><td>Viernes 20:00</td><td>3</td><td>S/ 45.00</td></tr>
        </table>
    </main>
</t:admin>
