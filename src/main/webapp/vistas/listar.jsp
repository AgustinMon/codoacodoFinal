<%-- 
    Document   : alumnos
    Created on : Jul 6, 2021, 2:53:22 PM
    Author     : Agustin
--%>

<%@page import="modelo.PersonasDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Personas"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<% String _tipo = request.getParameter("tipo"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de <%= _tipo %></title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"><!-- comment -->
        <link rel="stylesheet" href="../css/estilos.css" >
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    </head>
    <body>
        <%@ include file="../common-html/menu.jsp" %>
        <div class="container altura">
            <h1>Listado de <%= _tipo %></h1>
            <%                            
                    if(_tipo.equals("profesor")){
            %>
            <a class="btn btn-primary mb-3 float-right" href="?accion=nuevo&tipo=profesor">Añadir profesor</a>
            <%
                } 
            %>
            <%                            
                    if(_tipo.equals("alumno")){
            %>
            <a class="btn btn-primary mb-3 float-right" href="?accion=nuevo&tipo=alumno">Añadir alumno</a>
            <%
                } 
            %>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col"></th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <%                            
                    if(_tipo.equals("profesor") || _tipo.equals("alumno")){
                            List<Personas> resultado = null;
                            PersonasDAO persona = new PersonasDAO();
                            resultado = persona.listarPersonas(_tipo);
                    
                        for (int i = 0; i < resultado.size(); i++) {
                    %>
                    <tr>
                        <th scope="row">  <%= resultado.get(i).getId()%>  </th>
                        
                        <%  if(_tipo.equals("profesor")){%>    
                            <td><i class="fas fa-chalkboard-teacher"></i></td>
                        <% } else if(_tipo.equals("alumno")){%> 
                            <td><i class="fas fa-user-graduate"></i></td>
                        <%}%>
                        
                        <td> <%= resultado.get(i).getNombre()%>  </td> 
                        <td> <%= resultado.get(i).getApellido()%>  </td>
                        <td><a href="../controlador/?accion=ver&id=<%= resultado.get(i).getId()%>&tipo=<%= _tipo %>"><i class="fas fa-eye fa-1x"></i></td>
                        <td><a href="../controlador/?accion=modificar&id=<%= resultado.get(i).getId()%>&tipo=<%= _tipo %>"><i class="fas fa-edit fa-1x"></i></a></td>
                        <td><a href="../controlador/?accion=eliminar&id=<%= resultado.get(i).getId()%>&tipo=<%= _tipo %>"><i class="fas fa-eraser fa-1x"></i></a></td>
                    </tr>
                    <%  } //endfor
                    } //endif
                    else {
                                out.println("no se selecciono ninguna lista valida.");
                    }
                    %>
                </tbody>
            </table>

        </div>
        <%@ include file="../common-html/footer.jsp" %>
    </body>
</html>
