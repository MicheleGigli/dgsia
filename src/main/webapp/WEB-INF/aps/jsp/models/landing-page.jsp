<%@ taglib prefix="wp" uri="/aps-core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="<wp:info key="currentLang" />">

<head>
<title><wp:currentPage param="title" /> - <wp:i18n
		key="PORTAL_TITLE" /></title>

<jsp:include page="inc/header-inclusions.jsp" />
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
</head>

<body>











	<%-- 
	<wp:show frame="2" />
	<wp:show frame="3" />
	<wp:show frame="4" />
	<wp:show frame="5" />
	<wp:show frame="6" />
	<wp:show frame="7" />
	<wp:show frame="8" />
	<wp:show frame="9" />
	<wp:show frame="10" />
	<wp:show frame="11" />
	<wp:show frame="12" />
	<wp:show frame="13" />
	--%>
	<div class="cookiebar bg-dark p-4 hide" aria-hidden="true">
		<p class="text-white">
			Questo sito utilizza cookie tecnici, analytics e di terze parti. <br>Proseguendo
			nella navigazione accetti l'utilizzo dei cookie.<br>
		</p>
		<p>
			<button data-accept="cookiebar" class="btn btn-info mr-2">Accetto</button>
			<a href="" class="btn btn-outline-info">Privacy policy</a>
		</p>
	</div>


	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="#">Ministero della Giustizia</a>
		</div>
		<div>
			<wp:show frame="0" />
		</div>
	</nav>
	<div class="header">
		<div class="container py-5">
			<div class="row">
				<div class="col-12 col-md-6">
					<img class="img-fluid" src="img/logo-Tribunale-di-Torino.png">
				</div>

				<div class="col-12 col-md-6">
					<div class="navbar-expand-md header-utils">
						<div class="header-social text-right">
							<ul class="list-inline">
								<li class="list-inline-item">Seguici su</li>
								<li class="list-inline-item"><a href=""><svg
											class="icon icon-primary">
                                            <use
												xlink:href="svg/sprite.svg#it-facebook "></use>
                                        </svg></a></li>
								<li class="list-inline-item"><a href=""><svg
											class="icon icon-primary">
                                            <use
												xlink:href="svg/sprite.svg#it-twitter"></use>
                                        </svg></a></li>
								<li class="list-inline-item"><a href=""><svg
											class="icon icon-primary">
                                            <use
												xlink:href="svg/sprite.svg#it-youtube"></use>
                                        </svg></a></li>
							</ul>
						</div>
						<form class="form-inline my-2 my-lg-0 collapse navbar-collapse"
							id="searchForm">

							<wp:show frame="1" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg bg-dark">
		<div class="container">
			<div
				class="col-12 d-block d-sm-block d-md-none text-right align-middle">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNavB" aria-controls="navbarNavB"
					aria-expanded="false" aria-label="Toggle navigation">
					<svg class="icon icon-light">
                        <use xlink:href="svg/sprite.svg#it-burger "></use>
                    </svg>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navbarNavB">
				<div class="close-div">
					<button class="btn close-menu" type="button">
						<span class="it-close"></span>close
					</button>
				</div>
				<div class="menu-wrapper bg-dark">
					<ul class="navbar-nav">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-expanded="false"> <span>Il Tribunale</span> <svg
									class="icon-expand icon icon-sm icon-light">
                                    <use
										xlink:href="svg/sprite.svg#it-expand"></use>
                                </svg>
						</a>
							<div class="dropdown-menu">
								<div class="link-list-wrapper">
									<ul class="link-list">
										<li>
											<h3>Heading</h3>
										</li>
										<li><a class="list-item" href="#"><span>Link
													list 1 </span></a></li>
										<li><a class="list-item" href="#"><span>Link
													list 2</span></a></li>
										<li><a class="list-item" href="#"><span>Link
													list 3 </span></a></li>
										<li><span class="divider"></span></li>
										<li><a class="list-item" href="#"><span>Link
													list 4 </span></a></li>
									</ul>
								</div>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-expanded="false"> <span>Per il Cittadino</span> <svg
									class="icon-expand icon icon-sm icon-light">
                                    <use
										xlink:href="svg/sprite.svg#it-expand"></use>
                                </svg>
						</a>
							<div class="dropdown-menu">
								<div class="link-list-wrapper">
									<ul class="link-list">
										<li>
											<h3>Heading</h3>
										</li>
										<li><a class="list-item" href="#"><span>Link
													list 1 </span></a></li>
										<li><a class="list-item" href="#"><span>Link
													list 2</span></a></li>
										<li><a class="list-item" href="#"><span>Link
													list 3 </span></a></li>
										<li><span class="divider"></span></li>
										<li><a class="list-item" href="#"><span>Link
													list 4 </span></a></li>
									</ul>
								</div>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-expanded="false"> <span>Per il Professionista</span> <svg
									class="icon-expand icon icon-sm icon-light">
                                    <use
										xlink:href="svg/sprite.svg#it-expand"></use>
                                </svg>
						</a>
							<div class="dropdown-menu">
								<div class="link-list-wrapper">
									<ul class="link-list">
										<li>
											<h3>Heading</h3>
										</li>
										<li><a class="list-item" href="#"><span>Link
													list 1 </span></a></li>
										<li><a class="list-item" href="#"><span>Link
													list 2</span></a></li>
										<li><a class="list-item" href="#"><span>Link
													list 3 </span></a></li>
										<li><span class="divider"></span></li>
										<li><a class="list-item" href="#"><span>Link
													list 4 </span></a></li>
									</ul>
								</div>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-expanded="false"> <span>Per l'Amministrazione</span> <svg
									class="icon-expand icon icon-sm icon-light">
                                    <use
										xlink:href="svg/sprite.svg#it-expand"></use>
                                </svg>
						</a>
							<div class="dropdown-menu">
								<div class="link-list-wrapper">
									<ul class="link-list">
										<li>
											<h3>Heading</h3>
										</li>
										<li><a class="list-item" href="#"><span>Link
													list 1 </span></a></li>
										<li><a class="list-item" href="#"><span>Link
													list 2</span></a></li>
										<li><a class="list-item" href="#"><span>Link
													list 3 </span></a></li>
										<li><span class="divider"></span></li>
										<li><a class="list-item" href="#"><span>Link
													list 4 </span></a></li>
									</ul>
								</div>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-expanded="false"> <span>Come fare per </span> <svg
									class="icon-expand icon icon-sm icon-light">
                                    <use
										xlink:href="svg/sprite.svg#it-expand"></use>
                                </svg>
						</a>
							<div class="dropdown-menu">
								<div class="link-list-wrapper">
									<ul class="link-list">
										<li>
											<h3>Heading</h3>
										</li>
										<li><a class="list-item" href="#"><span>Link
													list 1 </span></a></li>
										<li><a class="list-item" href="#"><span>Link
													list 2</span></a></li>
										<li><a class="list-item" href="#"><span>Link
													list 3 </span></a></li>
										<li><span class="divider"></span></li>
										<li><a class="list-item" href="#"><span>Link
													list 4 </span></a></li>
									</ul>
								</div>
							</div></li>
						<li class="nav-item dropdown ml-auto"><a href="#"
							class="nav-link px-0"><span
								class="btn btn-outline-primary btn-sm py-1 px-3"><wp:show
										frame="3" /></span></a></li>
					</ul>
				</div>
			</div>
			<span></span>
			<button class="custom-navbar-toggler" type="button"
				aria-controls="navbarNavB" aria-expanded="false"
				aria-label="Toggle navigation" data-target="#navbarNavB">
				<span class="it-list"></span>
			</button>
		</div>
	</nav>

