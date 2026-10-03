<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:login titulo="Entrar">
    <main class="tarjeta estrecho centrado">
        <h1>El Chaplin</h1>
        <p>Bienvenido al sistema de boletería</p>
        <label>Usuario <input type="text"></label>
        <label>Contraseña <input type="password"></label>
        <a class="boton primario completo" href="/principal">Ingresar</a>
        <p><br><a href="/recuperar">¿Olvidó su contraseña?</a></p>
        <p>¿No tiene cuenta? <a href="/crear-cuenta">Crear cuenta</a></p>
        <p><a href="/admin">Acceso administrador</a></p>
    </main>
</t:login>
