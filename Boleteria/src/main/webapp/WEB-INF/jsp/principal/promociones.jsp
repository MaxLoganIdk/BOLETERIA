<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Promociones">
    <main class="contenedor">
        <h1>Promociones</h1>
        <div class="grid">
            <div class="tarjeta centrado"><h2>Martes</h2><p>2x1 en entradas</p></div>
            <div class="tarjeta centrado"><h2>Estudiantes</h2><p>20% de descuento</p></div>
            <div class="tarjeta centrado"><h2>Combo pareja</h2><p>15% de descuento</p></div>
        </div>

        <div class="tarjeta estrecho">
            <h3>¿Tienes un cupón?</h3>
            <label><input type="text" id="cupon" placeholder="Ej: CINE20"></label>
            <button class="primario" type="button" onclick="aplicar()">Aplicar</button>
            <p id="msg"></p>
        </div>
    </main>

    <script>
        function aplicar() {
            var c = document.getElementById('cupon').value.toUpperCase();
            document.getElementById('msg').innerText =
                c === 'CINE20' ? 'Cupón válido: 20% de descuento' : 'Cupón no válido';
        }
    </script>
</t:usuario>
