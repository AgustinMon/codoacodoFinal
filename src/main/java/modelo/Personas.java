/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Agustin
 */
public class Personas {
    private Integer id;
    private String nombre;
    private String apellido;
    private String email;
    private String anyo;
    private String carrera;
    private String telefono;
    
    //no es publica, esta dentro del ambito de su paquete
    Personas(int id, String nombre, String apellido, String email, String anyo, String carrera, String telefono){
        this.id = id;
        this.apellido = apellido;
        this.nombre = nombre;
        this.email = email;
        this.anyo = anyo;
        this.carrera = carrera;
        this.telefono = telefono;
    }
    
    // publica para instanciar desde el controlador
    public Personas(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAnyo() {
        return anyo;
    }

    public void setAnyo(String anyo) {
        this.anyo = anyo;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
   
    
}
