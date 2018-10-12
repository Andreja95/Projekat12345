<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>Admin</title>
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
	<br style="clear:both;"/>
	<h1>Administracija</h1>
	<div id="sadrzaj">
		<h2>Profesori</h2>
		<form action="/admin/dodavanje/profesor" method="post">
			<div>
				<p>Ime:</p> <input type="text" name="ime"/>
				<p>Prezime:</p> <input type="text" name="prezime"/>
				<p>Adresa:</p> <input type="text" name="adresa"/>
				<p>Telefon:</p> <input type="text" name="telefon"/>
				<p><input type="submit" value="Dodaj profesora"/>
			</div>
		</form>
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
					<td><a href="/admin/brisanje/profesor/${profesor.id}">obrisi</a></td>
				</tr>
			</c:forEach>
		</table>
		<h2>Studenti</h2>
		<form action="/admin/dodavanje/student" method="post">
			<div>
				<p>Ime:</p> <input type="text" name="ime"/>
				<p>Prezime:</p> <input type="text" name="prezime"/>
				<p>Adresa:</p> <input type="text" name="adresa"/>
				<p>Telefon:</p> <input type="text" name="telefon"/>
				<p><input type="submit" value="Dodaj studenta"/>
			</div>
		</form>
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
					<td><a href="/admin/brisanje/student/${student.id}">obrisi</a></td>
				</tr>
			</c:forEach>
		</table>
		<h2>Predmeti</h2>
		<form action="/admin/dodavanje/predmet" method="post">
			<div>
				<p>Ime:</p> <input type="text" name="ime"/>
				<p>Id profesora:</p> <input type="text" name="profesor.id"/>
				<p><input type="submit" value="Dodaj predmet"/>
			</div>
		</form>
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
					<td><a href="/admin/brisanje/predmet/${predmet.id}">obrisi</a></td>
				</tr>
			</c:forEach>
		</table>
		<h2>Ispiti</h2>
		<form action="/admin/dodavanje/ispit" method="post">
			<div>
				<p>Id profesora:</p> <input type="text" name="profesor.id"/>
				<p>Id predmeta:</p> <input type="text" name="predmet.id"/>
				<p>Id studenta:</p> <input type="text" name="studenti"/>
				<p>Datum ispita:</p> <input type="text" name="datum"/>
				<p><input type="submit" value="Dodaj ispit"/>
			</div>
		</form>
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
						</c:forEach>
					</td>
					<td><c:out value="${ispit.datum}"/></td>
					<td><a href="/admin/brisanje/ispit/${ispit.id}">obrisi</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</body>
</html>