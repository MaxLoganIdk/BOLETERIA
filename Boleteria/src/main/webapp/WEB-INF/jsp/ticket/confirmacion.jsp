<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Resumen de compra">
    <main class="contenedor">
        <h1 class="centrado">Resumen de compra</h1>
        <div class="grid">
            <div class="tarjeta datos">
                <h3>Tu pedido</h3>
                <p><strong>Película:</strong> Coyote vs Acme</p>
                <p><strong>Horario:</strong> Martes 14:00</p>
                <p><strong>Butacas:</strong> A1, A2</p>
                <p><strong>Entradas:</strong> 2 x S/ 15.00</p>
                <h2 style="margin-top: 1rem;">Total: S/ 30.00</h2>
                <a href="/confiteria">+ Agregar confitería</a>
            </div>
            <div class="tarjeta">
                <h3>Tus datos</h3>
                <label>Nombre <input type="text" placeholder="Juanito"></label>
                <label>Correo electrónico <input type="email" placeholder="abc@correo.com"></label>
                <label>Número de tarjeta <input type="text" placeholder="0000 0000 0000 0000"></label>
                <div class="acciones">
                    <a class="boton primario" href="/ticket">Confirmar compra</a>
                    <a class="boton" href="/sala/1">Cancelar</a>
                </div>
            </div>
        </div>
    </main>
</t:usuario>
