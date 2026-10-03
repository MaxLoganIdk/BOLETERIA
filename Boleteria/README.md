# Boletería "El Chaplin" (Spring Boot + JSP)

## Cómo abrirlo en IntelliJ IDEA
1. `File > Open` y elige la carpeta **Boleteria** (la que contiene `pom.xml`). Espera a que Maven descargue las dependencias.
2. Verifica que el proyecto use **JDK 17 o superior** (`File > Project Structure > Project`).
3. Abre `BoleteriaApplication.java` y pulsa el triángulo verde junto a `main`.
4. Entra a **http://localhost:8080** en el navegador.

## Estructura
```
src/main
├── java/com/chaplin/boleteria
│   ├── BoleteriaApplication.java      -> arranca el proyecto
│   ├── model/Pelicula.java            -> datos de una película
│   ├── service/CarteleraService.java  -> lista de películas y horarios (en memoria)
│   └── controller/
│       ├── UsuarioController.java     -> URLs del cliente
│       └── AdminController.java       -> URLs del administrador (/admin/...)
├── resources
│   ├── application.properties         -> configuración (carpeta de los JSP)
│   └── static/                        -> css/ e imagenes/
└── webapp/WEB-INF
    ├── tags/                          -> plantillas: usuario.tag, admin.tag, login.tag
    └── jsp/                           -> las pantallas (login, principal, funciones, butacas, ticket, admin)
```

## Cómo funciona (en 3 pasos)
1. El navegador pide una URL, por ejemplo `/funcion/2`.
2. El **controlador** que tiene ese `@GetMapping` prepara los datos (`model.addAttribute`) y devuelve el nombre del JSP.
3. El **JSP** dibuja la página con esos datos usando `${...}` y `<c:forEach>`.

## URLs
| Cliente | | Administrador | |
|---|---|---|---|
| `/login` | Iniciar sesión | `/admin` | Panel |
| `/crear-cuenta`, `/recuperar` | Registro / recuperar | `/admin/peliculas` | Ver películas |
| `/principal` | Cartelera | `/admin/peliculas/nueva` | Agregar película |
| `/funcion/{id}` | Detalle y horarios | `/admin/funciones/nueva` | Agregar función |
| `/asientos`, `/sala/{n}` | Elegir asientos | `/admin/usuarios` | Usuarios |
| `/confirmacion`, `/confiteria`, `/ticket` | Compra y boleto | `/admin/pedidos` | Pedidos |
| `/buscar`, `/estrenos`, `/promociones` | Consultas de cartelera | `/admin/reportes` | Reportes |
| `/mi-cuenta`, `/editar-perfil`, `/cancelar-pedido`, `/calificar`, `/consultas` | Cuenta del usuario | `/admin/quejas` | Quejas |
