/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Miguel Rivera
 */
public class usuario {
    private Conexion conectar;
     public int Validar(String pass, String usuario){
        int retorno = 0;
        
        

        try {
            PreparedStatement parametro;
            String sql_insert;
            conectar = new Conexion();
            conectar.abrir_conexion();
            sql_insert = "select * from usuarios where Usuario='"+usuario+"' and Pass='"+pass+"';";
            
            parametro = conectar.conexionbd.prepareStatement(sql_insert);
            ResultSet rs = parametro.executeQuery();
      
            if (rs.next()) {
                if (rs.getString(1).equals(pass)||rs.getString(2).equals(usuario)) {
                    retorno=1;
                }
                else {
                    return retorno=0;
                }
            }
            conectar.cerrar_conexion();
        }
        catch (Exception ex) {
            retorno = 0;
        }
        return retorno;
    }
}
