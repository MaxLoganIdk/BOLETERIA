<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:admin titulo="Agregar película">
    <main class="contenedor">
        <div class="tarjeta estrecho">
            <h1>Agregar película</h1>
            <label>Nombre <input type="text" placeholder="Ej: Coyote vs Acme"></label>
            <label>Imagen (nombre del archivo) <input type="text" placeholder="Ej: coyote.jpg"></label>
            <label>Duración <input type="text" placeholder="Ej: 1H 44M"></label>
            <label>Clasificación
                <select><option>Apto para todos</option><option>+14</option><option>+18</option></select>
            </label>
            <label>Sinopsis <textarea placeholder="Breve descripción de la película"></textarea></label>
            <div class="acciones">
                <a class="boton primario" href="/admin">Guardar película</a>
                <a class="boton" href="/admin">Volver</a>
            </div>
        </div>
    </main>
</t:admin>
