

<div class="container" style="margin-top: 3%">
	<h1>Liste des animés</h1>
	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th scope="col">id</th>
				<th scope="col">Titre</th>
				<th scope="col">Auteur</th>
				<th scope="col">Studio</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${animes}" var="anime">
				<tr>
					<td><c:out value="${anime.id_anime}" /></td>
					<td><c:out value="${anime.titre_anime}" /></td>
					<td><c:out value="${anime.auteur_anime}" /></td>
					<td><c:out value="${anime.studio}" /></td>
					<td><a href="admin?action=editanime&id=${anime.id_anime}"
						class="btn text-white btn-lg btn-floating"
						style="background-color: #1c228a; width: 3em;" role="button">
							<i class="fa-solid fa-pen-to-square"></i>
					</a> <a href="admin?action=ajout"
						class="btn text-white btn-lg btn-floating"
						style="background-color: #1c228a; width: 3em;" role="button">
							<i class="fa-solid fa-plus"></i>
					</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>