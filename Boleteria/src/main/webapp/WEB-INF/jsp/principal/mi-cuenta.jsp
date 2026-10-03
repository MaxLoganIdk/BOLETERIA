<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Mi cuenta">
    <main class="contenedor">
        <h1>Mi cuenta</h1>
        <div class="tarjeta datos">
            <p><strong>Usuario:</strong> Usuario 1</p>
            <p><strong>Correo:</strong> abc@gmail.com</p>
            <div class="acciones">
                <a class="boton" href="/editar-perfil">Editar perfil</a>
                <a class="boton" href="/cancelar-pedido">Cancelar pedido</a>
                <a class="boton" href="/calificar">Calificar película</a>
            </div>
        </div>

        <h2>Mis pedidos</h2>
        <div class="grid">
            <div class="tarjeta datos">
                <h3>Pedido 1</h3>
                <p><strong>Película:</strong> Coyote vs Acme</p>
                <p><strong>Fecha:</strong> Martes 14:00</p>
                <p><strong>Entradas:</strong> 2</p>
            </div>
            <div class="tarjeta datos">
                <h3>Pedido 2</h3>
                <p><strong>Película:</strong> Sonic</p>
                <p><strong>Fecha:</strong> Jueves 17:30</p>
                <p><strong>Entradas:</strong> 1</p>
            </div>
        </div>
    </main>
</t:usuario>
