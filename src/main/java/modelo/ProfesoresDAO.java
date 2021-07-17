/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Profesores;

/**
 *
 * @author Agustin
 */
public class ProfesoresDAO {

    Connection c;

    public ProfesoresDAO() {
        Conexion conn = new Conexion();
        c = conn.getConnection();
    }

    public List<Profesores> listarProfesores() {
        PreparedStatement ps;
        ResultSet rs;
        List<Profesores> lista = new ArrayList<>();
        try{
            ps = c.prepareStatement("SELECT * FROM codoacodo.profesores");
            rs = ps.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String email = rs.getString("email");
                String anyo = rs.getString("anyo");
                String carrera = rs.getString("carrera");
                String telefono = rs.getString("telefono");                 
                Profesores a = new Profesores(id, nombre, apellido, email, anyo, carrera, telefono);
                lista.add(a);
            }
            return lista;
        }
        catch (Exception e){
            System.out.println(e.toString());
            return null;
        }
    }
    
    public Profesores mostrarProfesor(int _id){
        PreparedStatement ps;
        ResultSet rs;
        Profesores profesor = null;
        
        try{
            ps = c.prepareStatement("SELECT * FROM profesores WHERE id = ?");
            ps.setInt(1, _id);
            rs = ps.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String email = rs.getString("email");
                String anyo = rs.getString("anyo");
                String carrera = rs.getString("carrera");
                String telefono = rs.getString("telefono");                 
                profesor = new Profesores(id, nombre, apellido, email, anyo, carrera, telefono);
            }
            return profesor;
        }
        catch (Exception e){
            System.out.println(e.toString());
            return null;
        }
    }
    
    public boolean insertarProfesor(Alumnos alumno){
        PreparedStatement ps;
        Boolean b = false;
     
        try{
            ps = c.prepareStatement("INSERT INTO profesores (id, nombre, apellido, email, carrera, anyo, telefono)"
                    + " VALUES (NULL,?,?,?,?,?,?);");
            ps.setString(1, alumno.getNombre());
            ps.setString(2, alumno.getApellido());
            ps.setString(3, alumno.getEmail());
            ps.setInt(4, Integer.parseInt(alumno.getAnyo()));
            ps.setString(5, alumno.getCarrera());
            ps.setString(6, alumno.getTelefono());              
            if(ps.execute()){
               b = true; 
            }
            else{
                b = false;
            }
        }
        catch (Exception e){
            System.out.println(e.toString());
            b = false;
        }
        
        return b;
    }
    
    public boolean actualizarProfesor(Profesores profesor){
        PreparedStatement ps;
        Boolean b = false;
     
        try{
            ps = c.prepareStatement("UPDATE `profesores` SET `nombre` = ?,"
                    + " `apellido` = ?, `email` = ? "
                    + " `anyo` = ?, `carrera` = ?, `telefono` = ? "
                    + " WHERE `id` = ?;");
            ps.setString(1, profesor.getNombre());
            ps.setString(2, profesor.getApellido());
            ps.setString(3, profesor.getEmail());
            ps.setInt(4, Integer.parseInt(profesor.getAnyo()));
            ps.setString(5, profesor.getCarrera());
            ps.setString(6, profesor.getTelefono());            
            ps.setInt(4, profesor.getId());
            if(ps.execute()){
               b = true; 
            }
            else{
                b = false;
            }
        }
        catch (Exception e){
            System.out.println(e.toString());
            b = false;
        }
        
        return b;
    }
    
    public boolean borrarProfesor(int _id){
        PreparedStatement ps;
        Boolean b = false;
     
        try{
            ps = c.prepareStatement("DELETE FROM profesores WHERE id = ?;");
            ps.setInt(1, _id);
            if(ps.execute()){
               b = true; 
            }
            else{
                b = false;
            }
        }
        catch (Exception e){
            System.out.println(e.toString());
            b = false;
        }
        
        return b;
    }
}
