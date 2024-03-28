<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- 

<main class="profile-page">
	<section class="relative block h-500-px">
		<div class="absolute top-0 w-full h-full bg-center bg-cover"
			style="background-image: url('https://images.unsplash.com/photo-1499336315816-097655dcfbda?ixlib=rb-1.2.1&amp;amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;amp;auto=format&amp;amp;fit=crop&amp;amp;w=2710&amp;amp;q=80');">
			<span id="blackOverlay"
				class="w-full h-full absolute opacity-50 bg-black"></span>
		</div>
		<div
			class="top-auto bottom-0 left-0 right-0 w-full absolute pointer-events-none overflow-hidden h-70-px"
			style="transform: translateZ(0px)">
			<svg class="absolute bottom-0 overflow-hidden"
				xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="none"
				version="1.1" viewBox="0 0 2560 100" x="0" y="0">
        <polygon class="text-blueGray-200 fill-current"
					points="2560 0 2560 100 0 100"></polygon>
      </svg>
		</div>
	</section>
	<section class="relative py-16 bg-blueGray-200">
		<div class="container mx-auto px-4 " style="margin-top: 20%;">
			<div
				class="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-xl rounded-lg -mt-64">
				<div class="px-6">
					<div class="flex flex-wrap justify-center">
						<div class="w-full lg:w-3/12 px-4 lg:order-2 flex justify-center">
							<div class="relative">
								<img alt="..."
									src="https://demos.creative-tim.com/notus-js/assets/img/team-2-800x800.jpg"
									class="shadow-xl rounded-full h-auto align-middle border-none absolute -m-16 -ml-20 lg:-ml-16 max-w-150-px">
							</div>
						</div>
						<div
							class="w-full lg:w-4/12 px-4 lg:order-3 lg:text-right lg:self-center">

						</div>
						<div class="w-full lg:w-4/12 px-4 lg:order-1">
							<div class="flex justify-center py-4 lg:pt-4 pt-8">
								<div class="mr-4 p-3 text-center">
									<span
										class="text-xl font-bold block uppercase tracking-wide text-blueGray-600">22</span><span
										class="text-sm text-blueGray-400">Amis</span>
								</div>
								<div class="mr-4 p-3 text-center">
									<span
										class="text-xl font-bold block uppercase tracking-wide text-blueGray-600">10</span><span
										class="text-sm text-blueGray-400">Anime</span>
								</div>
								<div class="lg:mr-4 p-3 text-center">
									<span
										class="text-xl font-bold block uppercase tracking-wide text-blueGray-600">89</span><span
										class="text-sm text-blueGray-400">Avis</span>
								</div>
							</div>
						</div>
					</div>
					<div class="text-center mt-12">
						<h3
							class="text-4xl font-semibold leading-normal mb-2 text-blueGray-700 mb-2">
							<c:out value="${currentUser.pseudo}" />
						</h3>
						<div
							class="text-sm leading-normal mt-0 mb-2 text-blueGray-400 font-bold uppercase">
							<i class="fas fa-map-marker-alt mr-2 text-lg text-blueGray-400"></i>
							<c:out value="${currentUser.prenom}" />
							,
							<c:out value="${currentUser.nom}" />
						</div>
						<div class="mb-2 text-blueGray-600 mt-10">
							<i class="fas fa-briefcase mr-2 text-lg text-blueGray-400"></i>Solution
							Manager - Creative Tim Officer
						</div>
						<div class="mb-2 text-blueGray-600">
							<i class="fas fa-university mr-2 text-lg text-blueGray-400"></i>University
							of Computer Science
						</div>
					</div>
					<div class="mt-10 py-10 border-t border-blueGray-200 text-center">
						<div class="flex flex-wrap justify-center">
							<div class="w-full lg:w-9/12 px-4">
								<p class="mb-4 text-lg leading-relaxed text-blueGray-700">
									Ceci sera la bio.</p>




								<!-- Modal toggle -->
								<button data-modal-target="static-modal"
									data-modal-toggle="static-modal"
									class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
									type="button">Toggle modal</button>

								<!-- Main modal -->
								<div id="static-modal" data-modal-backdrop="static"
									tabindex="-1" aria-hidden="true"
									class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
									<div class="relative p-4 w-full max-w-2xl max-h-full">
										<!-- Modal content -->
										<div
											class="relative bg-white rounded-lg shadow dark:bg-gray-700">
											<!-- Modal header -->
											<div
												class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
												<h3
													class="text-xl font-semibold text-gray-900 dark:text-white">
													Static modal</h3>
												<button type="button"
													class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
													data-modal-hide="static-modal">
													<svg class="w-3 h-3" aria-hidden="true"
														xmlns="http://www.w3.org/2000/svg" fill="none"
														viewBox="0 0 14 14">
                        <path stroke="currentColor"
															stroke-linecap="round" stroke-linejoin="round"
															stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                    </svg>
													<span class="sr-only">Close modal</span>
												</button>
											</div>
											<!-- Modal body -->
											<div class="p-4 md:p-5 space-y-4">
												<p
													class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
													With less than a month to go before the European Union
													enacts new consumer privacy laws for its citizens,
													companies around the world are updating their terms of
													service agreements to comply.</p>
												<p
													class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
													The European Union’s General Data Protection Regulation
													(G.D.P.R.) goes into effect on May 25 and is meant to
													ensure a common set of data rights in the European Union.
													It requires organizations to notify users as soon as
													possible of high-risk data breaches that could personally
													affect them.</p>
											</div>
											<!-- Modal footer -->
											<div
												class="flex items-center p-4 md:p-5 border-t border-gray-200 rounded-b dark:border-gray-600">
												<button data-modal-hide="static-modal" type="button"
													class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">I
													accept</button>
												<button data-modal-hide="static-modal" type="button"
													class="py-2.5 px-5 ms-3 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">Decline</button>
											</div>
										</div>
									</div>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="relative bg-blueGray-200 pt-8 pb-6 mt-8">
			<div class="container mx-auto px-4">
				<div
					class="flex flex-wrap items-center md:justify-between justify-center">
					<div class="w-full md:w-6/12 px-4 mx-auto text-center">
						<div class="text-sm text-blueGray-500 font-semibold py-1">
							Made with <a href="https://www.creative-tim.com/product/notus-js"
								class="text-blueGray-500 hover:text-gray-800" target="_blank">Notus
								JS</a> by <a href="https://www.creative-tim.com"
								class="text-blueGray-500 hover:text-blueGray-800"
								target="_blank"> Creative Tim</a>.
						</div>
					</div>
				</div>
			</div>
		</footer>
	</section>
