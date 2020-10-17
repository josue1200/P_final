<%-- 
    Document   : index
    Created on : 9/10/2020, 01:42:46 PM
    Author     : Miguel Rivera
--%>
<%
      HttpSession actual =request.getSession(true);
      String usuario = (String) actual.getAttribute("Logueado");
      session.setMaxInactiveInterval(900);
      if(actual.getAttribute("Logueado")!=null){
        %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido de nuevo <%=usuario%></h1>
        <h1>Grupo #7 UMG</h1>
       <a href="Marcas.jsp" class="btn btn-info" role="button">Marcas</a>
       <a href="Proveedores.jsp" class="btn btn-info" role="button">Proveedores</a>
       <a href="Puestos.jsp" class="btn btn-info" role="button">Puestos</a>
       <a href="Clientes.jsp" class="btn btn-info" role="button">Clientes</a>
       <a href="Empleados.jsp" class="btn btn-info" role="button">Empleados</a>
       <a href="Productos.jsp" class="btn btn-info" role="button">Productos</a>
       <form action="sr_inicio" method="post">
            <h6 class="text-muted"><input type="submit" value="Cerrar Sesion" class="btn btn-dark" id="cerrarsesion" name="cerrarsesion"/></h6>
        </form>
    </body>
</html>
<%
   }
else{

response.sendRedirect("index.jsp");

}
%>