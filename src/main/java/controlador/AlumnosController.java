/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import modelo.Personas;
import modelo.PersonasDAO;

/**
 *
 * @author Agustin
 */
public class AlumnosController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /*response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String id = request.getParameter("id");
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AlumnosController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AlumnosController at " + request.getContextPath() + "</h1>");
            out.println("id = " + id);
            out.println("</body>");
            out.println("</html>");

        }*/

    }

    // <editor-fold defaultstate="expanded" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            processRequest(request, response);
            PersonasDAO personasdao = new PersonasDAO();
            String accion;
            RequestDispatcher dispatcher = null;
            accion = request.getParameter("accion");
            if (!accion.equals(null)) {

                if (accion.equals("modificar")) {
                    String id = request.getParameter("id");
                    personasdao.mostrarPersonas(Integer.parseInt(id));
                    dispatcher = request.getRequestDispatcher("/vistas/modificar.jsp?accion=modificar&id=" + id);
                    dispatcher.forward(request, response);
                } else if (accion.equals("nuevo")) {
                    dispatcher = request.getRequestDispatcher("/vistas/nuevo.jsp");
                    dispatcher.forward(request, response);
                } else if (accion.equals("ver")) {
                    String id = request.getParameter("id");
                    personasdao.mostrarPersonas(Integer.parseInt(id));
                    dispatcher = request.getRequestDispatcher("/vistas/modificar.jsp?accion=ver&id=" + id);
                    dispatcher.forward(request, response);
                } else if (accion.equals("eliminar")) {
                    String id = request.getParameter("id");
                    personasdao.mostrarPersonas(Integer.parseInt(id));
                    dispatcher = request.getRequestDispatcher("/vistas/eliminar.jsp?id=" + id);
                    dispatcher.forward(request, response);
                } else if (accion.equals("listar")) {
                    String tipo = request.getParameter("tipo");
                    dispatcher = request.getRequestDispatcher("/vistas/listar.jsp?tipo="+tipo);
                    dispatcher.forward(request, response);
                } //casos como eliminado o modificado
                else {
                    dispatcher = request.getRequestDispatcher("/vistas/listar.jsp");
                    dispatcher.forward(request, response);
                }

            } else {
                dispatcher = request.getRequestDispatcher("/index.html");
                dispatcher.forward(request, response);
            }
        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.println(e.toString());
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        PersonasDAO personasdao = new PersonasDAO();
        String accion;
        RequestDispatcher dispatcher = null;
        accion = request.getParameter("accion");
        if (accion.equals("eliminado")) {
            String id = request.getParameter("id");
            personasdao.borrarPersona(Integer.parseInt(id));
        } else if (accion.equals("modificar")) {
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String email = request.getParameter("email");
            String tipo = request.getParameter("tipo");
            String anyo = request.getParameter("anyo");
            String carrera = request.getParameter("carrera");
            String telefono = request.getParameter("telefono");

            Personas persona = new Personas();
            persona.setTipo(tipo);
            persona.setApellido(apellido);
            persona.setEmail(email);
            persona.setNombre(nombre);
            persona.setId(null);
            persona.setCarrera(carrera);
            persona.setTelefono(telefono);
            persona.setAnyo(anyo);
            
            personasdao.actualizarPersona(persona);
        } else if (accion.equals("insertar")) {
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String email = request.getParameter("email");
            String tipo = request.getParameter("tipo");
            String anyo = request.getParameter("anyo");
            String carrera = request.getParameter("carrera");
            String telefono = request.getParameter("telefono");
            
            Personas persona = new Personas();
            persona.setTipo(tipo);
            persona.setApellido(apellido);
            persona.setEmail(email);
            persona.setNombre(nombre);
            persona.setId(null);
            persona.setCarrera(carrera);
            persona.setTelefono(telefono);
            persona.setAnyo(anyo);
            personasdao.insertarPersona(persona);
        } else {
            System.out.println("accion no permitida: " + accion);
        }

        dispatcher = request.getRequestDispatcher("/vistas/listar.jsp");
        dispatcher.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
