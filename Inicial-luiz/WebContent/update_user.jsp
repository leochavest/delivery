<%@page import="org.itstep.javaee.model.Usuario"%>
<%@page import="org.itstep.javaee.dao.impl.UsuarioDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualize o cadastro!</title>
</head>
<body>
	<div id="header"><jsp:include page="header.jsp"></jsp:include></div>
	<div id="rodape"><jsp:include page="rodape.jsp"></jsp:include></div>
	<%
		String err = "";
		if (request.getAttribute("err") != null) {
			err = (String) request.getAttribute("err");
		}
		String username = request.getParameter("username");

		UsuarioDaoImpl userDao = new UsuarioDaoImpl();
		Usuario usuario = userDao.getCpf(cpf);
	%>

	<!--/start-login-two-->
	<div class="login-02">
		<div class="two-login  hvr-float-shadow">
			<div class="two-login-head">
				<img src="images/top-note.png" alt="" />
				<h2>Atualize</h2>
				<lable></lable>
			</div>
			<form action="UpdateUser" method="post">
				<li style="color: red"><%=err%></li> CPF
				<li><input type="text" class="text" value="<%=usuario.getCpf()%>"
					readonly name="username"><a href="#" class=" icon2 user2"></a></li>
				<h5>
					<a href="index.jsp">Voltar</a>
				</h5>
			</form>
		</div>
	</div>
</body>
</html>
>
