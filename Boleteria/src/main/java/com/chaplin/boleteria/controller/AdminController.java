package com.chaplin.boleteria.controller;

import com.chaplin.boleteria.model.Pelicula;
import com.chaplin.boleteria.service.CarteleraService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/** Pantallas del administrador. Todas las URL empiezan con /admin. */
@Controller
@RequestMapping("/admin")
public class AdminController {

    private final CarteleraService cartelera;

    public AdminController(CarteleraService cartelera) {
        this.cartelera = cartelera;
    }

    @ModelAttribute("peliculas")
    public List<Pelicula> peliculas() {
        return cartelera.listar();
    }

    @GetMapping
    public String panel() { return "admin/panel"; }

    @GetMapping("/peliculas")
    public String verPeliculas() { return "admin/ver-peliculas"; }

    @GetMapping("/peliculas/nueva")
    public String agregarPelicula() { return "admin/agregar-pelicula"; }

    @GetMapping("/funciones/nueva")
    public String agregarFuncion() { return "admin/agregar-funcion"; }

    @GetMapping("/usuarios")
    public String verUsuarios() { return "admin/ver-usuarios"; }

    @GetMapping("/pedidos")
    public String verPedidos() { return "admin/ver-pedidos"; }

    @GetMapping("/reportes")
    public String reportes() { return "admin/reportes"; }

    @GetMapping("/quejas")
    public String verQuejas() { return "admin/ver-quejas"; }
}
