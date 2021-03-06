<%-- 
    Document   : Puestos
    Created on : 10/10/2020, 11:57:23 AM
    Author     : Miguel Rivera
--%>

<%@page import="Modelo.Puesto"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
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
        <h1 style="text-align: center;">CRUD De Puestos</h1>
        <div class="container">
            <a href="Empleados.jsp" class="btn btn-info">Regresar</a><br>
            <br>
        <form action="sr_puestos" method="POST" class="form-group">
      <button name="boton_agregar" id="boton_agregar" value="agregar" class="btn btn-success">Agregar</button>
  <button name="boton_Modificar" id="boton_Modificar" value="modificar" class="btn btn-primary">Modificar</button>
  <button name="boton_Eliminar" id="boton_Eliminar" value="eliminar" class="btn btn-danger" onclick="javascript:if(!confirm('¿Desea Eliminar?'))return false">Eliminar</button>
  <br>
    <label for="text">ID:</label>
    <input type="text" class="form-control" placeholder="ID" id="txt_id" name="txt_id" value="0" readonly>

    <label for="text">Puesto:</label>
    <input type="text" class="form-control" placeholder="Escriba el Puesto" id="txt_Puesto" name="txt_Puesto" required>

  
</form>
        </div>
        <div>
 <table class="table table-hover">
    <thead>
      <tr>
        <th>Puesto</th>
      </tr>
    </thead>
    <tbody id="tblPuesto">
        <%
            Puesto puesto=new Puesto();
            DefaultTableModel tablaPuesto=new DefaultTableModel();
            tablaPuesto=puesto.TablaPuesto();
            for (int i = 0; i < tablaPuesto.getRowCount(); i++) {
                         out.println("<tr data-idp="+tablaPuesto.getValueAt(i, 0)+">"); 
                         out.println("<td>"+tablaPuesto.getValueAt(i,1)+"</td>");
                      out.println("</tr>");
                }

        

              %>
    </tbody>
  </table>
        </div>
    <script type="text/javascript">
        $('#tblPuesto').on('click','tr td',function(e){
            var target,id,Puesto;
            target=$(event.target);
            id=target.parent().data('idp');
            marca=target.parent("tr").find("td").eq(0).html();
            $("#txt_id").val(id);
            $("#txt_Puesto").val(marca);
        })
        </script>
    </body>
</html>
