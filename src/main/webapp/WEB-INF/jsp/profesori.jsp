<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>Profesori</title>
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
	<h1>Spisak profesora</h1>
	<div id="sadrzaj">
		<table>
			<tr>
				<th>id</th>
				<th>ime</th>
				<th>prezime</th>
				<th>adresa</th>
				<th>telefon</th>
			</tr>
			<c:forEach var="profesor" items="${profesori}">
				<tr>
					<td><c:out value="${profesor.id}"/></td>
					<td><c:out value="${profesor.ime}"/></td>
					<td><c:out value="${profesor.prezime}"/></td>
					<td><c:out value="${profesor.adresa}"/></td>
					<td><c:out value="${profesor.telefon}"/></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</body>
</html>