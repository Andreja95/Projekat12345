<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>Raspored ispita</title>
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
	<h1>Raspored ispita</h1>
	<div id="sadrzaj">
		<table>
			<tr>
				<th>id</th>
				<th>id profesora</th>
				<th>id predmeta</th>
				<th>id studenata</th>
				<th>datum</th>
			</tr>
			<c:forEach var="ispit" items="${ispiti}">
				<tr>
					<td><c:out value="${ispit.id}"/></td>
					<td><c:out value="${ispit.profesor.id}"/></td>
					<td><c:out value="${ispit.predmet.id}"/></td>
					<td>
						<c:forEach var="student" items="${ispit.studenti}">
							<c:out value="${student.id}"/>
							<br/>
						</c:forEach>
					</td>
					<td><c:out value="${ispit.datum}"/></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</body>
</html>