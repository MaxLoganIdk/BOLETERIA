<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Boleto">
    <main class="contenedor">
        <h1 class="centrado">Tu boleto</h1>
        <div class="ticket datos">
            <h2>Coyote vs Acme</h2>
            <p><strong>Fecha:</strong> Martes</p>
            <p><strong>Horario:</strong> 14:00</p>
            <p><strong>Sala:</strong> 1</p>
            <p><strong>Butacas:</strong> A1, A2</p>
            <p><strong>Entradas:</strong> 2</p>
            <p><strong>Total pagado:</strong> S/ 30.00</p>
            <p><strong>N° de orden:</strong> 000123</p>
        </div>
        <p class="centrado">Presenta este boleto en la entrada del cine.</p>
        <p class="centrado"><a class="boton primario" href="/principal">Volver a principal</a></p>
    </main>
</t:usuario>
