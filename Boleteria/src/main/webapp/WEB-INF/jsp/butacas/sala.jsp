<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:usuario titulo="Sala ${numero}">
    <main class="contenedor">
        <div class="centrado">
            <h1>Selección de asientos</h1>
            <h3>Sala ${numero}</h3>
        </div>

        <div class="tarjeta">
            <div class="pantalla">PANTALLA</div>

            <!-- Filas A-E, 8 butacas por fila. Las ocupadas vienen del controlador -->
            <c:forEach var="fila" items="A,B,C,D,E">
                <div class="fila">
                    <c:forEach var="n" begin="1" end="8">
                        <c:set var="codigo" value="${fila}${n}"/>
                        <label class="asiento">
                            <input type="checkbox" ${ocupadas.contains(codigo) ? 'disabled' : ''}>
                            <span>${codigo}</span>
                        </label>
                    </c:forEach>
                </div>
            </c:forEach>

            <p class="centrado">
                <span class="cuadro"></span>Libre
                <span class="cuadro sel"></span>Elegido
                <span class="cuadro ocu"></span>Ocupado
            </p>
        </div>

        <div class="centrado">
            <a class="boton primario" href="/confirmacion">Continuar con la compra</a>
            <a class="boton" href="/asientos">Volver</a>
        </div>
    </main>
</t:usuario>