</main> --%>

<c:if test="${msnType.equals('KO')}">
		<div role="alert">
			<div class="alert alert-danger" role="alert">

				<p>
					Erreur
<br>
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
	<div class="container py-5" style="margin-top:4%">

		<div class="row">
			<div class="col-lg-4">
				<div class="card mb-4">
					<div class="card-body text-center">
						<img
							src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp"
							alt="avatar" class="rounded-circle img-fluid"
							style="width: 150px;">
						<h5 class="my-3">
							<c:out value="${currentUser.pseudo}" />
						</h5>
						<p class="text-muted mb-1">
							<c:out value="${currentUser.age}" />
							ans
						</p>
						<div class="d-flex justify-content-center mb-2">
							<button type="button" class="btn btn-primary">Follow</button>
							<button type="button" class="btn btn-outline-primary ms-1">Message</button>
						</div>
					</div>
				</div>
				<div class="card mb-4 mb-lg-0">
					<div class="card-body p-0">
						<ul class="list-group list-group-flush rounded-3">
							<li
								class="list-group-item d-flex justify-content-between align-items-center p-3">
								<i class="fas fa-globe fa-lg text-warning"></i>
								<p class="mb-0">https://mdbootstrap.com</p>
							</li>
							<li
								class="list-group-item d-flex justify-content-between align-items-center p-3">
								<i class="fab fa-github fa-lg" style="color: #333333;"></i>
								<p class="mb-0">mdbootstrap</p>
							</li>
							<li
								class="list-group-item d-flex justify-content-between align-items-center p-3">
								<i class="fab fa-twitter fa-lg" style="color: #55acee;"></i>
								<p class="mb-0">@mdbootstrap</p>
							</li>
							<li
								class="list-group-item d-flex justify-content-between align-items-center p-3">
								<i class="fab fa-instagram fa-lg" style="color: #ac2bac;"></i>
								<p class="mb-0">mdbootstrap</p>
							</li>
							<li
								class="list-group-item d-flex justify-content-between align-items-center p-3">
								<i class="fab fa-facebook-f fa-lg" style="color: #3b5998;"></i>
								<p class="mb-0">mdbootstrap</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-8">
				<div class="card mb-4">
					<div class="card-body">
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">Prénom et nom :</p>
							</div>
							<div class="col-sm-9">
								<p class="text-muted mb-0">
									<c:out value="${currentUser.prenom}" />
									,
									<c:out value="${currentUser.nom}" />
								</p>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">Email</p>
							</div>
							<div class="col-sm-9">
								<p class="text-muted mb-0">
									<c:out value="${currentUser.mail}" />
								</p>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">Age</p>
							</div>
							<div class="col-sm-9">
								<p class="text-muted mb-0">
									<c:out value="${currentUser.age}" />
									ans
								</p>
							</div>
						</div>
					</div>
				</div>
				<!--   <div class="row">
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status
                </p>
                <p class="mb-1" style="font-size: .77rem;">Web Design</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
                <div class="progress rounded mb-2" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
            </div>
          </div> -->
				<!-- <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status
                </p>
                <p class="mb-1" style="font-size: .77rem;">Web Design</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
                <div class="progress rounded mb-2" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div> 
            </div>
          </div>
        </div>
      </div>-->
				<div class="d-flex justify-content-center mb-2">
					<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deactivateModal">Supprimez votre compte</button>
					<button type="button" class="btn btn-primary"
						data-bs-toggle="modal" data-bs-target="#staticBackdrop">
						Modifier votre compte</button>
				</div>
				<!-- Button trigger modal -->
