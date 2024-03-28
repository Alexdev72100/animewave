

<div class="container" style="margin-top: 6%">
	<h1>Liste des mangas</h1>
	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th scope="col">id</th>
				<th scope="col">Titre</th>
				<th scope="col">Auteur</th>
				<th scope="col">Edition</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${mangas}" var="manga">
				<tr>
					<td><c:out value="${manga.id_livre}" /></td>
					<td><c:out value="${manga.nom_livre}" /></td>
					<td><c:out value="${manga.auteur}" /></td>
					<td><c:out value="${manga.edition}" /></td>
					<td><a href="admin?action=editmanga&id=${manga.id_livre}"
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