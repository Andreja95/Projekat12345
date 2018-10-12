<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>Studenti</title>
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
	<h1>Spisak studenata</h1>
	<div id="sadrzaj">
		<table>
			<tr>
				<th>id</th>
				<th>ime</th>
				<th>prezime</th>
				<th>adresa</th>
				<th>telefon</th>
			</tr>
			<c:forEach var="student" items="${studenti}">
				<tr>
					<td><c:out value="${student.id}"/></td>
					<td><c:out value="${student.ime}"/></td>
					<td><c:out value="${student.prezime}"/></td>
					<td><c:out value="${student.adresa}"/></td>
					<td><c:out value="${student.telefon}"/></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</body>
</html>
