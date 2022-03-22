<%-- 
    Document   : DataHora
    Created on : 21 de mar. de 2022, 19:45:25
    Author     : Fatec
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   
String errorMessage = null;
boolean hasParameters = request.getParameter("gerar") !=null;
int n=0;

if(hasParameters) {
   try{ 
       
     n = Integer.parseInt(request.getParameter("n"));
     
     
    
   }catch (Exception ex){
   errorMessage = "Erro ao tentar ler parâmetros";
   
   }
}

 %>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aleatórios - JavaEE JSP</title>
    </head>
    <body>
        
        <h1>JavaEE</h1>
        <h2>JSP</h2>
        <h3>Inicio</h3>
        <h4><a href=" index.jsp"> Voltar</a> </h4>
        <h4>Número Aletatórios</h4>       
        <form action="aleatorios.jsp">
            <input type="number" name="n" value="<%=n%>"/>
            <input type="submit" name="gerar" value="Gerar"/>
        </form>
        <%if(errorMessage!=null){%>
            <div style="color: red"><%= errorMessage %></div>
        <%}else if(hasParameters){%>
            <hr/>
            <table border="1">
                <tr>
                    <th>Domingo</th>
                    <th>Segunda</th>
                    <th>Terça</th>
                    <th>quarta</th>
                    <th>quinta</th>
                    <th>Sexta</th>
                    <th>Sabádo</th>
                </tr>
                <%for(int i=1; i<=31; i++){%>
                <%int rand = ((int)(Math.random()*100));%>
                <tr>
                    <td><%= i %></td>
                    <td><%= rand %></td>
                </tr>
                <%}%>
            </table>
        <%}%>
         
        
         
          </body>
</html>
