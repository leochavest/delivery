<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>File com fritas</title>
<style>
table, th, td {
	border: 1px solid black;
}
</style>
</head>
<body>

	<h2>Bordered Table</h2>
	<p>Use the CSS border property to add a border to the table.</p>

	<table style="width: 100%">
		<tr>
			<th>Proteina</th>
			<th>Acompanhamentos</th>
			<th>Preço</th>
			<th>Pedir</th>
		</tr>
		<tr>
			<td>Carne</td>
			<td>Arroz, feijão e batata frita.</td>
			<td>13,00</td>
			<td><form action="pedido.jsp">
					<input type="submit" value="Pedir">
				</form>
			<td />

		</tr>
		<tr>
			<td>Eve</td>
			<td>Jackson</td>
			<td>94</td>
		</tr>
		<tr>
			<td>John</td>
			<td>Doe</td>
			<td>80</td>
		</tr>
	</table>

</body>
</html>