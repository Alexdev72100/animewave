<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
h1 {
	text-align: center;
}

.card img {
	width: 100%;
	height: 25rem;
	object-fit: cover;
}

.card {
	border-radius: 15%;
	width: 18rem;
	position: relative;
	display: inline-block;
	margin: 10px;
}

.card .overlay {
	cursor: pointer;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	color: #fff;
	display: none;
	justify-content: center;
	align-items: center;
}

.card:hover .overlay {
	display: flex;
}
</style>

<h1>Liste des Animes</h1>

<div class="container">
    <div>
        <c:forEach items="${animes}" var="anime">
            <div class="card" style="width: 18rem;">
                <img src="assets/img/<c:out value="${anime.image}" />" class="card-img-top" alt="...">
                <div class="overlay">
                    <div style="display: flex; flex-direction: column; align-items: center;">
                        <h5 class="card-title"><c:out value="${anime.titre_anime}"></c:out></h5>
                       <a href="anime?action=detail&id=<c:out value='${anime.id_anime}' />" class="btn text-white btn-lg btn-floating" style="background-color: #1c228a; width: 3em;" role="button">
    <i class="fas fa-eye"></i>
</a>

                    
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
