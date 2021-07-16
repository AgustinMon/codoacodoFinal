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
public class Alumnos {
    private Integer id;
    private String nombre;
    private String apellido;
    private String email;
    
    //no es publica, esta dentro del ambito de su paquete
    Alumnos(int id, String nombre, String apellido, String email){
        this.id = id;
        this.apellido = apellido;
        this.nombre = nombre;
        this.email = email;
    }
    
    // publica para instanciar desde el controlador
    public Alumnos(){
        
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
   
}
