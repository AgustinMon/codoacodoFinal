<%-- 
    Document   : alumnos
    Created on : Jul 6, 2021, 2:53:22 PM
    Author     : Agustin
--%>

<%@page import="modelo.AlumnosDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Alumnos"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"><!-- comment -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    </head>
    <body>
        <h1>Alumnos</h1>

        <div class="row">
            <table class="tabla table-primary">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Mail</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Alumnos> resultado = null;
                        AlumnosDAO alumno = new AlumnosDAO();
                        resultado = alumno.listarAlumnos();
                        for (int i = 0; i < resultado.size(); i++) {
                    %>      
                    <tr>
                        <td> <%= resultado.get(i).getId()%>  </td>
                        <td> <%= resultado.get(i).getNombre()%>  </td> 
                        <td> <%= resultado.get(i).getApellido()%>  </td>
                        <td><a href="modificar.jsp?id=<%= resultado.get(i).getId()%>"> Modificar </a></td>
                        <td><a href="modificar.jsp?id=<%= resultado.get(i).getId()%>"> Eliminar </a></td>
                    </tr>
                    <%  }%>
                </tbody>
            </table>
        </div>
    </body>
</html>
