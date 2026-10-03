<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:admin titulo="Panel de administrador">
    <main class="contenedor">
        <h1>Panel de administrador</h1>
        <p>Bienvenido, administrador.</p>
        <div class="grid">
            <div class="tarjeta">
                <h3>Películas y funciones</h3>
                <div class="acciones">
                    <a class="boton" href="/admin/peliculas/nueva">Agregar película</a>
                    <a class="boton" href="/admin/funciones/nueva">Agregar función</a>
                    <a class="boton" href="/admin/peliculas">Ver películas</a>
                </div>
            </div>
            <div class="tarjeta">
                <h3>Usuarios y pedidos</h3>
                <div class="acciones">
                    <a class="boton" href="/admin/usuarios">Ver usuarios</a>
                    <a class="boton" href="/admin/pedidos">Ver pedidos</a>
                </div>
            </div>
            <div class="tarjeta">
                <h3>Reportes y quejas</h3>
                <div class="acciones">
                    <a class="boton" href="/admin/reportes">Reportes de ventas</a>
                    <a class="boton" href="/admin/quejas">Ver quejas</a>
                </div>
            </div>
        </div>
    </main>
</t:admin>
