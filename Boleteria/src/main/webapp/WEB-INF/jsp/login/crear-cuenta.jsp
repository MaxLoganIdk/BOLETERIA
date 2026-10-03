<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:login titulo="Crear cuenta">
    <main class="tarjeta estrecho centrado">
        <h1>Crear cuenta</h1>
        <p>Regístrate para comprar tus entradas</p>
        <label>Usuario <input type="text"></label>
        <label>Correo <input type="email"></label>
        <label>Contraseña <input type="password"></label>
        <label>Confirmar contraseña <input type="password"></label>
        <a class="boton primario completo" href="/login">Registrarse</a>
        <p><br><a href="/login">Volver al login</a></p>
    </main>
</t:login>
