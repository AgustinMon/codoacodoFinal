/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.*;

/**
 *
 * @author Agustin
 */
public class Conexion {
    public Connection getConnection(){
        Connection conn = null;
        try{
            String usuario = "codoacodo";
            String pass = "1234";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codoacodo", usuario, pass);
        }
        catch (Exception e){
            System.out.println(e.toString());
        }
        
        return conn;
    }
}
