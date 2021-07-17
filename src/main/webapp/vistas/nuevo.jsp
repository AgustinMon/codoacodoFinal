<%-- 
    Document   : nuevo
    Created on : Jul 6, 2021, 2:53:39 PM
    Author     : Agustin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String _tipo = request.getParameter("tipo"); %>
<% String _accion = request.getParameter("accion"); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo <%= _tipo %></title>
        <link rel="stylesheet" href="../css/estilos.css" >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"><!-- comment -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    </head>
    <body>
        <%@ include file="../common-html/menu.jsp" %>
        <div class="container altura">
            <h1>Nuevo <%= _tipo %>:</h1>

            <form action="../controlador/?accion=insertar" method="post">
                <div class="mb-3">
                    <input type="hidden" class="form-control" name="accion" id="accion" value="insertar"/>
                    <input type="hidden" class="form-control" name="tipo" id="tipo" value="<%= _tipo %>"/>
                    <label for="nombre" class="form-label">Nombre:</label>
                    <input required type="text" class="form-control" name="nombre" id="nombre" value=""/>

                    <label for="apellido" class="form-label">Apellido:</label>
                    <input required type="text" class="form-control" name="apellido" id="apellido" value=""/>

                    <label for="anyo" class="form-label">Año en curso:</label>
                    <input type="number" class="form-control" name="anyo" id="anyo" value=""/>

                    <label for="carrera" class="form-label">Carrera:</label>
                    <input required type="text" class="form-control" name="carrera" id="carrera" value=""/>

                    <label for="telefono" class="form-label">Telefono:</label>
                    <input type="text" class="form-control" name="telefono" id="telefono" value=""/>

                    <label for="email" class="form-label">email:</label>
                    <input required type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" value=""/>


                </div>
                <button class="btn btn-primary" type="submit"> Anadir</button>
            </form>
        </div>
        <%@ include file="../common-html/footer.jsp" %>
    </body>
</html>
