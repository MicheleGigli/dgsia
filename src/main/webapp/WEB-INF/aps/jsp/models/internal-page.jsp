<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="<wp:info key="currentLang" />">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>
            <wp:currentPage param="title" /> - <wp:i18n  key="PORTAL_TITLE" />
        </title>
        <jsp:include page="inc/header-inclusions.jsp" />
    </head>
    <body>


        <div class="cookiebar bg-dark p-4 hide" aria-hidden="true">
            <p class="text-white">Questo sito utilizza cookie tecnici, analytics e di terze parti.
                <br>Proseguendo nella navigazione accetti l'utilizzo dei cookie.<br>
            </p>
            <p>
                <button data-accept="cookiebar" class="btn btn-info mr-2">Accetto</button>
                <a href="" class="btn btn-outline-info">Privacy policy</a>
            </p>
        </div>


        <div class="it-header-slim-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="it-header-slim-wrapper-content">
                            <a class="navbar-brand"  href="https://www.giustizia.it/giustizia/">Ministero della Giustizia</a>
                            <span class="nav-palce-mobile">
                                <nav>
                                    <a class="it-opener d-lg-none" data-toggle="collapse" href="#menu1" role="button" aria-expanded="false" aria-controls="collapseExample">
                                        <span>Ente appartenenza/Owner</span>
                                        <svg class="icon">
                                        <use xlink:href="<wp:imgURL />sprite.svg#it-expand"></use>                                        </svg>
                                    </a>

                                </nav>
                            </span>
                            <div class="header-slim-right-zone">
                                <%-- 0. Untitled Frame I  --%>
                                <wp:show frame="0" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="header">
            <div class="container py-1">
                <div class="row">
                    <div class="col-12 col-md-6">
                        <a href="<wp:url page="homepage" />" > 
                            <img class="img-fluid" src="<wp:imgURL />logo-corte-torino_white.png">
                        </a>
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="navbar-expand-md header-utils">
                            <div class="header-social text-right">
                                <ul class="list-inline">
                                    <li class="list-inline-item">Seguici su</li>
                                    <li class="list-inline-item">
                                        <a href=""><svg class="icon icon-primary">
                                            <use xlink:href="<wp:imgURL />sprite.svg#it-facebook "></use>
                                            </svg></a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href=""><svg class="icon icon-primary">
                                            <use xlink:href="<wp:imgURL />sprite.svg#it-twitter"></use>
                                            </svg></a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href=""><svg class="icon icon-primary">
                                            <use xlink:href="<wp:imgURL />sprite.svg#it-youtube"></use>
                                            </svg></a>
                                    </li>
                                </ul>
                            </div>
                            <!--search-->
                            <%-- 1. Untitled Frame II  --%>
                            <wp:show frame="1" />

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
                        <use xlink:href="<wp:imgURL />sprite.svg#it-burger "></use>
                        </svg>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="navbarNavB">
                    <div class="close-div">
                        <button class="btn close-menu" type="button"><span class="it-close"></span>close</button>
                    </div>
                    <div class="menu-wrapper bg-dark">
                        <ul class="navbar-nav">
                            <wp:show frame="2" />

                            <li class="nav-item dropdown ml-auto">
                                <%-- 3. Untitled Frame IV  --%>
                                <wp:show frame="3" />
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

        <wp:show frame="4" /> 

        <section id="section2">
            <div class="container py-1">
                <div class="row">
                    <div class="col-md-7 col-sm-12">
                        <!--questa mostra il tiotlo della pagina corrente anche multilingua-->
                        <h2 class="border-bottom"><wp:currentPage param="title" /></h2>
                        <wp:show frame="5" />
                        <wp:show frame="7" />
                    </div>
                    <div class="col-1">
                    </div>
                    <div class="col-4">
                        <wp:show frame="6" />
                        <wp:show frame="8" />
                    </div>
                </div>

                <wp:show frame="9" />
                <wp:show frame="10" />
            </div>

        </section>
        <footer class="footer bg-300 py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="media footer-title">
                            <img class="img-fluid mb-3" data-src="" alt=""
                                 src="<wp:imgURL />logo-corte-torino_white1.png"
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
                                            xlink:href="<wp:imgURL />sprite.svg#it-facebook "></use>
                                        </svg></a></li>
                                <li class="list-inline-item"><a href=""><svg
                                            class="icon">
                                        <use
                                            xlink:href="<wp:imgURL />sprite.svg#it-twitter"></use>
                                        </svg></a></li>
                                <li class="list-inline-item"><a href=""><svg
                                            class="icon">
                                        <use
                                            xlink:href="<wp:imgURL />sprite.svg#it-youtube"></use>
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

    <script>
//        remove categoty spaces 
        $("option").text(function () {
            return $(this).text().replace(".. / .. /", "");
        });
    </script>
</html>

