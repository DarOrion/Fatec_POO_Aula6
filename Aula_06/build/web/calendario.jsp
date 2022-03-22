<%--
Document : calendario
Created on : 21 de mar. de 2022, 20:53:34
Author : Fatec
--%>

<div>
<h2>Nome do Grupo: Gabriel Natan - Guilherme Evangelista - Marcelo Felicio Pereira</h2>


</div>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%


String errorMessage = null;
int m = 0;
String mes="";
int dias = 0;

try{
m = Integer.parseInt(request.getParameter("mes"));

if(m == 1){
mes = "Janeiro";

}else if(m == 2){
mes = "Fevereiro";

}else if(m == 3){
mes = "Março";

}else if(m == 4){
mes = "Abril";

}else if(m == 5){
mes = "Maio";

}else if(m == 6){
mes = "Junho";

}else if(m == 7){
mes = "Julho";

}else if(m == 8){
mes = "Agosto";

}else if(m == 9){
mes = "Setembro";

}else if(m == 10){
mes = "Outubro";

}else if(m == 11){
mes = "Novembro";

}else if(m == 12){
mes = "Dezembro";
}


}catch(Exception e){
errorMessage = "Erro ao ler parâmetro mês" + request.getParameter("m");
}

int y = 0;

try{
y = Integer.parseInt(request.getParameter("y"));

}catch(Exception e){
errorMessage = "Erro ao ler parâmetro ano" + request.getParameter("y");
}



%>




<%
Calendar c = Calendar.getInstance();
c.set(Calendar.YEAR, y);
c.set(Calendar.MONTH, m-1);
c.set(Calendar.DAY_OF_MONTH,1);
c.get(Calendar.DAY_OF_WEEK);

Integer date = (c.get(Calendar.DAY_OF_WEEK));
Integer year =(c.get(Calendar.YEAR));
Integer month =(c.get(Calendar.MONTH));
Integer week =(c.get(Calendar.DAY_OF_MONTH));

%>



<html>
<head>
<title>Calendario</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<header>

<div>
    <h4><a href=" index.jsp"> Voltar</a> </h4>
</div>

<div class="title">
<h1>Calendário</h1>
</div>

<div>

</div>


</header>

<article>
<div class="flex-container">

<table class="calendario">
<tr class="mes"><th colspan="4"><%= mes %></th><th colspan="3"><%= y %></th></tr>
<tr  style=" color: blue" class="dia"><th>DOM</th><th>SEG</th><th>TER</th><th>QUA</th><th>QUI</th><th>SEX</th><th>SAB</th></tr>


<% if(m == 4 || m == 5 || m == 9 || m == 11 ){

int cont = 1;
%>

<%for(int i = 1;i<=6;i++){%> 



<tr>
<% if(cont == 1){%> 
<% for(int j = 1;j<=7;j++){%> 



<%if(j >= date){%>



<%if(cont < 31){%>



<th><%= cont++ %></th>



<%}%>



<%}else{%>



<th></th>



<%}%>



<%}%>



<%}else{%>
<% for(int j = 1;j<=7;j++){%>



<%if(cont < 31){%>



<th><%= cont++ %></th>



<%}%>
<%}%>
<%}%>
</tr>
<%}%>
<%}


else if(m == 2 && y%4==0 ){int cont = 1;%>

<%for(int i = 1;i<=6;i++){%>



<tr>
<% if(cont == 1){%>
<% for(int j = 1;j<=7;j++){%>



<%if(j >= date){%>



<%if(cont < 30){%>



<th><%= cont++ %></th>



<%}%>



<%}else{%>



<th></th>



<%}%>



<%}%>



<%}else{%>
<% for(int j = 1;j<=7;j++){%>



<%if(cont < 30){%>



<th><%= cont++ %></th>



<%}%>
<%}%>
<%}%>
</tr>
<%}%>
<%}


else if(m == 2 ){ int cont = 1;%>

<%for(int i = 1;i<=6;i++){%> 



<tr>
<% if(cont == 1){%> 
<% for(int j = 1;j<=7;j++){%> 



<%if(j >= date){%>



<%if(cont < 29){%>



<th><%= cont++ %></th>



<%}%>



<%}else{%>



<th></th>



<%}%>



<%}%>



<%}else{%>
<% for(int j = 1;j<=7;j++){%> 



<%if(cont < 29){%>



<th><%= cont++ %></th>



<%}%>
<%}%>
<%}%>
</tr>
<%}%>
<%}


else{int cont = 1;%>

<%for(int i = 1;i<=6;i++){%> 



<tr>
<% if(cont == 1){%> 
<% for(int j = 1;j<=7;j++){%> 



<%if(j >= date){%>



<%if(cont < 32){%>



<th><%= cont++ %></th>



<%}%>



<%}else{%>



<th></th>



<%}%>



<%}%>



<%}else{%>
<% for(int j = 1;j<=7;j++){%> 



<%if(cont < 32){%>



<th><%= cont++ %></th>



<%}%>
<%}%>
<%}%>
</tr>
<%}%>
<%}%>







</table>



<form action="calendaio.jsp">

<div>
<select name="m">
<option value="0" selected disabled>Mês</option>
<option value="1">Janeiro</option>
<option value="2">Fevereiro</option>
<option value="3">Março</option>
<option value="4">Abril</option>
<option value="5">Maio</option>
<option value="6">Junho</option>
<option value="7">Julho</option>
<option value="8">Agosto</option>
<option value="9">Setembro</option>
<option value="10">Outubro</option>
<option value="11">Novembro</option>
<option value="12">Dezembro</option>
</select>
<input type="number" placeholder="yyyy" class="fields" min="1" value="<%= year %>" name="y"/>
<input type="submit" value="consultar" id="btn-calendar"/>
</div>

<table>




</table>



</form>
</div>
</article>








</body>
</html>

