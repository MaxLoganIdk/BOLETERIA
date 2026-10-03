package com.chaplin.boleteria.model;

/** Una película de la cartelera. Los JSP leen sus datos con ${p.nombre}, ${p.duracion}, etc. */
public class Pelicula {

    private final int id;
    private final String nombre;
    private final String imagen;
    private final String duracion;
    private final String clasificacion;
    private final String sinopsis;
    private final String trailer;

    public Pelicula(int id, String nombre, String imagen, String duracion,
                    String clasificacion, String sinopsis, String trailer) {
        this.id = id;
        this.nombre = nombre;
        this.imagen = imagen;
        this.duracion = duracion;
        this.clasificacion = clasificacion;
        this.sinopsis = sinopsis;
        this.trailer = trailer;
    }

    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public String getImagen() { return imagen; }
    public String getDuracion() { return duracion; }
    public String getClasificacion() { return clasificacion; }
    public String getSinopsis() { return sinopsis; }
    public String getTrailer() { return trailer; }
}
