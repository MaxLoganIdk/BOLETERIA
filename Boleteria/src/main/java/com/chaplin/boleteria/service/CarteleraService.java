package com.chaplin.boleteria.service;

import com.chaplin.boleteria.model.Pelicula;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/** Guarda los datos del cine en memoria (sin base de datos). */
@Service
public class CarteleraService {

    private final List<Pelicula> peliculas = List.of(
        new Pelicula(1, "Coyote vs Acme", "coyote.jpg", "1H 44M", "Apto para todos",
            "Wile E. Coyote, cansado de que los productos defectuosos de la corporación ACME arruinen sus intentos de atrapar al Correcaminos, decide contratar a un abogado humano para demandar a la compañía.",
            "https://youtu.be/r04foVl1eCU"),
        new Pelicula(2, "Avengers: Doomsday", "doom.jpg", "2H 45M", "+14",
            "Los universos colisionan y la Saga del Multiverso llega a su capítulo final, enfrentando a héroes de tres realidades a una amenaza existencial sin precedentes.",
            "https://youtu.be/lAr_uspgHm8"),
        new Pelicula(3, "Resident Evil", "Resident.png", "1H 35M", "+18",
            "Una reinvención total del universo de terror y supervivencia de Capcom. Bryan, un mensajero médico, queda atrapado en medio de un brote terrorífico en Raccoon City y debe sobrevivir en una carrera frenética y sin tregua.",
            "https://youtu.be/8iKTeIV2xgE")
    );

    public List<Pelicula> listar() {
        return peliculas;
    }

    public Pelicula buscar(int id) {
        return peliculas.stream()
                .filter(p -> p.getId() == id)
                .findFirst()
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Película no encontrada"));
    }

    /** Día -> horarios disponibles (son los mismos para todas las películas). */
    public Map<String, List<String>> horarios() {
        Map<String, List<String>> dias = new LinkedHashMap<>();
        dias.put("Lunes 1 septiembre", List.of("14:00", "17:30"));
        dias.put("Martes 2 septiembre", List.of("14:00", "20:00"));
        dias.put("Miércoles 3 septiembre", List.of("17:30", "20:00"));
        dias.put("Jueves 4 septiembre", List.of("14:00", "17:30"));
        dias.put("Viernes 5 septiembre", List.of("14:00", "20:00"));
        dias.put("Sábado 6 septiembre", List.of("14:00", "20:00"));
        dias.put("Domingo 7 septiembre", List.of("17:30", "20:00"));
        return dias;
    }
}
