INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (1,'CTM','Notizia','<div class="card shadow rounded">
	<div class="card-header">
		<p class="card-text orange">
			<span class="text-uppercase font-weight-bold">Atti giudiziari</span>
				<small class="text-muted d-block">$item.date</small>
		</p>
	</div>
  	<img class="img-fluid" data-src="" alt="" src="$content.img.getImagePath(''0'')" data-holder-rendered="true">
  <div class="card-body">
  	<h5 class="card-title">$content.title.text</h5>
  	<p class="card-text">$content.subtitle.text</p>
  </div>
<a href="$content.link.destination" data-attribute="forward" class="forward mt-3" aria-hidden="true">
</div>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (2,'CTA','Lista Notizie Primo Piano','<section id="section2">
		<div class="container py-4">
<h2>$content.title.text</h2>
<div class="card-deck">
#foreach ($item in $content.lista)  
<div class="card shadow rounded">
<div class="card-header">
<p class="card-text orange">
<span class="text-uppercase font-weight-bold">Atti giudiziari</span>
<small class="text-muted d-block">$item.date</small>
</p>
</div>
<img class="img-fluid" data-src="" alt="" src="$item.img.getImagePath(''0'')" data-holder-rendered="true">
<div class="card-body">
<h5 class="card-title"><a class="card-body-link" href="$item.link.destination"> $item.title.text </a></h5>
<p class="card-text">$item.abstract.text</p>
</div>
</div>
#end
</div>
	</section>
                 
        
',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (3,'CTA','Lista Servizi Home Page','<section id="section1" class="bg-300">
		<div class="container py-4">
<h2>$content.title.text</h2>
<div class="card-deck servizi">
 #foreach ($item in $content.lista)  
  <div class="card border-0">
  	<div class="card-body p-0">
  		<img class="img-fluid" data-src="" alt="" src="$item.img.getImagePath(''0'')" data-holder-rendered="true">
  		<h5 class="card-title bg-primary"><a class="card-body-link" href="$item.link.destination">$item.title.text</a> </h5>
  </div>
  </div>
	#end

</div>

</div>
	</section>

',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (4,'CTM','Link Utili Home Page','<div class="card border-0 rounded">
                        <img class="img-fluid" data-src="" alt="" src="$content.img.getImagePath(''0'')" data-holder-rendered="true">
                        <div class="card-body">
                            <h5 class="card-title">$content.title.text
                            <p class="card-text">$content.subtitle.text
                            <a href="#" type="button" class="btn btn-outline-primary">Vai al sito</a>
                        </div>
                    </div>
',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (5,'CTA','Trasparenza Home Page','<section id="section4" class="bg-dark">

<div class="container py-4">
                <h2 class="text-white">$content.title.text</h2>
                <div class="card-deck mt-3">
                #foreach ($item in $content.lista)  
                    <div class="card bg-primary border-0 rounded">
                        <div class="card-body p-3">
                            <a href="#" class="card-link text-white d-block">
                                $item.title.text< <svg class="icon icon-light float-right">
                                    <use xlink:href="$item.img.getImagePath(''0'')"></use>
                                </svg>
                            </a>
                        </div>
                    </div>
                   #end
                    
                </div>
            </div>
</section>
',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (6,'CTM','Link Istituzionali Home Page','<div id="carouselExampleControls" class="carousel slide bg-white px-0" data-ride="carousel">
	<div class="carousel-inner">
  	<div class="carousel-item active"> 
   		<div class="row align-items-center justify-content-center">
  		 <div class="col-md-3">
   				<a class="d-block text-center" href="#">
   					<img class="img-fluid" src="$content.img.getImagePath(''0'')" alt="Image">
   				</a>
   			</div>
   		</div>
   </div>
  </div>
</div>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (7,'CTA','Carousel Home','<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">

        <div class="carousel-inner">

            #foreach($item in $content.lista)
            <div class="item active">

                <img src="$item.img.getImagePath(''0'')">
                <div class="carousel-caption">
                    <h4>
                        <a href="#">$item.title.text</a>
                    </h4>

                    <p>$item.abstract.text
                        <a class="label label-primary"  href="$item.link.destination" target="_blank">
                            $item.link.text
                        </a>
                    </p>

                </div>
            </div>

            #end
        </div>

        <ul class="list-group col-sm-4">
            #foreach ($item in $content.lista)
            <li data-target="#myCarousel" data-slide-to="$item.number.value"  class="list-group-item">
                <h4>$item.link.text</h4>
            </li>
            #end
        </ul>


        <div class="carousel-controls">

            <a class="left carousel-control" href="#myCarousel" data-slide="prev"> 
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a> 
            <a class="right carousel-control" href="#myCarousel"  data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
            
        </div>
        
    </div>

</div>



<script>
    $(document).ready(function () {

        $(".carousel-inner .item").removeClass("active").first().addClass("active");

        $("ul.list-group li").first().addClass("active");

        var clickEvent = false;
        $(''#myCarousel'').carousel({
            interval: 1000
        }).on(''click'', ''.list-group li'', function () {
            clickEvent = true;
            $(''.list-group li'').removeClass(''active'');
            $(this).addClass(''active'');
        }).on(''slid.bs.carousel'', function (e) {
            if (!clickEvent) {
                var count = $(''.list-group'').children().length - 1;
                var current = $(''.list-group li.active'');
                current.removeClass(''active'').next().addClass(''active'');
                var id = parseInt(current.data(''slide-to''));
                if (count == id) {
                    $(''.list-group li'').first().addClass(''active'');
                }
            }
            clickEvent = false;
        });
    })

    $(window).load(function () {
        var boxheight = $(''#myCarousel .carousel-inner'').innerHeight();
        var itemlength = $(''#myCarousel .item'').length;
        var triggerheight = Math.round(boxheight / itemlength + 1);
        $(''#myCarousel .list-group-item'').outerHeight(triggerheight);
    });
</script>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (8,'CTA','Link Istituzionali Home Page','<section id="section5">
            <div class="container py-4">
                <h2>$content.title.text</h2>
                <div id="carouselExampleControls" class="carousel slide bg-white px-0" data-ride="carousel">
                    <div class="carousel-inner">                    	   
                        <div class="carousel-item active">
                            <div class="row align-items-center justify-content-center">
                            #foreach ($item in $content.lista)
                                <div class="col-md-4">
                                    <a class="d-block text-center" href="$item.link.destination">
                                        <img class="img-fluid" src="$item.img.getImagePath(''0'')" >
                                    </a>
                                </div>    
                                 #end
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
',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10001,'CNG','Full - Default','<article>
  <h1>$content.Title.text</h1>
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="well well-small text-center">
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
#if ( $content.MainBody.text != "" )
$content.MainBody.text
#end
#if ($content.Attaches.size()>0)
  <h2>$i18n.getLabel("CNG_ATTACHMENTS")</h2>
  <ul>
  #foreach ($item in $content.Attaches )
    <li><a href="$item.attachPath">$item.text</a></li>
  #end
  </ul>
#end
#if ($content.Links.size()>0)
  <h2>$i18n.getLabel("CNG_LINKS")</h2>
  <ul>
  #foreach ($item in $content.Links)
    <li><a href="$item.destination">$item.text</a></li>
  #end
  </ul>
#end
</article>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10011,'CNG','Lists - Default','<div class="search-result">
  <h3><a href="$content.contentLink">$content.Title.text</a></h3>
  <a class="search-link" href="$content.contentLink">$content.contentLink</a>
#if ( $content.Abstract.text != "" )
  <p>
    $content.Abstract.text
  </p>
#end
</div>
<div class="hr-line-dashed"></div>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10012,'CNG','Hero Unit + Picture','<article>
  <div class="hero-unit span6">
  <h1>$content.Title.text</h1>
  #if ( $content.Abstract.text != "" )
  $content.Abstract.text
  #end
  #if ( $content.Links.size() != 0 )
  #set ( $link = $content.Links.get(0) )
  <p><a href="$link.destination" class="btn btn-primary btn-large">$link.text</a></p>
  #end
</div>
#if ( $content.Picture.getImagePath("0") != "" )
<div class="span4 well well-small">
<figure>
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption class="text-center"><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
</div>
#end
</article>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10013,'CNG','Lists - Picture','<article>
  <h2>$content.Title.text</h2>
#if ( $content.Picture.getImagePath("0") != "" )
<figure>
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption class="text-center"><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("CNG_READ_MORE")</a></p>
</article>',NULL);
