<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Confitería">
    <main class="contenedor">
        <h1>Confitería</h1>
        <p>Agrega combos a tu compra:</p>
        <table>
            <tr><th>Producto</th><th>Precio</th><th>Cantidad</th></tr>
            <tr><td>Canchita grande</td><td>S/ 12.00</td><td><input type="number" min="0" value="0" data-p="12" oninput="calc()"></td></tr>
            <tr><td>Gaseosa mediana</td><td>S/ 8.00</td><td><input type="number" min="0" value="0" data-p="8" oninput="calc()"></td></tr>
            <tr><td>Combo pareja</td><td>S/ 25.00</td><td><input type="number" min="0" value="0" data-p="25" oninput="calc()"></td></tr>
        </table>
        <h2 style="margin-top: 1.5rem;">Total confitería: S/ <span id="tot">0.00</span></h2>
        <div class="acciones">
            <a class="boton primario" href="/confirmacion">Agregar a mi compra</a>
            <a class="boton" href="/confirmacion">Volver al resumen</a>
        </div>
    </main>

    <script>
        // Suma precio x cantidad de cada producto
        function calc() {
            var total = 0;
            document.querySelectorAll('input[data-p]').forEach(function (i) {
                total += i.dataset.p * i.value;
            });
            document.getElementById('tot').innerText = total.toFixed(2);
        }
    </script>
</t:usuario>
