<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:admin titulo="Reportes de ventas">
    <main class="contenedor">
        <h1>Reportes de ventas</h1>
        <table>
            <tr><th>Película</th><th>Entradas vendidas</th><th>Ingresos</th></tr>
            <tr><td>Coyote vs Acme</td><td>120</td><td>S/ 1800.00</td></tr>
            <tr><td>Avengers: Doomsday</td><td>210</td><td>S/ 3150.00</td></tr>
            <tr><td>Resident Evil</td><td>95</td><td>S/ 1425.00</td></tr>
            <tr><th>Total</th><th>425</th><th>S/ 6375.00</th></tr>
        </table>
        <div class="acciones"><button class="primario" type="button" onclick="window.print()">Imprimir reporte</button></div>
    </main>
</t:admin>