<!--------------------------------------- Modal DELETE -------------------------------------->

<div class="modal fade" id="deactivateModal" tabindex="-1" aria-labelledby="deactivateModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content border-3 border-danger">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="deactivateModalLabel">Desactivation de compte</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class=" fw-bold">êtes-vous sur de vouloir desactiver votre compte ?</div>
        <div class="opacity-75">Si oui, veuillez confirmer votre décision en saisissant votre mot de passe :</div>
        <form id="deactivateForm" method="post">
        	<input type="hidden" class="form-control" name="formSubmited" value="suppAccount">
			<input type="hidden" class="form-control" id="userIDtoDeactivate" name="userIDtoDeactivate">
	        <input type="password" class="form-control mt-3" id="pwdForDeactivation" name="pwdForDeactivation" placeholder="Saisissez votre mot de passe">
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
        <button type="submit" form="deactivateForm" class="btn btn-outline-danger">Desactiver mon compte</button>
      </div>
    </div>
  </div>
</div>

		<!--------------------------------------- Modal EDITER -------------------------------------->
				<div class="modal fade" id="staticBackdrop"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h1 class="modal-title fs-5" id="staticBackdropLabel">Modal
									title</h1>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<form method="post">
									<input type="hidden" class="form-control" name="formSubmited"
										value="editAccount"> <input type="hidden"
										class="form-control" id="exampleInputEmail1" name="id"
										value="<c:out value="${currentUser.id_utilisateur }"/>">
									<label>Prenom</label> <input type="text" class="form-control"
										name="prenom" aria-describedby="emailHelp"
										value="${currentUser.prenom}"> <label>Nom</label> <input
										type="text" class="form-control" name="nom"
										aria-describedby="emailHelp" value="${currentUser.nom}">
									<label for="" class="form-label">Pseudo</label> <input
										type="text" class="form-control" id="" name="pseudo"
										value="<c:out value="${currentUser.pseudo }"/>"> <label
										for="" class="form-label">Age</label> <input type="number"
										class="form-control" id="" name="age"
										value="<c:out value="${currentUser.age }"/>"> <label>Email</label>
									<input type="email" class="form-control" name="mail"
										aria-describedby="emailHelp" value="${currentUser.mail}">
									<label>Ancien mot de passe</label> <input type="password"
										class="form-control" name="mail" aria-describedby="emailHelp"
										name="ancien_motdepasse" value="${currentUser.mdp}"> <label
										for="exampleInputPassword1" class="form-label">
										Nouveau mot de passe: </label> <input type="password"
										class="form-control" name="nouveau_motdepasse"
										id="exampleInputPassword1"> <label
										for="exampleInputPassword1" class="form-label">
										Confirmez mot de passe: </label> <input type="password"
										class="form-control" name="motdepasse"
										id="exampleInputPassword1">



									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Fermer</button>
										<button type="submit" class="btn btn-primary">Sauvegarder</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>




			</div>
		</div>

<script src="./src/main/webapp/vue/JS/main.js"></script>