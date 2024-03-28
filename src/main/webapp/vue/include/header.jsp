<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<header>
	<nav class="navbar navbar-expand-lg  bg-dark"
		style="position: fixed; top: 0%; width: 100%; z-index: 1000;">
		<div class="container-fluid">
			<a class="navbar-brand text-light" href="accueil"
				style="display: flex; padding-top: 1% !important; font-size: 125%;">Anime
				<p class="title">wave</p>
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation" style="background-color: darkblue;">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active text-light"
						aria-current="page" href="accueil">Accueil</a></li>
					<li class="nav-item"><a class="nav-link text-light"
						href="anime">Anime</a></li>
					<li class="nav-item"><a class="nav-link text-light"
						href="manga">Manga</a></li>

					<li class="nav-item"><a class="nav-link text-light"
						href="admin?action=accueil">Admin</a></li>

				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-info" type="submit"
						style="margin-right: 5%;">Search</button>
				</form>
				<c:if test="${empty currentUser}">
					<a href="connexion">
						<button type="button" class="btn btn-info">Connexion</button>
					</a>

					<a href="inscription">
						<button type="button" style="margin-left: 5%;"
							class="btn btn-info">Inscription</button>
					</a>
				</c:if>
				<c:if test="${not empty currentUser}">
					<a href="profil">
						<button type="button" class="btn btn-info">Mon Profil</button>
					</a>
					<a href="deconnexion">
						<button type="button" class="btn btn-secondary">Déconnexion</button>
					</a>
				</c:if>
			</div>
		</div>
	</nav>
</header>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link href="src/main/webapp/assets/main.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Animewave</title>
</head>
<style>
nav {
	font-size: 125%;
}

.btn {
	font-size: 85%;
	background-color: darkblue;
	border-color: darkblue;
	color: dark !important;
	font-weight: bold;
}

.title {
	color: darkblue;
}

.btn:hover {
	border-color: #00008b8a !important;
	background-color: #00008b8a !important;
}
</style>
<body style="background-color: #00000030;">