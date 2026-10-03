<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Editar perfil">
    <main class="contenedor">
        <div class="tarjeta estrecho">
            <h1>Editar perfil</h1>
            <label>Usuario <input type="text" value="Usuario 1"></label>
            <label>Correo <input type="email" value="abc@gmail.com"></label>
            <label>Nueva contraseña <input type="password"></label>
            <label>Confirmar nueva contraseña <input type="password"></label>
            <div class="acciones">
                <button class="primario" type="button" onclick="alert('Datos actualizados')">Guardar cambios</button>
                <a class="boton" href="/mi-cuenta">Volver</a>
            </div>
        </div>
    </main>
</t:usuario>
