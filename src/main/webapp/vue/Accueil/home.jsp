
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
			Succès</div>
		<div
			class="border border-t-0 border-green-400 rounded-b bg-green-100 px-4 py-3 text-green-700">
			<p>
				<c:out value="${msn }"></c:out>
			</p>
		</div>
	</div>
</c:if>

<<div class="container-fluid bg-dark hero-header mb-5" style="margin-top: -2%; background-image: url('assets/img/home1.jpeg'); background-size: cover;">
    <div class="container my-5 py-5">
        <div class="container my-5 py-5">
            <div class="row align-items-center g-5">
                <div class="col-lg-6 text-center text-lg-start">
                    <h1 class="display-3 text-white animated slideInLeft">
                        AnimeWave</h1>
                    <p class="text-white animated slideInLeft mb-4 pb-2">Bienvenue sur notre site dédié aux amateurs d'anime et de manga ! Ici, vous trouverez une vaste sélection de listes d'animes et de mangas que vous avez déjà visionnés ou lus. Notre plateforme vous permet de garder une trace de vos visionnages et lectures, tout en partageant vos avis et recommandations avec une communauté passionnée. Que vous soyez un fervent fan ou un novice curieux, notre site vous offre l'opportunité de découvrir de nouveaux titres, d'explorer des genres variés et de vous immerger dans l'univers fascinant de l'animation japonaise et des bandes dessinées. Rejoignez-nous dès maintenant pour partager votre passion et enrichir votre expérience anime et manga !</p>
                    <a href="anime" class="btn btn-primary py-sm-3 px-sm-5 me-3 animated slideInLeft">Anime</a>
                </div>
                <div class="col-lg-6 text-center text-lg-end overflow-hidden">
                    <div style="background-color: rgba(0, 0, 0, 0.5); width: 100%; height: 100%;">
                        <!-- Contenu de superposition (overlay) -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


