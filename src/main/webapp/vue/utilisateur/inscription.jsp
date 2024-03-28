<div class="" style="margin-top: 3%; margin-right: 2%; margin-left: 2%;">
	<!-------------------------------------------------- MSG D ALERTE -------------------------------------------------------->
	<c:if test="${msnType.equals('KO')}">
		<div role="alert">
			<div class="alert alert-danger" role="alert">

				<p>
					Erreur

					<c:out value="${msn }"></c:out>
				</p>
			</div>
		</div>
	</c:if>

	<c:if test="${msnType.equals('OK')}">
		<div role="alert">
			<div class="alert alert-success" role="alert">


				<p>
					Succès
					<c:out value="${msn }"></c:out>
				</p>
			</div>
		</div>
	</c:if>

	<!-------------------------------------------------- FORM INSCRIPTION -------------------------------------------------------->
	<!-- <form method="post"
		class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
		<h1 style="text-align: center;"
			class=" text-4xl underline underline-offset-3 decoration-8 decoration-blue-400 dark:decoration-blue-600">Inscription</h1>
		<div class="mb-4">
			<label class="block text-gray-700 text-sm font-bold mb-2"
				for="username"> Prénom </label> <input name="prenom"
				class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
				id="username" type="text" placeholder="Prenom">
		</div>
		<div class="mb-4">
			<label class="block text-gray-700 text-sm font-bold mb-2"
				for="username"> Nom: </label> <input name="nom"
				class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
				type="text" placeholder="Nom">
		</div>
		<div class="mb-4">
			<label class="block text-gray-700 text-sm font-bold mb-2"
				for="username"> Pseudo: </label> <input name="pseudo"
				class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
				type="text" placeholder="Pseudo">
		</div>
		<div class="mb-4">
			<label class="block text-gray-700 text-sm font-bold mb-2"
				for="username"> Age: </label> <input name="age"
				class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
				type="number" placeholder="Pseudo">
		</div>
		<div class="mb-4">
			<label class="block text-gray-700 text-sm font-bold mb-2"
				for="username">Email:</label> <input name="mail"
				class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
				type="email" placeholder="example@example.fr">
		</div>
		<div class="mb-6">
			<label class="block text-gray-700 text-sm font-bold mb-2"
				for="password"> Mot de passe: </label> <input name="mdp"
				class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
				id="password" type="password" placeholder="******************">
		</div>
		<div class="flex items-center justify-between">
			<button
				class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
				type="submit">S'inscrire</button>
		</div>
	</form>
</div> -->

	<section class="h-100">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col">
					<div class="card card-registration my-4">
						<div class="row g-0">
							<div class="col-xl-6 d-none d-xl-block">
								<img src="" alt="Sample photo" class="img-fluid"
									style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
							</div>
							<div class="col-xl-6">
								<div class="card-body p-md-5 text-black">
									<h3 class="mb-5 text-uppercase">Inscription</h3>
									<form method="post">
										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="text" id="form3Example1m" name="prenom"
														class="form-control form-control-lg" /> <label
														class="form-label" for="form3Example1m">Prenom</label>
												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="text" id="form3Example1n" name="nom"
														class="form-control form-control-lg" /> <label
														class="form-label" for="form3Example1n">Nom</label>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="password" id="form3Example8" name="mdp"
														class="form-control form-control-lg" /> <label
														class="form-label" for="form3Example8">Mot de
														passe : </label>

												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="number" id="form3Example8" name="age"
														class="form-control form-control-lg" /> <label
														class="form-label" for="form3Example8">Age</label>
												</div>
											</div>
										</div>
										<div class="form-outline mb-4">
											<div class="form-outline">
												<input type="text" id="form3Example1m1" name="pseudo"
													class="form-control form-control-lg" /> <label
													class="form-label" for="form3Example1m1">Pseudo</label>
											</div>
										</div>


										<div class="form-outline mb-4">
											<input type="text" id="form3Example1n1" name="mail"
												class="form-control form-control-lg" /> <label
												class="form-label" for="form3Example1n1">Email</label>

										</div>

										<!-- <div
											class="d-md-flex justify-content-start align-items-center mb-4 py-2">

											<h6 class="mb-0 me-4">Sexe:</h6>

											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-check-input" type="radio" name="sexe"
													id="femaleGender" value="option1" /> <label
													class="form-check-label" for="femaleGender">Femme</label>
											</div>

											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-check-input" type="radio" name="sexe"
													id="maleGender" value="option2" /> <label
													class="form-check-label" for="maleGender">Homme</label>
											</div>

											<div class="form-check form-check-inline mb-0">
												<input class="form-check-input" type="radio" name="sexe"
													id="otherGender" value="option3" /> <label
													class="form-check-label" for="otherGender">Autre</label>
											</div>

										</div>
 -->

										<div class="d-flex justify-content-end pt-3">
											<button type="button" class="btn btn-light btn-lg">Reset
												all</button>
											<button type="submit" class="btn btn-warning btn-lg ms-2">S'inscrire</button>
										</div>

									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
</section>