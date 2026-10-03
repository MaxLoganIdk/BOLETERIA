package com.chaplin.boleteria.controller;

import com.chaplin.boleteria.model.Pelicula;
import com.chaplin.boleteria.service.CarteleraService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;
import java.util.Map;

/**
 * Pantallas del cliente. Cada método responde a una URL y devuelve
 * el nombre del JSP que se debe mostrar (carpeta/archivo, sin ".jsp").
 */
@Controller
public class UsuarioController {

    private final CarteleraService cartelera;

    public UsuarioController(CarteleraService cartelera) {
        this.cartelera = cartelera;
    }

    // Esta lista queda disponible en TODOS los JSP de este controlador como ${peliculas}
    @ModelAttribute("peliculas")
    public List<Pelicula> peliculas() {
        return cartelera.listar();
    }

    // ---------- Login ----------
    @GetMapping("/")
    public String inicio() { return "redirect:/login"; }

    @GetMapping("/login")
    public String login() { return "login/login"; }

    @GetMapping("/crear-cuenta")
    public String crearCuenta() { return "login/crear-cuenta"; }

    @GetMapping("/recuperar")
    public String recuperar() { return "login/recuperar"; }

    // ---------- Principal ----------
    @GetMapping("/principal")
    public String principal() { return "principal/principal"; }

    @GetMapping("/buscar")
    public String buscar() { return "principal/buscar"; }

    @GetMapping("/estrenos")
    public String estrenos() { return "principal/estrenos"; }

    @GetMapping("/promociones")
    public String promociones() { return "principal/promociones"; }

    @GetMapping("/consultas")
    public String consultas() { return "principal/consultas"; }

    @GetMapping("/mi-cuenta")
    public String miCuenta() { return "principal/mi-cuenta"; }

    @GetMapping("/editar-perfil")
    public String editarPerfil() { return "principal/editar-perfil"; }

    @GetMapping("/cancelar-pedido")
    public String cancelarPedido() { return "principal/cancelar-pedido"; }

    @GetMapping("/calificar")
    public String calificar() { return "principal/calificar"; }

    // ---------- Funciones: una sola pantalla para las 3 películas (/funcion/1, /funcion/2...) ----------
    @GetMapping("/funcion/{id}")
    public String funcion(@PathVariable int id, Model model) {
        model.addAttribute("pelicula", cartelera.buscar(id));
        model.addAttribute("horarios", cartelera.horarios());
        return "funciones/funcion";
    }

    // ---------- Butacas ----------
    @GetMapping("/asientos")
    public String asientos() { return "butacas/seleccion"; }

    // Una sola pantalla para las 3 salas (/sala/1, /sala/2, /sala/3)
    @GetMapping("/sala/{numero}")
    public String sala(@PathVariable int numero, Model model) {
        Map<Integer, List<String>> ocupadas = Map.of(
                1, List.of("A3", "C5"),
                2, List.of("B2", "B3"),
                3, List.of("D4"));
        model.addAttribute("numero", numero);
        model.addAttribute("ocupadas", ocupadas.getOrDefault(numero, List.of()));
        return "butacas/sala";
    }

    // ---------- Compra y boleto ----------
    @GetMapping("/confirmacion")
    public String confirmacion() { return "ticket/confirmacion"; }

    @GetMapping("/confiteria")
    public String confiteria() { return "ticket/confiteria"; }

    @GetMapping("/ticket")
    public String ticket() { return "ticket/ticket"; }
}
