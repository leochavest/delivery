<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.01 Transitional//EN" "http://www.w3.org/TR/html3/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header</title>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111111;
}
</style>
</head>


<body>
	<div id="head-link">
		<div id='menungang'>
			<ul>
				<h3>
					<li><a href="home.jsp"><span> Home </span></a>
				</h3>
				<h3>
					<li><a href="cardapio.jsp"><span> Cardapio </span></a>
				</h3>
				<c:choose>
					<c:when test="{not empty username}">
						<h3>
							<li><a href="pedido.jsp"><span>Pedido </span></a>
						</h3>
						<h3>
							<li><a href="LogoutServlet"><span>Sair </span></a>
						</h3>
						<h3>
							<li><a href="update_user.jsp?username=${username}">Atualize o cadastro<span>${username}</span></a>
						</h3>
					</c:when>
					<c:when test="{empty username}">
						<h3>
							<li><a href="index.jsp"><span> Login </span></a></li>
						</h3>
					</c:when>
				</c:choose>
			</ul>
		</div>
	</div>
</body>
</html>