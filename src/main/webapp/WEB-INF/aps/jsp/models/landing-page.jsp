<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="<wp:info key="currentLang" />">

    <head>
        <title>
            <wp:currentPage param="title" /> - <wp:i18n key="PORTAL_TITLE" />
        </title>

        <%--<jsp:include page="inc/header-inclusions.jsp" />--%>
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>

    </head>

    <body>


        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <img src="http://placehold.it/760x400/cccccc/ffffff">
                        <div class="carousel-caption">
                            <h4><a href="#">Lorem ipsum dolor sit amet consetetur sadipscing</a></h4>
                            <p>test test test test test  <a class="label label-primary" href="http://yourmumdotcom/" target="_blank">test test test </a></p>
                        </div>
                    </div><!-- End Item -->

                    <div class="item">
                        <img src="http://placehold.it/760x400/999999/cccccc">
                        <div class="carousel-caption">
                            <h4><a href="#">consetetur sadipscing elitr, sed diam nonumy eirmod</a></h4>
                            <p>test test test test test  <a class="label label-primary" href="http://yourmumdotcom/" target="_blank">test test test </a></p>
                        </div>
                    </div><!-- End Item -->

                    <div class="item">
                        <img src="http://placehold.it/760x400/dddddd/333333">
                        <div class="carousel-caption">
                            <h4><a href="#">tempor invidunt ut labore et dolore</a></h4>
                            <p>test test test test test  <a class="label label-primary" href="http://yourmumdotcom/" target="_blank">test test test </a></p>
                        </div>
                    </div><!-- End Item -->

                    <div class="item">
                        <img src="http://placehold.it/760x400/999999/cccccc">
                        <div class="carousel-caption">
                            <h4><a href="#">magna aliquyam erat, sed diam voluptua</a></h4>
                            <p>test test test test test  <a class="label label-primary" href="http://yourmumdotcom/" target="_blank">test test test </a></p>
                        </div>
                    </div><!-- End Item -->

                    <div class="item">
                        <img src="http://placehold.it/760x400/dddddd/333333">
                        <div class="carousel-caption">
                            <h4><a href="#">tempor invidunt ut labore et dolore magna aliquyam erat</a></h4>
                            <p>test test test test test  <a class="label label-primary" href="http://yourmumdotcom/" target="_blank">test test test </a></p>
                        </div>
                    </div><!-- End Item -->

                </div><!-- End Carousel Inner -->


                <ul class="list-group col-sm-4">
                    <li data-target="#myCarousel" data-slide-to="0" class="list-group-item active"><h4>Lorem ipsum dolor sit amet consetetur sadipscing</h4></li>
                    <li data-target="#myCarousel" data-slide-to="1" class="list-group-item"><h4>consetetur sadipscing elitr, sed diam nonumy eirmod</h4></li>
                    <li data-target="#myCarousel" data-slide-to="2" class="list-group-item"><h4>tempor invidunt ut labore et dolore</h4></li>
                    <li data-target="#myCarousel" data-slide-to="3" class="list-group-item"><h4>magna aliquyam erat, sed diam voluptua</h4></li>
                    <li data-target="#myCarousel" data-slide-to="4" class="list-group-item"><h4>tempor invidunt ut labore et dolore magna aliquyam erat</h4></li>
                </ul>

                <!-- Controls -->
                <div class="carousel-controls">
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>

            </div><!-- End Carousel -->
        </div>


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
    </body>

</html>

<script>
    $(document).ready(function  () {

    var clickEvent = false;
    $('#myCarousel').carousel({          interval: 4000
    }).on('click', '.list-group li', function () {
    clickEvent = true;
    $('.list-group li').removeClass('active');
    $(this).add Class('act ive');
    }).on('slid.bs.carousel', function (e) {
    if (!clickEvent) {                 var count = $('.list-group').children().length - 1;
    var current = $('.list-group li.active');
    current.removeClass('active').next().addClass('active');
    var id = parseInt(current.data('slide-to'));
    if (count == id) {
    $('.list-group li').first().addClass('active');
    }
    }
    clickEvent = false;
    });
    })

            $(w indow).load(function () {
    var boxheight = $('#myCarousel .carousel-inner').innerHeight();
    var itemlength = $('#myCarousel .item').length;
    var triggerheight = Math.round(boxheight / itemlength + 1);
    $('#myCarousel .list-group-item').outerHeight(triggerheight);
    });
</script>

<style>
    #myCarousel .carousel-caption {
        left:0;
        right:0;
        bottom:0;
        text-align:left;
        padding:10px;
        background:rgba(0,0,0,0.6);
        text-shadow:none;
    }

    #myCarousel .list-group {
        position:absolute;
        top:0;
        right:0;
    }
    #myCarousel .list-group-item {
        border-radius:0px;
        cursor:pointer;
    }
    #myCarousel .list-group .active {
        background-color:#eee;	
    }

    @media (min-width: 992px) { 
        #myCarousel {padding-right:33.3333%;}
        #myCarousel .carousel-controls {display:none;} 	
    }
    @media (max-width: 991px) { 
        .carousel-caption p,
        #myCarousel .list-group {display:none;} 
    }
</style>