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
        <title>Modificar datos de alumnos</title>
        <link rel="stylesheet" href="../css/estilos.css" >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"><!-- comment -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    </head>
    <body>
        <%@ include file="../common-html/menu.jsp" %>
        <%
            String path = request.getContextPath();
            String _id = request.getParameter("id");
            String _accion = request.getParameter("accion");
            String _readonly;
            
            int id;
            id = Integer.parseInt(_id);

            Alumnos resultado = null;
            AlumnosDAO alumno = new AlumnosDAO();
            resultado = alumno.mostrarAlumno(id);

            if(_accion.equals("ver")){
                _readonly = "readonly";
            }
            else{
                _readonly = "";
            }
        %>

        <div class="container">
            <%
              if(_accion.equals("modificar")){
                    out.println("<h1>Modificar Alumno:</h1>");
                }
                else{
                    out.println("<h1>Datos del Alumno:</h1>");
                }
            %>    


            <form action="../controlador/?accion=modificado" method="post">
                <div class="mb-3">
                    <input type="hidden" class="form-control" name="id" id="id" value="<% out.print(resultado.getId());%>"/>

                    <input type="hidden" class="form-control" name="tipo" id="tipo" value="modificar"/>

                    <label for="nombre" class="form-label">Nombre:</label>
                    <input <%= _readonly %> type="text" class="form-control" name="nombre" id="nombre" value="<% out.print(resultado.getNombre());%>"/>

                    <label for="apellido" class="form-label">Apellido:</label>
                    <input <%= _readonly %> type="text" class="form-control" name="apellido" id="apellido" value="<% out.print(resultado.getApellido());%>"/>

                    <label for="anyo" class="form-label">Año en curso:</label>
                    <input <%= _readonly %> type="number" class="form-control" name="anyo" id="anyo" value="<% out.print(resultado.getAnyo());%>"/>

                    <label for="carrera" class="form-label">Carrera:</label>
                    <input <%= _readonly %> type="text" class="form-control" name="carrera" id="carrera" value="<% out.print(resultado.getCarrera());%>"/>

                    <label for="telefono" class="form-label">Telefono:</label>
                    <input <%= _readonly %> type="text" class="form-control" name="telefono" id="telefono" value="<% out.print(resultado.getTelefono());%>"/>

                    <label for="email" class="form-label">email:</label>
                    <input <%= _readonly %> type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" value="<% out.print(resultado.getEmail());%>"/>

                </div>
                <%
                  if(_accion.equals("modificar")){
                        out.println("<button class='btn btn-primary' type='submit'>Modificar</button>");
                    }  
                %>

            </form>
        </div>
        <%@ include file="../common-html/footer.jsp" %>
    </body>
</html>