<%-- BODY	--%>


	<wp:show frame="5" />
	<wp:show frame="6" />

	<section id="section3" class="bg-link">
		<div class="container py-4">
			<div class="card-deck">

				<wp:show frame="7" />
			</div>
		</div>
	</section>
	
	<wp:show frame="8" />
	<wp:show frame="9" />

	<%-- FOOTER	--%>


	<footer class="footer bg-300 py-5">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="media footer-title">
						<img class="img-fluid mb-3" data-src="" alt=""
							src="img/logo-Tribunale-di-Torino-trasparente.png"
							data-holder-rendered="true">
						<div class="media-body">
							<span class="sr-only">Nome della Pubblica Amministrazione</span>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col my-3">
					<h2 class="display-3 mb-4">Argomento 1</h2>
					<ul class="list-group list-group-flush">
						<li class="list-group-item"><a href="">blanditiis soluta
								exercitationem</a></li>
						<li class="list-group-item"><a href="">voluptatem
								eligendi laboriosam</a></li>
						<li class="list-group-item"><a href="">laboriosam porro
								dolor</a></li>
						<li class="list-group-item"><a href="">sed et velit</a></li>
					</ul>
				</div>

				<div class="col my-3">
					<h2 class="display-3 mb-4">Argomento 2</h2>
					<ul class="list-group list-group-flush">
						<li class="list-group-item"><a href="">blanditiis soluta
								exercitationem</a></li>
						<li class="list-group-item"><a href="">voluptatem
								eligendi laboriosam</a></li>
						<li class="list-group-item"><a href="">laboriosam porro
								dolor</a></li>
						<li class="list-group-item"><a href="">sed et velit</a></li>
					</ul>
				</div>

				<div class="col my-3">
					<h2 class="display-3 mb-4">Argomento 3</h2>
					<ul class="list-group list-group-flush">
						<li class="list-group-item"><a href="">blanditiis soluta
								exercitationem</a></li>
						<li class="list-group-item"><a href="">voluptatem
								eligendi laboriosam</a></li>
						<li class="list-group-item"><a href="">laboriosam porro
								dolor</a></li>
						<li class="list-group-item"><a href="">sed et velit</a></li>
					</ul>
				</div>

				<div class="col my-3">
					<h2 class="display-3 mb-4">Argomento 4</h2>
					<ul class="list-group list-group-flush">
						<li class="list-group-item"><a href="">blanditiis soluta
								exercitationem</a></li>
						<li class="list-group-item"><a href="">voluptatem
								eligendi laboriosam</a></li>
						<li class="list-group-item"><a href="">laboriosam porro
								dolor</a></li>
						<li class="list-group-item"><a href="">sed et velit</a></li>
					</ul>
				</div>
			</div>

			<div class="row">
				<div class="col my-3">
					<h2 class="display-3 mb-4">Contatti</h2>
					<div>
						<h3 class="display-4">Recapiti</h3>
						<address>
							Via autem reiciendis maiores<br> autem reiciendis maiores<br>
							Tel. (+00) 00.0000.0000
						</address>
					</div>
				</div>

				<div class="col my-3">
					<h2 class="display-3 mb-4">Contatti</h2>
					<div>
						<h3 class="display-4">Recapiti</h3>
						<address>
							Via blanditiis soluta exercitationem<br> blanditiis soluta
							exercitationem<br> Tel. (+00) 00.0000.0000
						</address>
					</div>
				</div>

				<div class="col my-3">
					<h2 class="display-3 mb-4">Contatti</h2>
					<div>
						<h3 class="display-4">Indirizzo PEC</h3>
						<p>
							<a href="">indirizzo.pec@gov.it</a>
						</p>
					</div>
				</div>

				<div class="col my-3">
					<h2 class="display-3 mb-4">Seguici su</h2>
					<div>
						<ul class="list-inline">
							<li class="list-inline-item"><a href="" class=""><svg
										class="icon">
                                        <use
											xlink:href="svg/sprite.svg#it-facebook "></use>
                                    </svg></a></li>
							<li class="list-inline-item"><a href=""><svg
										class="icon">
                                        <use
											xlink:href="svg/sprite.svg#it-twitter"></use>
                                    </svg></a></li>
							<li class="list-inline-item"><a href=""><svg
										class="icon">
                                        <use
											xlink:href="svg/sprite.svg#it-youtube"></use>
                                    </svg></a></li>
						</ul>
					</div>
				</div>
			</div>

			<ul class="list-inline border-top">
				<li class="list-inline-item"><a href="" title="Privacy policy">Privacy</a></li>
				<li class="list-inline-item"><a href="" title="Note legali">Note
						legali</a></li>
				<li class="list-inline-item"><a href="" title="Contatti">Contatti</a></li>
				<li class="list-inline-item"><a href="" title="a est rerum">a
						est rerum</a></li>
				<li class="list-inline-item">autem reiciendis maiores</li>
			</ul>
		</div>
	</footer>

	<a href="#" data-attribute="return-to-top" class="return-to-top"><i
		class="it-collapse"></i><span class="sr-only">Collapse</span></a>
</body>

</html>