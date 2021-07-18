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
import modelo.Personas;

/**
 *
 * @author Agustin
 */
public class PersonasDAO {

    Connection c;

    public PersonasDAO() {
        Conexion conn = new Conexion();
        c = conn.getConnection();
    }

    public List<Personas> listarPersonas(String _tipo) {
        PreparedStatement ps;
        ResultSet rs;
        List<Personas> lista = new ArrayList<>();
        try {
            ps = c.prepareStatement("SELECT * FROM codoacodo.personas WHERE `tipo` = ?;");
            ps.setString(1, _tipo);
            rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String email = rs.getString("email");
                Integer anyo = rs.getInt("anyo");
                String carrera = rs.getString("carrera");
                String telefono = rs.getString("telefono");
                String tipo = rs.getString("tipo");
                try {
                    Personas a = new Personas(String.valueOf(id), nombre, apellido, email, String.valueOf(anyo), carrera, telefono, tipo);
                    lista.add(a);
                } catch (Exception e) {
                    System.out.println(e.toString());
                }
            }
            return lista;
        } catch (Exception e) {
            System.out.println(e.toString());
            return null;
        }
    }

    public Personas mostrarPersonas(int _id) {
        PreparedStatement ps;
        ResultSet rs;
        Personas profesor = null;

        try {
            ps = c.prepareStatement("SELECT * FROM personas WHERE id = ?");
            ps.setInt(1, _id);
            rs = ps.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String email = rs.getString("email");
                String anyo = rs.getString("anyo");
                String carrera = rs.getString("carrera");
                String telefono = rs.getString("telefono");
                String tipo = rs.getString("tipo");
                profesor = new Personas(id, nombre, apellido, email, anyo, carrera, telefono, tipo);
            }
            return profesor;
        } catch (Exception e) {
            System.out.println(e.toString());
            return null;
        }
    }

    public boolean insertarPersona(Personas persona) {
        PreparedStatement ps;
        Boolean b = false;

        try {
            ps = c.prepareStatement("INSERT INTO personas (id, nombre, apellido, tipo, carrera, anyo, telefono, email)"
                    + " VALUES (NULL,?,?,?,?,?,?,?);");
            ps.setString(1, persona.getNombre());
            ps.setString(2, persona.getApellido());
            ps.setString(3, persona.getTipo());
            ps.setString(4, persona.getCarrera());
            ps.setString(5, persona.getAnyo());
            ps.setString(6, persona.getTelefono());
            ps.setString(7, persona.getEmail());
            if (ps.execute()) {
                b = true;
            } else {
                b = false;
            }
        } catch (Exception e) {
            System.out.println(e.toString());
            b = false;
        }

        return b;
    }

    public boolean actualizarPersona(Personas persona) {
        PreparedStatement ps;
        Boolean b = false;

        try {
            ps = c.prepareStatement("UPDATE `personas` SET `nombre` = ?,"
                    + " `apellido` = ?, `email` = ?, "
                    + " `telefono` = ? ,`carrera` = ?,`anyo` = ? "
                    + " WHERE `id` = ? ;");
            ps.setString(1, persona.getNombre());
            ps.setString(2, persona.getApellido());
            ps.setString(3, persona.getEmail());
            ps.setString(4, persona.getTelefono());
            ps.setString(5, persona.getCarrera());
            ps.setString(6, persona.getAnyo());
            ps.setString(7, String.valueOf(persona.getId()));
            if (ps.execute()) {
                b = true;
            } else {
                b = false;
            }
        } catch (Exception e) {
            System.out.println(e.toString());
            b = false;
        }

        return b;
    }

    public boolean borrarPersona(int _id) {
        PreparedStatement ps;
        Boolean b = false;

        try {
            ps = c.prepareStatement("DELETE FROM personas WHERE id = ?;");
            ps.setInt(1, _id);
            if (ps.execute()) {
                b = true;
            } else {
                b = false;
            }
        } catch (Exception e) {
            System.out.println(e.toString());
            b = false;
        }

        return b;
    }
}
