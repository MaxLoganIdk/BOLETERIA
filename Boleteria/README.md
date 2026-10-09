# Boletería El Chaplin

Aplicación web de cine migrada de HTML/CSS a Spring Boot, JSP, JDBC y H2, siguiendo la organización del proyecto `sist-web-springboot`.

## Requisitos y ejecución

- Java 17+
- Maven (o Maven Wrapper incluido)

En Windows, ejecutar `mvnw.cmd spring-boot:run` desde esta carpeta. La aplicación queda disponible en `http://localhost:8087`.

La base H2 se crea en `data/boleteria`. La consola está en `http://localhost:8087/h2-console` con JDBC URL `jdbc:h2:file:./data/boleteria`, usuario `sa` y contraseña vacía.

## Flujo disponible

- Cartelera con los afiches originales, registro e inicio de sesión.
- Consulta de funciones, selección de butacas, control de asientos ocupados y confirmación de pedidos.
- Historial de pedidos del cliente.
- Panel administrador con métricas, registro de películas y programación de funciones; también lista pedidos y consultas.
- Formulario de consultas/sugerencias.

Acceso inicial administrador: `admin@chaplin.pe` / `admin123`.

Los horarios de muestra se generan para el día siguiente al inicializar los datos. No se guardan datos bancarios ni se integra una pasarela de pago; la compra es una reserva confirmada para el alcance de la entrega.
