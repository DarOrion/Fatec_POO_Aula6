<%-- 
    Document   : DataHora
    Created on : 21 de mar. de 2022, 19:45:25
    Author     : Fatec
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   
String errorMessage = null;
boolean hasParameters = request.getParameter("somar") !=null;
double n1=0, n2=0, soma=0;

if(hasParameters) {
   try{ 
       
     n1 = Double.parseDouble(request.getParameter("n1"));
     n2 = Double.parseDouble(request.getParameter("n2"));
     soma = n1+n2;
    
   }catch (Exception ex){
   errorMessage = "Erro ao tentar ler parâmetros";
   
   }
}

 %>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soma - JavaEE JSP</title>
    </head>
    <body>
        
        <h1>JavaEE</h1>
        <h2>JSP</h2>
        <h3>Inicio</h3>
        <h4><a href=" index.jsp"> Voltar</a> </h4>
        <h4>Soma</h4>       
         <% if(errorMessage!=null){%>
         
         <div style="color: red"><%= errorMessage %></div>
         
         <% }else if(hasParameters){%>
         <%}%>
         <div><%=n1%> + <%=n2%> = <u><%=soma%></u></div>
         <form action="soma.jsp">
        <input type="number" name="n1"  value="<%=n1 %>"/>+
        <input type="number" name="n2"  value="<%=n2 %>"/>
        <input type="submit" name="somar" value="="/>
        </form>
        
          </body>
</html>
