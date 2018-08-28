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
			<h4>
				<li class='last' style="float: left;"><a href="home.jsp"><span>  Home      </span></a>
			</h4>
			<h4>
				<li class='last' style="float: left;"><a href="cardapio.jsp"><span>   Cardapio    </span></a>
			</h4>
			<c:choose>
				<c:when test="{not empty username}">
					<h4>
						<li class='last' style="float: left;"><a href="pedido.jsp"><span>Pedido </span></a>
					</h4>
					<h4>
						<li class='last' style="float: left;"><a href="LogoutServlet"><span>Sair </span></a>
					</h4>
					<h4>
						<li class='last' style="float: left;"><a href="update_user.jsp?username=${username}"><span>${username}</span></a>
					</h4>
				</c:when>
				<c:when test="{empty username}">
					<h4>
						<li class='last' style="float: right;"><a href="register.jsp"><span>
									Registro </span></a></li>
					</h4>
					<h4>
						<li class='last' style="float: right;"><a href="index.jsp"><span>
									Login </span></a></li>
					</h4>
				</c:when>
			</c:choose>

		</div>
	</div>
</body>
</html>