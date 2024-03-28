<c:if test="${msnType.equals('KO')}">
	<div role="alert">
		<div class="bg-red-500 text-white font-bold rounded-t px-4 py-2">
			Erreur</div>
		<div
			class="border border-t-0 border-red-400 rounded-b bg-red-100 px-4 py-3 text-red-700">
			<p>
				<c:out value="${msn }"></c:out>
			</p>
		</div>
	</div>
</c:if>

<c:if test="${msnType.equals('OK')}">
	<div role="alert">
		<div class="bg-green-500 text-white font-bold rounded-t px-4 py-2">
			Success</div>
		<div
			class="border border-t-0 border-green-400 rounded-b bg-green-100 px-4 py-3 text-green-700">
			<p>
				<c:out value="${msn }"></c:out>
			</p>
		</div>
	</div>
</c:if>


<div class="container" style="margin-top: 7%;margin-bottom: 3%">
    <h1>Fiche d'ajout d'animés</h1>
    
    <form method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="" class="form-label">Titre</label>
            <input type="text" class="form-control" name="titre_anime" value="${anime.titre_anime}">
            <input type="hidden" class="form-control" name="id" value="${anime.id_anime}">
        </div>
        <div class="mb-3">
            <label for="epp" class="form-label">Auteur</label>
            <input type="text" class="form-control" name="auteur_anime" value="${anime.auteur_anime}">
        </div>
        <div class="mb-3">
            <label for="" class="form-label">Studio</label>
            <input type="text" class="form-control" name="studio" value="${anime.studio}">
        </div>
        <div class="mb-3">
            <label for="" class="form-label">Description</label>
            <input type="text" class="form-control" name="description" value="${anime.description}">
        </div>
        <div class="mb-3">
            <label for="" class="form-label">Date de parution</label>
            <input type="date" class="form-control" name="dateCrea" value="${anime.dateCreation}">
        </div>
        <div class="mb-3">
            <label for="" class="form-label">Date de fin</label>
            <input type="date" class="form-control" name="dateEnd" value="${anime.dateTerminer}">
        </div>
        <div class="mb-3">
            <label for="" class="form-label">Nouvelle image</label>
            <input type="file" class="form-control" name="image_anime">
        </div>
        <div class="mb-3">
            <input type="hidden" class="form-control" name="image_name" value="${anime.image}">
        </div>
        <button type="submit" class="btn btn-primary">
            <c:out value="${not empty anime.id ? 'Edit' : 'Ajout' }"></c:out>
        </button>
    </form>
</div>
