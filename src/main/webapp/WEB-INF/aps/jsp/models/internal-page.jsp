<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="<wp:info key="currentLang" />">

    <head>

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
                            <a class="navbar-brand"  href="#">Ministero della Giustizia</a>
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
            <div class="container py-5">
                <div class="row">
                    <div class="col-12 col-md-6">
                        <img class="img-fluid" src="<wp:imgURL />logo-Tribunale-di-Torino.png">
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
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                    <span>Il Tribunale</span>
                                    <svg class="icon-expand icon icon-sm icon-light">
                                    <use xlink:href="<wp:imgURL />sprite.svg#it-expand"></use>
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
                                    <use xlink:href="<wp:imgURL />sprite.svg#it-expand"></use>
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
                                    <use xlink:href="<wp:imgURL />sprite.svg#it-expand"></use>
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
                                    <use xlink:href="<wp:imgURL />sprite.svg#it-expand"></use>
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
                                    <use xlink:href="<wp:imgURL />sprite.svg#it-expand"></use>
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





        <%-- 4. Untitled Frame V  --%>
        <wp:show frame="4" />
        <wp:show frame="5" />
        <wp:show frame="6" />
        <%-- 
        <wp:show frame="5" />
        <wp:show frame="6" />
        <wp:show frame="7" />
        <wp:show frame="8" />
        <wp:show frame="9" />
        
        <wp:show frame="10" /> --%>
    </body>

</html>
