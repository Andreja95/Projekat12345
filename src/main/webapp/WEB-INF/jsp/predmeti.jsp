<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>Predmeti</title>
	<link rel="stylesheet" type="text/css" href="/css/fakultet.css"/>
</head>
<body>
<div id="strana">
	<nav>
		<ul>
			<li><a href="/">Raspored ispita</a></li>
			<li><a href="/profesori">Profesori</a></li>
			<li><a href="/studenti">Studenti</a></li>
			<li><a href="/predmeti">Predmeti</a></li>
			<li><a href="/admin">Admin</a></li>
		</ul>
	</nav>
	<h1>Spisak predmeta</h1>
	<div id="sadrzaj">
		<table>
			<tr>
				<th>id</th>
				<th>ime</th>
				<th>id profesora</th>
			</tr>
			<c:forEach var="predmet" items="${predmeti}">
				<tr>
					<td><c:out value="${predmet.id}"/></td>
					<td><c:out value="${predmet.ime}"/></td>
					<td><c:out value="${predmet.profesor.id}"/></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</body>
</html>