<%-- 
    Document   : menu
    Created on : Jul 16, 2021, 4:49:28 PM
    Author     : Agustin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav id="menubar">
    <div class="container flex">
        <img id="logo" src="<%= request.getContextPath() %>/images/visit-us.png" alt="logo"/>
        <ul>
            <li><a href="<%= request.getContextPath() %>">Home</a></li>
            <li><a href="<%= request.getContextPath() %>/controlador/?accion=listar&tipo=alumno">Alumnos</a></li>
            <li><a href="<%= request.getContextPath() %>/controlador/?accion=listar&tipo=profesor">Profesores</a></li>


            <% 

                    if (session.getAttribute("Usuario") != null) {
                    String user = (String) session.getAttribute("Usuario");
            %>
            <li>Bienvenido <%= user %> <a href="<%= request.getContextPath() %>/controlador/?accion=logout"> (logout)</a></li>

            <%
                    } else {
            %>            
                <form action="<%= request.getContextPath() %>/controlador/?accion=login" method="post">

                        <li>
                            <input type="text" class="form-control" id="usuario" name="usuario" value="admin">
                        </li>
                        <li>
                            <input type="password" class="form-control" id="password" name="password" value="admin">
                        </li>
                        <li><button type="submit" class="btn btn-primary">Login</button></li>

                </form>
            <%
                }
            %>
        </ul>
    </div>
    <div class="inclinado"></div>
</nav>