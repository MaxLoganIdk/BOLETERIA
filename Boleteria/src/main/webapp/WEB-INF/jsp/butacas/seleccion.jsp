<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Elegir asientos">
    <main class="contenedor">
        <div class="tarjeta estrecho">
            <h1>Elegir asientos</h1>
            <h3>Coyote vs Acme · Martes 14:00</h3>
            <p>Precio por entrada: S/ 15.00</p>
            <label>¿Cuántos asientos quieres reservar?
                <select>
                    <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
                </select>
            </label>
            <div class="acciones">
                <a class="boton primario" href="/sala/1">Continuar</a>
                <a class="boton" href="/principal">Cancelar</a>
            </div>
        </div>
    </main>
</t:usuario>
