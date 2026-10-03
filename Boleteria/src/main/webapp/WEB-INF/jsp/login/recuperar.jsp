<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:login titulo="Recuperar contraseña">
    <main class="tarjeta estrecho centrado">
        <h1>Recuperar contraseña</h1>
        <p>Ingresa tu correo y te enviaremos un enlace para crear una nueva contraseña.</p>
        <label>Correo registrado <input type="email" placeholder="abc@gmail.com"></label>
        <button class="primario completo" type="button" onclick="alert('Te enviamos un enlace a tu correo')">Enviar enlace</button>
        <p><br><a href="/login">Volver al login</a></p>
    </main>
</t:login>
