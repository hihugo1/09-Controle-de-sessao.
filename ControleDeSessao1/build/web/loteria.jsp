<%-- 
    Document   : loteria
    Created on : 23 de abr. de 2022, 01:20:08
    Author     : hugos
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loteria</title>
    </head>
    
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <section class="container-fluid">
        <h2> Loteria </h2>
        <p>Os seus numeros da sorte são:</p>    

        <%
            int numero;
            int vetor[] = new int[6];
            Random r = new Random();
            for(int i=0; i<vetor.length; i++){
                numero = r.nextInt(60);
                for(int j=0; j<vetor.length; j++){
                   if(numero == vetor[j] && j != i){
                         numero = r.nextInt(60);
                   }else{
                        vetor[i] = numero;
                   }
                }
            }
        %>
        
        <table class="table table-sm">
            <tr>
                <td><%= vetor[0]%></td>
                <td><%= vetor[1]%></td>
                <td><%= vetor[2]%></td>
                <td><%= vetor[3]%></td>
                <td><%= vetor[4]%></td>
                <td><%= vetor[5]%></td>
               
            </tr>
        </table>
        </section>
</html>