
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
#article {
	margin-top: 2%;
	box-shadow: 5px 2px 10px -7px rgba(0, 0, 0, 0.86);
	box-shadow: 50%;
	border-radius: 1%;
}
</style>
<div class="container" style="margin-top: 7%">
	<!-- SHOW ARTICLE -->


	<div id="demo" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="card">
					<div class="row" style="width:50%">
						<div class="col-md-6 text-center align-self-center">
							<img src="assets/img/<c:out value="${anime.image}" />"
								class="card-img-top" alt="...">
						</div>
						<div class="col-md-6 info">
							<div class="row title">
								<div class="col">
									<h2><c:out value="${anime.titre_anime}" /></h2>
								</div>
								<div class="col text-right">
									<a href="#"><i class="fa fa-heart-o"></i></a>
								</div>
							</div>
							<p><c:out value="${anime.description}" /></p>
					
							<div class="row price">
								
										<div class="row">
											<c:out value="${anime.studio}" />
										</div>
										<div class="row"><c:out value="${anime.dateCreation}" /></div> 
								
								
										<div class="row">
										
										<c:out value="${anime.dateTerminer}" /></div> 
								
								
							</div>
						</div>
					</div>
					<div class="row lower">
						<div class="col">
							<a class="carousel-control-prev" href="#demo" data-slide="prev"><i
								class="fa fa-arrow-left"></i></a> <a class="carousel-control-next"
								href="#demo" data-slide="next"><i class="fa fa-arrow-right"></i></a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>










