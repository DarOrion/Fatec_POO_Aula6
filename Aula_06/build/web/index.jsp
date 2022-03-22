<%--
Document : index
Created on : 21 de mar. de 2022, 19:36:05
Author : Fatec
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Índice - JavaEE JSP</title>
</head>
<body>
<h1>JavaEE</h1>
<h2>JSP</h2>
<h3>Início</h3>
<h4><a href="datahora.jsp">Data/Hora do servidor</a></h4>
<h4>Soma</h4>
<form action="soma.jsp">
<input type="number" name="n1"/>+
<input type="number" name="n2"/>
<input type="submit" name="somar" value="="/>
</form>
<h4>Aleatórios</h4>
<form action="aleatorios.jsp">
<input type="number" name="n"/>+
<input type="submit" name="gerar" value="Gerar"/>
</form>
<h4>Tabuada</h4>
<form action="tabuada.jsp">
<input type="number" name="n"/>+
<input type="submit" name="gerar" value="Gerar"/>
</form>
<h4>Calendário</h4>
<form action="calendario.jsp">
<select name="mes">
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
<input type="number" placeholder="yyyy" class="fields" min="1" name="y"/>
<input type="submit" value="consultar" id="btn-calendar"/>
</form>
</body>
</html>