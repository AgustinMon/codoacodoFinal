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
        </ul>
    </div>
    <div class="inclinado"></div>
</nav>