<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Libro de reclamaciones">
    <main class="contenedor">
        <div class="tarjeta estrecho">
            <h1>Libro de reclamaciones</h1>
            <p>Cine "El Chaplin" · Contacto: 999 999 999, Perú.<br>Tu opinión nos ayuda a mejorar el servicio.</p>
            <label>Nombre completo <input type="text"></label>
            <label>Queja o sugerencia <textarea></textarea></label>
            <div class="acciones">
                <button class="primario" type="button" onclick="alert('Hemos recibido tu mensaje')">Enviar</button>
                <a class="boton" href="/principal">Volver</a>
            </div>
        </div>
    </main>
</t:usuario>
