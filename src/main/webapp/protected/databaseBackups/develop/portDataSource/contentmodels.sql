INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (1,'CTM','Notizia Home','<div class="card shadow rounded">
<div class="card-header">
<p class="card-text orange">
<span class="text-uppercase font-weight-bold">$content.enum.text</span>
<small class="text-muted d-block">$content.date.shortDate</small>
</p>
</div>
<div class="img-wrapper">
 <img class="img-fluid" data-src="" alt="" src="$content.img.getImagePath(''0'')" data-holder-rendered="true">
</div>
<div class="card-body">
<h5 class="card-title"><a class="card-body-link" href="$content.getContentOnPageLink("paginadettaglio")&modelId=55 "> $content.title.text </a></h5>
<p class="card-text">$content.abstract.text</p>
</div>
</div>

',NULL);
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
                            <p class="card-text">$content.abstract.text </p>
                            <a href="$content.link.destination" type="button" class="btn btn-outline-primary">vai al sito</a>
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
                            <a class="card-link text-white d-block" href="$item.link.destination" >
                                $item.title.text <svg class="icon icon-light float-right">
                                    <use xlink:href="/cortidappello/resources/static/img/sprite.svg#it-chevron-right"></use>
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
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (7,'CTA','Carousel Home','<div id="myCarousel" class="carousel container slide" data-ride="carousel">
  <ol class="carousel-indicators">
  #foreach ($item in $content.lista)
    <li data-target="#myCarousel" data-slide-to="$item.number.value"></li>
    #end
  </ol>
  <div class="carousel-inner">
  #foreach($item in $content.lista)
    <div class="carousel-item">
      <img class="d-block w-100" src="$item.img.getImagePath(''0'')" alt="">
      <div class="carousel-caption d-none d-md-block">
         <a href="$item.link.destination&modelId=55"
            <h5>$item.title.text</h5>
            <p>$item.abstract.text</p>
         </a>
       </div>
    </div>
    #end
  </div>
  <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Precedente</span>
  </a>
  <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Successivo</span>
  </a>
</div>

<script>
$(document).ready(function () {

        $(".carousel-inner .carousel-item").removeClass("active").first().addClass("active");
                                                              $("ol.carousel-indicators li").first().addClass("active");
       
        $(''.myCarousel'').carousel({
            interval:3000
        });
})
</script>
',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (8,'CTA','Link Istituzionali Home Page','<section id="section5">
            <div class="container py-4">
                <h2>$content.title.text</h2>
                <div id="carouselExampleControls" class="carousel slide bg-white px-0" data-ride="carousel">
                    <div class="carousel-inner">
                        <div id="attivo" class="carousel-item active">
                            <div class="row align-items-center justify-content-center">
                               #foreach ($item in $content.lista)
                       				 		#if($item.number.value < 3)
                                     <div class="col-md-4">
                                         <a class="d-block text-center" href="$item.link.destination">
                                             <img class="img-fluid" src="$item.img.getImagePath(''0'')" >
                                         </a>
                                     </div>    
                                  #end
                                #end    
                            </div>
                        </div>
                         <div class="carousel-item">
                            <div class="row align-items-center justify-content-center">
                               #foreach ($item in $content.lista)
                       				 		#if($item.number.value >= 3)
                                     <div class="col-md-4">
                                         <a class="d-block text-center" href="$item.link.destination">
                                             <img class="img-fluid" src="$item.img.getImagePath(''0'')" >
                                         </a>
                                     </div>    
                                   #end
                                #end    
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <svg class="icon icon-primary icon-lg">
                            <use xlink:href="/cortidappello/resources/static/img/sprite.svg#it-arrow-left"></use>
                        </svg>
                        <span class="sr-only">Precedente</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <svg class="icon icon-primary icon-lg">
                            <use xlink:href="/cortidappello/resources/static/img/sprite.svg#it-arrow-right"></use>
                        </svg>
                        <span class="sr-only">Successivo</span>
                    </a>
                </div>
            </div>
</section>
        
<script>
$(document).ready(function () {

				$("#attivo").addClass("active");

        $(''.carouselExampleControls'').carousel({
            interval:3000
        });
})
</script>
',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (9,'CNG','Modello Testo','<!--
<h2 class="border-bottom">$content.Title.text</h2>
-->

<div class="card-wrapper">
<div class="card border-0">
<div class="card-body p-3">
<h3 class="card-title">$content.Abstract.text</h3>
<p class="card-text">$content.MainBody.text</p>                                                                    
</div>
</div>
</div>
<!--end card-->


',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10,'CTA','Modello Lista Link','<div class="card-wrapper">
		<div class="card border-0">
			<div class="card-body p-3">
				<h3>$content.title.text</h3>
				<div class="link-list-wrapper multiline">
					<ul class="d-flex flex-wrap link-list">
						#foreach ($item in $content.lista)
						<li class="col-6 mt-3"><a class="list-item right-icon p-0"
							href="$item.link.destination">
              <span class="display-4">$item.title.text</span>
              <svg class="icon icon-primary icon-right m-0">
              <use xlink:href="/cortidappello/resources/static/img/sprite.svg#it-chevron-right"></use>
              </svg>

						</a></li>
						<li><span class="divider"></span> #end
					</ul>
				</div>
			</div>

		</div>
	</div>
	</div>
	</div>
',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (11,'CTM','Storico Notizie','<div class="list-news">
<div class="card-wrapper border-bottom">
<div class="card">
   <div class="card-body px-0">
      <div class="row">
          <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
             <div class="category-top">
             <a class="category" href="#">Categoria 1</a>
             <span class="data">$content.date</span>
             </div>
          <h5 class="card-title big-heading"><a href="#">$content.title.text</a></h5>
          <p class="card-text">$content.abstract.text</p>
          </div>
         <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                              <img src="$content.img.getImagePath(''0'')" title="img title" alt="imagealt" class="img-fluid">
         </div>
      </div>
   </div>
  </div> 
</div>
</div>

',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (17,'CTM','Modello Link Utili Pagina Primo livello','<div class="col-md-4">
	<div class="card border rounded mb-4">
		<img class="img-fluid" data-src="" alt="" src="$content.img.getImagePath(''0'')" data-holder-rendered="true">
		<div class="card-body">
			<h5 class="card-title">$content.title.text</h5>
			<p class="card-text"> $content.abstract.text </p>
			<a href="#" type="button" class="btn btn-outline-primary">Vai al sito</a>
		</div>
	</div>
</div>

',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (55,'CTM','News Dettaglio','<!--
<h2 class="border-bottom"></h2>
-->

<div class="card-wrapper">
<div class="card border-0">
<div class="card-body p-3">
<img src="$content.img.getImagePath(''0'')" alt="">
<h3 class="card-title">$content.title.text</h3>
<p class="card-text">$content.abstract.text</p>                                                                    
</div>
</div>
</div>
<!--end card-->

',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (182,'CTM','Carousel con filtri home','<div class="it-single-slide-wrapper">

    <a href="#">

        <div class="img-responsive-wrapper">

            <div class="img-responsive">

                <div class="img-wrapper">

                    <img src="$content.img.getImagePath(''0'')" title="img title" alt="imagealt">

                </div>

            </div>

        </div>

    </a>

    <div class="it-text-slider-wrapper-outside">

        <div class="card-wrapper">

            <div class="card">

                <div class="card-body">

                    <div class="category-top">

                        <!-- category heading-->

                        <a class="category" href="#">Category</a>

                        <!-- category data-->

                        <span class="data">$content.date.getFormattedDate("dd/MM/yyyy")</span>

                    </div>

                    <h5 class="card-title big-heading">$content.title.text</h5>

                    <p class="card-text">$content.abstract.text</p>

                    <span class="card-signature">di $content.autore.text</span>

                    <a class="read-more" href="#">

                        <span class="text">Leggi di più</span>

                        <svg class="icon">

                        <use xlink:href="$content.link.destination"/>

                        </svg>

                    </a>

                </div>

            </div>

        </div>

    </div>

</div>',NULL);
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
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10011,'CNG','Lists - Default','    <li><a class="list-item active right-icon" href="$content.contentLink">
        <span>$content.Title.text</span>
        <svg class="icon icon-primary icon-right"><use xlink:href="/cortidappello/resources/static/img/sprite.svg#it-chevron-right"></use
        </svg>
        #if ( $content.Abstract.text != "" )
        <p>
          $content.Abstract.text
        </p>
       #end
        </a>
    </li>
<span class="divider"></span>

',NULL);
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
