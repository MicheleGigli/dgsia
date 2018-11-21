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

	<%-- 0. Untitled Frame I  --%>
	<wp:show frame="0" />
	<%-- 1. Untitled Frame II  --%>
	<wp:show frame="1" />
	<%-- 2. Untitled Frame III  --%>
	<wp:show frame="2" />
	<%-- 3. Untitled Frame IV  --%>
	<wp:show frame="3" />
	<%-- 4. Untitled Frame V  --%>
	<wp:show frame="4" />
	<%-- 5. Untitled Frame VI  --%>
	<wp:show frame="5" />
	<%-- 6. Untitled Frame VII  --%>
	<wp:show frame="6" />
	<%-- 7. Untitled Frame VIII  --%>
	<wp:show frame="7" />
	<%-- 8. Untitled Frame IX  --%>
	<wp:show frame="8" />
	<%-- 9. Untitled Frame X  --%>
	<wp:show frame="9" />
	<%-- 10. Untitled Frame XI  --%>
	<wp:show frame="10" />
	<%-- 11. Untitled Frame XII  --%>
	<wp:show frame="11" />
	<%-- 12. Untitled Frame XIII  --%>
	<wp:show frame="12" />
	<%-- 13. Untitled Frame XIV  --%>
	<wp:show frame="13" />
	
	<div class="cookiebar bg-dark p-4 hide" aria-hidden="true">
        <p class="text-white">Questo sito utilizza cookie tecnici, analytics e di terze parti.
            <br>Proseguendo nella navigazione accetti l'utilizzo dei cookie.<br>
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
                                <li class="list-inline-item">
                                    <a href=""><svg class="icon icon-primary">
                                            <use xlink:href="svg/sprite.svg#it-facebook "></use>
                                        </svg></a>
                                </li>
                                <li class="list-inline-item">
                                    <a href=""><svg class="icon icon-primary">
                                            <use xlink:href="svg/sprite.svg#it-twitter"></use>
                                        </svg></a>
                                </li>
                                <li class="list-inline-item">
                                    <a href=""><svg class="icon icon-primary">
                                            <use xlink:href="svg/sprite.svg#it-youtube"></use>
                                        </svg></a>
                                </li>
                            </ul>
                        </div>
                        <form class="form-inline my-2 my-lg-0 collapse navbar-collapse" id="searchForm">
                            <input class="form-control mr-sm-2 ml-auto" type="text" placeholder="Cerca" aria-label="Search">
                            <button class="btn btn-primary my-2 my-sm-0" type="submit">Cerca</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg bg-dark">
        <div class="container">
            <div class="col-12 d-block d-sm-block d-md-none text-right align-middle">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavB" aria-controls="navbarNavB" aria-expanded="false" aria-label="Toggle navigation">
                    <svg class="icon icon-light">
                        <use xlink:href="svg/sprite.svg#it-burger "></use>
                    </svg>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="navbarNavB">
                <div class="close-div">
                    <button class="btn close-menu" type="button"><span class="it-close"></span>close</button>
                </div>
                <div class="menu-wrapper bg-dark">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                <span>Il Tribunale</span>
                                <svg class="icon-expand icon icon-sm icon-light">
                                    <use xlink:href="svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="dropdown-menu">
                                <div class="link-list-wrapper">
                                    <ul class="link-list">
                                        <li>
                                            <h3>Heading</h3>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 1 </span></a>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 2</span></a>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 3 </span></a>
                                        </li>
                                        <li><span class="divider"></span>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 4 </span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                <span>Per il Cittadino</span>
                                <svg class="icon-expand icon icon-sm icon-light">
                                    <use xlink:href="svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="dropdown-menu">
                                <div class="link-list-wrapper">
                                    <ul class="link-list">
                                        <li>
                                            <h3>Heading</h3>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 1 </span></a>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 2</span></a>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 3 </span></a>
                                        </li>
                                        <li><span class="divider"></span>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 4 </span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                <span>Per il Professionista</span>
                                <svg class="icon-expand icon icon-sm icon-light">
                                    <use xlink:href="svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="dropdown-menu">
                                <div class="link-list-wrapper">
                                    <ul class="link-list">
                                        <li>
                                            <h3>Heading</h3>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 1 </span></a>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 2</span></a>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 3 </span></a>
                                        </li>
                                        <li><span class="divider"></span>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 4 </span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                <span>Per l'Amministrazione</span>
                                <svg class="icon-expand icon icon-sm icon-light">
                                    <use xlink:href="svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="dropdown-menu">
                                <div class="link-list-wrapper">
                                    <ul class="link-list">
                                        <li>
                                            <h3>Heading</h3>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 1 </span></a>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 2</span></a>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 3 </span></a>
                                        </li>
                                        <li><span class="divider"></span>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 4 </span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                <span>Come fare per </span>
                                <svg class="icon-expand icon icon-sm icon-light">
                                    <use xlink:href="svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="dropdown-menu">
                                <div class="link-list-wrapper">
                                    <ul class="link-list">
                                        <li>
                                            <h3>Heading</h3>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 1 </span></a>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 2</span></a>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 3 </span></a>
                                        </li>
                                        <li><span class="divider"></span>
                                        </li>
                                        <li><a class="list-item" href="#"><span>Link list 4 </span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown ml-auto">
                            <a href="#" class="nav-link px-0"><span class="btn btn-outline-primary btn-sm py-1 px-3">Accedi</span></a>
                        </li>
                    </ul>
                </div>
            </div>
            <span></span>
            <button class="custom-navbar-toggler" type="button" aria-controls="navbarNavB" aria-expanded="false" aria-label="Toggle navigation" data-target="#navbarNavB">
                <span class="it-list"></span>
            </button>
        </div>
    </nav>

    <div class="hero hero-fluid">
        <div class="container">
            <h1 class="hero-heading display-4">Lorem Ipsum</h1>
            <p class="lead">Qui ipsorum lingua Celtae, nostra Galli appellantur.</p>
            <hr class="my-4">
            <p>Quid securi etiam tamquam eu fugiat nulla pariatur. Quae vero auctorem tractata ab fiducia dicuntur. Excepteur sint obcaecat cupiditat non proident culpa. Gallia est omnis divisa in partes tres, quarum. Plura mihi bona sunt, inclinet, amari petere vellent.</p>
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="#" role="button">Per saperne di più</a>
            </p>
        </div>
        <a href="#section1" data-attribute="forward" class="forward mt-3" aria-hidden="true">
            <i class="it-expand"></i>
        </a>
    </div>

    <main role="main">
        <section id="section1" class="bg-300">
            <div class="container py-4">
                <h2>Servizi</h2>
                <div class="card-deck servizi">
                    <div class="card border-0">
                        <div class="card-body p-0">
                            <img class="img-fluid" data-src="" alt="" src="img/cittadino.jpg" data-holder-rendered="true">
                            <h5 class="card-title bg-primary">Per il cittadino</h5>
                        </div>
                    </div>
                    <div class="card border-0">
                        <div class="card-body p-0">
                            <img class="img-fluid" data-src="" alt="" src="img/professionista.jpg" data-holder-rendered="true">
                            <h5 class="card-title bg-primary">Per il professionista</h5>
                        </div>
                    </div>
                    <div class="card border-0">
                        <div class="card-body p-0">
                            <img class="img-fluid" data-src="" alt="" src="img/amministrazione.jpg" data-holder-rendered="true">
                            <h5 class="card-title bg-primary">Per l'amministrazione</h5>
                        </div>
                    </div>
                </div>
            </div>
            <a href="#section2" data-attribute="forward" class="forward mt-3" aria-hidden="true">
                <i class="it-expand"></i>
            </a>
        </section>

        <section id="section2">
            <div class="container py-4">
                <h2>Notizie in primo piano</h2>
                <div class="card-deck">
                    <div class="card shadow rounded">
                        <div class="card-header">
                            <p class="card-text orange">
                                <span class="text-uppercase font-weight-bold">Atti giudiziari</span>
                                <small class="text-muted d-block">01 Giugno 2018</small>
                            </p>
                        </div>
                        <img class="img-fluid" data-src="" alt="" src="img/atti-giudiziari.jpg" data-holder-rendered="true">
                        <div class="card-body">
                            <h5 class="card-title">Notizia 4</h5>
                            <p class="card-text">A communi observantia non est recedendum. Curabitur blandit tempus ardua ridiculus sed magna. Quam diu etiam furor iste tuus nos eludet? Idque Caesaris facere voluntate liceret: sese habere.</p>
                        </div>
                    </div>
                    <div class="card shadow rounded">
                        <div class="card-header">
                            <p class="card-text azure">
                                <span class="text-uppercase font-weight-bold">Pubblicazioni</span>
                                <small class="text-muted d-block">30 Maggio 2018</small>
                            </p>
                        </div>
                        <img class="img-fluid" data-src="" alt="" src="img/pubblicazioni.jpg" data-holder-rendered="true">
                        <div class="card-body">
                            <h5 class="card-title">Notizia 5</h5>
                            <p class="card-text">Quisque placerat facilisis egestas cillum dolore. Curabitur blandit tempus ardua ridiculus sed magna.</p>
                        </div>
                    </div>
                    <div class="card shadow rounded">
                        <div class="card-header">
                            <p class="card-text violet">
                                <span class="text-uppercase font-weight-bold">Bandi</span>
                                <small class="text-muted d-block">23 Febbraio 2018</small>
                            </p>
                        </div>
                        <img class="img-fluid" data-src="" alt="" src="img/bandi.jpg" data-holder-rendered="true">
                        <div class="card-body">
                            <h5 class="card-title">Notizia 6</h5>
                            <p class="card-text">Nihil hic munitissimus habendi senatus locus, nihil horum? Nihilne te nocturnum praesidium Palati, nihil urbis vigiliae. Quisque placerat facilisis egestas cillum dolore.</p>
                        </div>
                    </div>
                </div>
                <div class="mt-3 text-right">
                    <a href="#" type="button" class="btn btn-primary">Tutte le notizie</a>
                </div>
            </div>
        </section>

        <section id="section3" class="bg-link">
            <div class="container py-4">
                <h2 class="text-white">Link utili</h2>
                <div class="card-deck">
                    <div class="card border-0 rounded">
                        <img class="img-fluid" data-src="" alt="" src="img/processo-telematico.jpg" data-holder-rendered="true">
                        <div class="card-body">
                            <h5 class="card-title">Processo telematico</h5>
                            <p class="card-text">A communi observantia non est recedendum. Curabitur blandit tempus ardua ridiculus sed magna. Quam diu etiam furor iste tuus nos eludet? Idque Caesaris facere voluntate liceret: sese habere.</p>
                            <a href="#" type="button" class="btn btn-outline-primary">Vai al sito</a>
                        </div>
                    </div>
                    <div class="card border-0 rounded">
                        <img class="img-fluid" data-src="" alt="" src="img/servizi-online.jpg" data-holder-rendered="true">
                        <div class="card-body">
                            <h5 class="card-title">Servizi Online</h5>
                            <p class="card-text">Quisque placerat facilisis egestas cillum dolore. Curabitur blandit tempus ardua ridiculus sed magna.</p>
                            <a href="#" type="button" class="btn btn-outline-primary">Vai al sito</a>
                        </div>
                    </div>
                    <div class="card border-0 rounded">
                        <img class="img-fluid" data-src="" alt="" src="img/aste-giudiziarie.jpg" data-holder-rendered="true">
                        <div class="card-body">
                            <h5 class="card-title">Aste Giudiziarie</h5>
                            <p class="card-text">Nihil hic munitissimus habendi senatus locus, nihil horum? Nihilne te nocturnum praesidium Palati, nihil urbis vigiliae. Quisque placerat facilisis egestas cillum dolore.</p>
                            <a href="#" type="button" class="btn btn-outline-primary">Vai al sito</a>
                        </div>
                    </div>
                    <div class="card border-0 rounded">
                        <img class="img-fluid" data-src="" alt="" src="img/normativa.jpg" data-holder-rendered="true">
                        <div class="card-body">
                            <h5 class="card-title">Normativa</h5>
                            <p class="card-text">A communi observantia non est recedendum. Curabitur blandit tempus ardua ridiculus sed magna. Quam diu etiam furor iste tuus nos eludet? Idque Caesaris facere voluntate liceret: sese habere.</p>
                            <a href="#" type="button" class="btn btn-outline-primary">Vai al sito</a>
                        </div>
                    </div>
                </div>
                <div class="mt-3 text-right view-all">
                    <a href="#" type="button" class="btn btn-outline-primary">Tutti i link utili</a>
                </div>
            </div>
        </section>

        <section id="section4" class="bg-dark">
            <div class="container py-4">
                <h2 class="text-white">Trasparenza</h2>
                <div class="card-deck mt-3">
                    <div class="card bg-primary border-0 rounded">
                        <div class="card-body p-3">
                            <a href="#" class="card-link text-white d-block">
                                Amministrazione trasparente <svg class="icon icon-light float-right">
                                    <use xlink:href="svg/sprite.svg#it-chevron-right"></use>
                                </svg>
                            </a>
                        </div>
                    </div>
                    <div class="card bg-primary border-0 rounded">
                        <div class="card-body p-3">
                            <a href="#" class="card-link text-white">
                                Pubblicità Legale <svg class="icon icon-light float-right">
                                    <use xlink:href="svg/sprite.svg#it-chevron-right"></use>
                                </svg>
                            </a>
                        </div>
                    </div>
                    <div class="card bg-primary border-0 rounded">
                        <div class="card-body p-3">
                            <a href="#" class="card-link text-white">
                                Bilancio <svg class="icon icon-light float-right">
                                    <use xlink:href="svg/sprite.svg#it-chevron-right"></use>
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="section5">
            <div class="container py-4">
                <h2>Link Istituzionali</h2>
                <div id="carouselExampleControls" class="carousel slide bg-white px-0" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="row align-items-center justify-content-center">
                                <div class="col-md-3">
                                    <a class="d-block text-center" href="#">
                                        <img class="img-fluid" src="img/logo-Tribunale-di-Torino-small.png" alt="Image">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a class="d-block text-center" href="#">
                                        <img class="img-fluid" src="img/logo_csm.png" alt="Image">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a class="d-block text-center" href="#">
                                        <img class="img-fluid" src="img/logo_CorteSupremaCassazione.png" alt="Image">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a class="d-block text-center" href="#">
                                        <img class="img-fluid" src="img/logo-ordine-avv-torino.png" alt="Image">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row align-items-center justify-content-center">
                                <div class="col-md-3">
                                    <a class="d-block text-center" href="#">
                                        <img class="img-fluid" src="img/slide1.jpg" alt="Image">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a class="d-block text-center" href="#">
                                        <img class="img-fluid" src="img/slide2.jpg" alt="Image">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a class="d-block text-center" href="#">
                                        <img class="img-fluid" src="img/slide3.jpg" alt="Image">
                                    </a>
                                </div>
                                <div class="col-md-3">
                                    <a class="d-block text-center" href="#">
                                        <img class="img-fluid" src="img/slide4.jpg" alt="Image">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <svg class="icon icon-primary icon-lg">
                            <use xlink:href="svg/sprite.svg#it-arrow-left"></use>
                        </svg>
                        <span class="sr-only">Precedente</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <svg class="icon icon-primary icon-lg">
                            <use xlink:href="svg/sprite.svg#it-arrow-right"></use>
                        </svg>
                        <span class="sr-only">Successivo</span>
                    </a>
                </div>
            </div>
        </section>
    </main><!-- /.container -->
	
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