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
import modelo.Alumnos;

/**
 *
 * @author Agustin
 */
public class AlumnosDAO {

    Connection c;

    public AlumnosDAO() {
        Conexion conn = new Conexion();
        c = conn.getConnection();
    }

    public List<Alumnos> listarAlumnos() {
        PreparedStatement ps;
        ResultSet rs;
        List<Alumnos> lista = new ArrayList<>();
        try{
            ps = c.prepareStatement("SELECT * FROM codoacodo.alumnos");
            rs = ps.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String email = rs.getString("email");
                
                Alumnos a = new Alumnos(id, nombre, apellido, email);
                lista.add(a);
            }
            return lista;
        }
        catch (Exception e){
            System.out.println(e.toString());
            return null;
        }
    }
    
    public Alumnos mostrarAlumno(int _id){
        PreparedStatement ps;
        ResultSet rs;
        Alumnos alumno = null;
        
        try{
            ps = c.prepareStatement("SELECT * FROM alumnos WHERE id = ?");
            ps.setInt(1, _id);
            rs = ps.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String email = rs.getString("email");               
                alumno = new Alumnos(id, nombre, apellido, email);
            }
            return alumno;
        }
        catch (Exception e){
            System.out.println(e.toString());
            return null;
        }
    }
    
    public boolean insertarAlumno(Alumnos alumno){
        PreparedStatement ps;
        Boolean b = false;
     
        try{
            ps = c.prepareStatement("INSERT INTO alumnos (id, nombre, apellido, email)"
                    + " VALUES (NULL,?,?,?);");
            ps.setString(1, alumno.getNombre());
            ps.setString(2, alumno.getApellido());
            ps.setString(3, alumno.getEmail());
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
    
    public boolean actualizarAlumno(Alumnos alumno){
        PreparedStatement ps;
        Boolean b = false;
     
        try{
            ps = c.prepareStatement("UPDATE alumnos SET (nombre = ?,"
                    + " apellido = ?, email = ?) WHERE id = ?;");
            ps.setString(1, alumno.getNombre());
            ps.setString(2, alumno.getApellido());
            ps.setString(3, alumno.getEmail());
            ps.setInt(4, alumno.getId());
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
    
    public boolean borrarAlumno(int _id){
        PreparedStatement ps;
        Boolean b = false;
     
        try{
            ps = c.prepareStatement("DELETE FROM alumnos WHERE id = ?;");
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
