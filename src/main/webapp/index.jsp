<%@page import="java.util.List" %>
<%@page import="com.emergentes.modelo.seminario" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<seminario> lista = (List<seminario>) request.getAttribute("lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Segundo Parcial</title>
    </head>
    <body>
    <center>
        <table border="1">
            <center>
            <tr> <th><h1>SEGUNDO PARCIAL TEM-742
                        <br>Nombre: Felix Octavio Paucara Paucara
                        <br>Carnet: 9247853</h1></th>
            </tr>  
                    </center>
                </th> </tr> </table> 
        <h1>Registro de Seminarios</h1>
        <p><a href="MainController?op=nuevo">Nuevo</a></p>
        <table border="1">
            <p>
                <th>ID</th>
                <th>Titulo</th>
                <th>Expositor</th>
                <th>Fecha</th>
                <th>Hora</th>
                <th>Cupo</th>
                <th></th>
            </tr>
            
            <c:forEach var="item" items="${lista}">
            <tr>
                <td>${item.id}</td>
                <td>${item.titulo}</td>
                <td>${item.expositor}</td>
                <td>${item.fecha}</td>
                <td>${item.hora}</td>
                <td>${item.cupo}</td>
                <td>
                    <a href="MainController?op=editar&id=${item.id}">
                        Editar</a>
                </td>
                <td>
                    <a href="MainController?op=eliminar&id=${item.id}"
                       onclick="return(confirm('Esta seguro ???'))">Eliminar</a>
                </td>
            </tr>
            </c:forEach>
        </table>
        </center>
    </body>
</html>
