<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello Web</title>
</head>
<body>
	<div id="header"><jsp:include page="header.jsp"></jsp:include></div>


<div id="rodape"><jsp:include page="rodape.jsp"></jsp:include></div>
	<jsp:useBean id="nameBean" scope="session"
		class="org.itstep.javaee.model.Usuario" />
	<h1>
		Hello,
		<jsp:getProperty name="nameBean" property="name" />, seu pedido �
		<jsp:getProperty name="nameBean" property="pedido" />, e o endere�o de entrega �:
		 <jsp:getProperty name="nameBean" property="endereco" />
	</h1>
</body>
</html>