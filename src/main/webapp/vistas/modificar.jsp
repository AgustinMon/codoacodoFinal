<%-- 
    Document   : modificar
    Created on : Jul 6, 2021, 2:54:00 PM
    Author     : Agustin
--%>

<%@page import="modelo.AlumnosDAO"%>
<%@page import="modelo.Alumnos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"><!-- comment -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    </head>
    <body>
        <%
            String path = request.getContextPath();
            String _id = request.getParameter("id");
            int id;
            id = Integer.parseInt(_id);

            Alumnos resultado = null;
            AlumnosDAO alumno = new AlumnosDAO();
            resultado = alumno.mostrarAlumno(id);
        %>
        <p><% out.print(path);%></p>
        <p><% out.print(id);%></p>
        
        <div class="container">
            <h1>Modificar Alumno:</h1>

            <form>
                <div class="mb-3">
                    <label for="id" class="form-label">id</label>
                    <input type="hidden" class="form-control" name="id" id="id" value="<% out.print(resultado.getId());%>"/>

                    <label for="email" class="form-label">email:</label>
                    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" value="<% out.print(resultado.getEmail());%>"/>

                    <label for="nombre" class="form-label">Nombre:</label>
                    <input type="text" class="form-control" name="nombre" id="nombre" value="<% out.print(resultado.getNombre());%>"/>

                    <label for="apellido" class="form-label">Apellido:</label>
                    <input type="text" class="form-control" name="apellido" id="apellido" value="<% out.print(resultado.getApellido());%>"/>

                </div>
                <button class="btn btn-primary" type="submit"> Anadir</button>
            </form>
        </div>
    </body>
</html>
