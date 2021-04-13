<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Vacuna"%>
<%@page import="com.emergentes.modelo.GestorVacuna"%>
<%
    if (session.getAttribute("vacu") == null)
    {
        GestorVacuna objeto1 = new GestorVacuna();
        
        objeto1.insertarVacuna(new Vacuna(1, "Bruno Diaz", 25, 1.4,"Si"));
        objeto1.insertarVacuna(new Vacuna(2, "Juancito Pinto", 30, 1.52,"No"));
        session.setAttribute("vacu", objeto1);
    }

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL - Vacunas</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>
                    <h2>PRIMER PARCIAL TEM-742</h2><br>
                    <strong>Nombre:</strong> OSCAR PEDRO PARI LAYME <br>
                    <strong>Carnet:</strong> 6730026 L.P.

                </th>
            </tr>
        </table>

        <h1>Registro de vacunas</h1>
        
        <a href="Controller?op=nuevo">Nuevo</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Peso</th>
                <th>Talla</th>
                <th>Vacuna</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${sessionScope.vacu.getLista()}">    
            <tr>
                <th>${item.id}</th>
                <th>${item.nombre}</th>
                <th>${item.peso}</th>
                <th>${item.talla}</th>
                <th>${item.vacuna}</th>
                <th><a href="Controller?op=modificar&id=${item.id}">Editar</a></th>
                <th><a href="Controller?op=eliminar&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a></th>
            </tr>                           
            </c:forEach>        
        </table>
       
    </body>
</html>
