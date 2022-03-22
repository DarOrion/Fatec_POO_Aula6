<%-- 
    Document   : DataHora
    Created on : 21 de mar. de 2022, 19:45:25
    Author     : Fatec
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Date agora =new Date(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data/hora - JavaEE JSP</title>
    </head>
    <body>
        
        <h1>JavaEE</h1>
        <h2>JSP</h2>
        <h3>Data/hora do servidor com scriptler</h3>
        <h4><a href=" index.jsp"> Voltar</a> </h4>
        <%
            
            out.print(agora);
        
         %>           
         
         <h3>Data/hora do servidor com expression</h3>
         <%= agora %>
         
    </body>
</html>
