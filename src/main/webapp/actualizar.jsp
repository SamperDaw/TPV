<%-- 
    Document   : actualizar
    Created on : 22-nov-2021, 17:42:48
    Author     : DAW-A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <h1>Producto</h1>
        <%
            String mensaje = (String) request.getAttribute("mensaje");
            if(mensaje!=null)out.println(mensaje);
            %>
            
        <form action="Servlet">
            <input type="text" value="actualizardatos" name="op">
            <p>ID:<input type="text" value="${producto.id}" name="id" readonly></p>
            <p>Nombre:<input type="text" value="${producto.nombre}" name="nombre"></p>
            <p>Categoria:<input type="text" value="${producto.categoria}" name="categoria"></p>
            <p>Precio:<input type="text" value="${producto.precio}" name="precio"></p>
            <p>Imagen:<input type="text" value="${producto.imagen}" name="imagen"></p>
            
            <input type="submit" value="Actualizar producto">
        </form>
    </body>
</html>
