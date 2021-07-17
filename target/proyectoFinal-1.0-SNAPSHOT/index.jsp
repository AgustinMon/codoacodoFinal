<%-- 
    Document   : index
    Created on : Jul 16, 2021, 4:52:16 PM
    Author     : Agustin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Proyecto Final CodoaCodo Java</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"><!-- comment -->
        <link rel="stylesheet" href="css/estilos.css" >
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@ include file="./common-html/menu.jsp" %>
        <div class="container">
            <h1 class="text-center">Proyecto Final Codo a Codo Java</h1>

            <div class="flex grid">
                <div class="card">
                    <h3>Campus</h3>
                    <img src="./images/campus_2.jpg" alt="campus"/>
                </div>

                <div class="card">
                    <h3>Biblioteca</h3>
                    <img src="./images/biblioteca.jpg" alt="campus"/>
                </div>

                <div class="card">
                    <h3>Campus</h3>
                    <img src="./images/campus.jpg" alt="campus"/>
                </div>
                 <div class="card">
                    <h3>Egresados</h3>
                    <img src="./images/egresados.jpg" alt="Egresados"/>
                </div>

                <div class="card">
                    <h3>Deportes</h3>
                    <img src="./images/sports.jpg" alt="Deportes"/>
                </div>

                <div class="card">
                    <h3>Restaurante</h3>
                    <img src="./images/restaurant.jpg" alt="Restaurante"/>
                </div>               
            </div>
        </div>
        <%@ include file="./common-html/footer.jsp" %>
    </body>
</html>
