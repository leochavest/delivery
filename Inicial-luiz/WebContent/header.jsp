<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header</title>
</head>
<body>
	<div id="head-link">
		<div id='menungang'>
			<ul>
				<a href="index.jsp"><span>Home </span></a>
				<a href="cardapio.jsp"><span>Cardapio </span></a>
				<c:choose>
					<c:when test="{not empty username}">
						<a href="pedido.jsp"><span>Pedido </span></a>
						<a href="LogoutServlet"><span>Sair </span></a>
						<a href="update_user.jsp?username=${username}"><span>${username}</span></a>
					</c:when>
					<c:when test="{empty username}">
						<a href="search_page.jsp"><span>Pesquisa </span></a>
						<li class='last' style="float: right;"><a href="register.jsp"><span>Registro</span></a></li>
						<li class='last' style="float: right;"><a href="login.jsp"><span>Login</span></a></li>
					</c:when>
				</c:choose>
			</ul>
		</div>
	</div>
</body>
</html>