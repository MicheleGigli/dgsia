INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (1,'CTM','Notizia Home','<div class="col-md-12 col-lg-4 col-xl-4 py-2">
<div class="card shadow rounded">
    <div class="card-header">
        <p class="card-text orange">
            <span class="text-uppercase font-weight-bold">
                #foreach ($contentCategory in $content.getCategories())
                <a class="category" href="$content.getContentOnPageLink("news_categorizzate")&modelId=55&category=$contentCategory.code ">
                   $contentCategory.title 
            </a>
            #end
        </span>
        <small class="text-muted d-block">
            $content.date.shortDate
        </small>
    </p>
</div>
<div class="img-wrapper">
    <img class="img-fluid" data-src="" alt="$content.img.text" src="$content.img.getImagePath(''0'')" data-holder-rendered="true">
</div>
<div class="card-body">
    <h5 class="card-title">
        <a class="card-body-link" href="$content.getContentOnPageLink("paginadettaglio")&modelId=55 ">
           $content.title.text
    </a>
</h5>
<p class="card-text">
    $content.abstract.text
</p>
</div>
</div>
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
        <div class="row">
            #foreach ($item in $content.lista)  
            <div class=" col-sm-12 col-md-12 col-lg-4 col-xl-4 servizi">
                <div class="card border-0">
                    <div class="card-body p-0">
                        <img class="img-fluid" data-src="" alt="" src="$item.img.getImagePath(''0'')" data-holder-rendered="true">
                        <h5 class="card-title bg-primary">
                            <a class="card-body-link" href="$item.link.destination">
                                $item.title.text
                            </a> 
                        </h5>
                    </div>
                </div>
            </div>
            #end
        </div>
    </div>
</section>

',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (4,'CTM','Link Utili Home Page','<div class="col-sm-12 col-lg-3 col-xl-3 py-2">
 <div class="card border-0 rounded">
   <a href="$content.link.destination">
     <img class="img-fluid" data-src="" alt="" src="$content.img.getImagePath(''0'')" data-holder-rendered="true">
    </a>
    <div class="card-body">
			      <h5 class="card-title"> 
      	<a style="color:black;" href="$content.link.destination">$content.title.text</a>
      </h5>   
    </div>
 </div>
</div>
',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (5,'CTA','Trasparenza Home Page','<section id="section4" class="bg-dark">
    <div class="container py-4">
        <h2 class="text-white">$content.title.text</h2>
        <div class="row">
            #foreach ($item in $content.lista)  
            <div class="col-md-12 col-lg-4 col-xl-4 mt-3">
                <div class="card bg-primary border-0 rounded">
                    <div class="card-body p-3">
                        <a class="card-body-link text-white d-block" href="$item.link.destination" >
                            $item.title.text <svg class="icon icon-light float-right">
                                <use xlink:href="$item.img.getImagePath(''0'')"></use>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
            #end
        </div>
    </div>
</section>',NULL);
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
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (8,'CTA','Link Istituzionali Home Page prima del footer','<section id="section5">

<div class="container">
    <h2 class="text-blue">$content.title.text</h2>
    <div class="owl-carousel-link owl-carousel owl-theme container">
     #foreach ($item in $content.lista) 
        <div class="item item-owl-custom">
            <a class="d-block text-center" href="$item.link.destination">
                <img class="img-fluid" src="$item.img.getImagePath(''0'')" >
            </a>
        </div>
      #end  
    </div>
</div>  

</section>

<script>

    $(''.owl-carousel-link'').owlCarousel({
        loop: true,
        margin: 10,
        autoplay:true,
        nav: true,
        responsive: {
            0: {
                items: 1
            },
            600: {
              items: 1
            },
            1000: {
              items: 3
            }
        }
    })
</script>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (9,'CNG','Modello Testo','<div class="card-wrapper">
    <div class="card border-0">
        <div class="card-body p-1">
            <h3 class="card-title">
              $content.Title.text
            </h3>         
            $content.MainBody.text                                                                         
        </div>
    </div>
</div>',NULL);
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
              <use xlink:href="/tribunalemarsala/resources/static/img/sprite.svg#it-chevron-right"></use>
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
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (11,'CTM','Storico Notizie','<div class="card-wrapper border-bottom">
 <div class="card">
   <div class="card-body px-0">
      <div class="row">
          <div class="col-7">
             <div class="category-top">
             <a class="category" href="#">Categoria 1</a>
             <span class="data">$content.date</span>
             </div>
          <h5 class="card-title big-heading"><a href="#">$content.title.text</a></h5>
          <p class="card-text">$content.abstract.text</p>
          </div>
         <div class="col-5">
         		<img src="$content.img.getImagePath(''0'')" title="img title" alt="imagealt" class="img-fluid">
         </div>
      </div>
   </div>
  </div> 
</div>
',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (13,'CTA','Lista F.A.Q.','<h4 class="card-title">
   $i18n.getLabel("FAQ_TITOLO")
</h4>
<div id="lista-howto" class="collapse-div mb-5" role="tablist">
    #foreach ($item in $content.lista) 
    <div class="collapse-header" id="headingA$item.number.value">
        <button data-toggle="collapse" data-target="#accordion$item.number.value" aria-expanded="false" aria-controls="accordion$item.number.value">
           $item.title.text
        </button>
    </div>
    <div id="accordion$item.number.value" class="collapse" role="tabpanel" aria-labelledby="headingA$item.number.value" data-parent="#lista-howto">
        <div class="collapse-body">
           $item.abstract.text
        </div>
    </div>
    #end
</div>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (14,'CTM','Lista news in pagina news','<div class="card card-news shadow rounded">
    <div class="img-wrapper">
        <img class="img-fluid" data-src="" alt="" src="$content.img.getImagePath(''0'')" data-holder-rendered="true">
        <span class="badge badge-primary badge-pos">$content.enum.text</span>
    </div>
    <div class="card-body news-body">
        <h5 class="card-title">
            <a class="card-body-link" href="$content.getContentOnPageLink("paginadettaglio")&modelId=55 "> $content.title.text </a>
        </h5>

        <span class="data">$content.date.shortDate</span>
        
        #if ($content.autore.text != "")  
          <span class="card-signature">di $content.autore.text</span>
        #else
          <span class="card-signature">Autore sconosciuto</span>
        #end
        <p class="card-text">$content.abstract.text</p>
    </div>

</div>
',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (15,'CTA','Lista Glossario','
<div id="lista-howto" class="collapse-div mb-5" role="tablist">
    #foreach ($item in $content.lista) 
    <div class="collapse-header" id="headingA$item.number.value">
        <button data-toggle="collapse" data-target="#accordion$item.number.value" aria-expanded="false" aria-controls="accordion$item.number.value">
           $item.title.text
        </button>
    </div>
    <div id="accordion$item.number.value" class="collapse" role="tabpanel" aria-labelledby="headingA$item.number.value" data-parent="#lista-howto">
        <div class="collapse-body">
           $item.abstract.text
        </div>
    </div>
    #end
</div>',NULL);
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
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (18,'CTM','Lista card pagine interne','<div class="card shadow rounded mb-2">
<div class="card-header">
<p class="card-text orange">

<span class="text-uppercase font-weight-bold">
  
   #foreach ($contentCategory in $content.getCategories())

   <a class="category" href="$content.getContentOnPageLink("news_categorizzate")&modelId=55&category=$contentCategory.code ">
  
  $contentCategory.title 
  
  </a>
                    
   #end
  
</span>

  <small class="text-muted d-block">$content.date.shortDate</small>
</p>
</div>
<div class="img-wrapper">
 <img class="img-fluid" data-src="" alt="$content.img.text" src="$content.img.getImagePath(''0'')" data-holder-rendered="true">
</div>
<div class="card-body">
  <h5 class="card-title">
    <a class="card-body-link" href="$content.getContentOnPageLink("paginadettaglio")&modelId=55 "> $content.title.text </a>
  </h5>
  <p class="card-text">$content.abstract.text</p>
</div>
</div>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (20,'CTM','Link Utili per pagine interne','<div class="col-sm-12 col-lg-4 py-2">
<div class="card border-0 rounded">
    <a href="$content.link.destination">
      <img class="img-fluid" data-src="" alt="" src="$content.img.getImagePath(''0'')" data-holder-rendered="true">
    </a>
    <div class="card-body">
        <h5 class="card-title">$content.title.text</h5>           
            <p class="card-text">$content.abstract.text </p>

    </div>
</div>
</div>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (31,'PRC','List Default','<li>
      <a href="$content.getContentOnPageLink("dettaglio_comefareper")&modelId=32">
        <div class="it-right-zone">
          <span class="text">$content.titolo.text</span>
          <span class="it-multiple">
            <span class="metadata"></span>
           <svg class="icon">
              <use xlink:href="/tribunalemarsala/resources/static/img/sprite.svg#it-chevron-right"></use>
            </svg>
          </span>
        </div>
      </a>
</li>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (32,'PRC','Modello di Procedura','    <div class="card-wrapper">
        <div class="card border-0">
            <div class="card-body2 p-1">
                
                #if($content.titolo.text != "")
                 <h4 class="card-title">
                   $content.titolo.text
                 </h4> 
                #end
             
                #if($content.COSE.text != "")
                <strong>COS''E''</strong><br>
                $content.COSE.text
                #end
                
                #if($content.CHI_PUO_RI.text != "")
                <strong>CHI PUO'' RICHIEDERLO</strong><br>
                $content.CHI_PUO_RI.text
                #end
                
                #if($content.DOVE_SI_RI.text != "")
                <strong>DOVE SI RICHIEDE</strong><br>
                $content.DOVE_SI_RI.text
                #end
                
                #if($content.DOC_NECESS.text != "")
                <strong>COME SI RICHIEDE E DOCUMENTI NECESSARI</strong><br>
                $content.DOC_NECESS.text
                #end
                
                #if($content.TEMPI.text != "")
                <strong>TEMPI</strong><br>
                $content.TEMPI.text
                #end
                
                #if($content.COSTI.text != "")
                <strong>COSTI</strong><br>
                $content.COSTI.text
                #end
                
            </div>
        </div>
    </div>
    
   ',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (33,'PRC','Full Default Old','<article class="my-4">
    <h4>
      $content.titolo.text
    </h4>
    #if ( $content.body.text != "" )
    <p>$content.body.text</p>
    #end
    #if ($content.allegati.size()>0)
    <h5>$i18n.getLabel("CNG_ATTACHMENTS")</h5>
<div class="link-list-wrapper">
  <ul class="link-list">
        #foreach ($item in $content.allegati )
        <li>
            <a class="list-item" href="$item.attachPath">$item.text
            <svg class="icon icon-primary m-0">
               
               <use xlink:href="/tribunalemarsala/resources/static/img/sprite.svg#it-download">
               </use>
            </svg>           
            </a>
        </li>
        #end
    </ul>
</div>
    #end
    #if ($content.links.size()>0)
    <h5>$i18n.getLabel("CNG_LINKS")</h5>
 <div class="link-list-wrapper">
  <ul class="link-list">
        #foreach ($item in $content.links)
        <li>
            <a class="list-item" href="$item.destination">$item.text
            <svg class="icon icon-primary m-0">
            <use xlink:href="/tribunalemarsala/resources/static/img/sprite.svg#it-chevron-right">
                </use>
            </svg>
            
            </a>
        </li>
        #end
     </ul>
</div>
    #end
</article>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (55,'CTM','News Dettaglio','<div class="col-12 col-lg-6">
    <!--start card-->
    <div class="card-wrapper detail">
        <div class="card card-img no-after">
            <div class="img-responsive-wrapper">
                <div class="img-responsive">
                    <div class="img-wrapper">
                        <img src="$content.img.getImagePath(''0'')" title="$content.img.text" alt="$content.img.text">
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="category-top">
                    <a class="category" href="#">
                        #foreach ($contentCategory in $content.getCategories())
                        $contentCategory.title 
                        #end
                    </a>
                    <span class="data">$content.date.longDate</span>
                </div>
                <h5 class="card-title big-heading"> $content.title.text</h5>
                <p class="card-text">$content.abstract.text</p>



                #foreach($item in $content.article)
                <h5>$item.text1.text</h5>
                <img class="" src="$item.img1.getImagePath(''0'')" alt="$item.img1.text">

                <a href="$item.link1.destination">
                    <div class="it-right-zone py-3">
                        <span class="text">$item.link1.text</span>
                    </div> 
                </a>
                #end

                <span class="card-signature py-3">
                    di $content.autore.text
                </span>

                #if ($content.attach.size()>0)
                <h5 class="card-title big-heading">$i18n.getLabel("CNG_ATTACHMENTS")</h5>
                <div class="it-list-wrapper py-3">
                    <ul class="it-list">
                        #foreach ($item in $content.attach )
                        <li>
                            <a href="$item.attachPath">
                                <div class="it-right-zone">
                                    <span class="text">$item.text</span>
                                </div>
                            </a>
                        </li>
                        #end
                    </ul>
                </div>

                #end

            </div>
        </div>
    </div>
    <!--end card-->
</div>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (100,'SCH','scheda all informazioni','<div class="card-wrapper">
    <div class="card border-0">
        <div class="card-body p-1">
           <p>
              #if ($content.nome.text != "" )
              &bull; <strong>$content.nome.text </strong><br />
              #end
              
              #if ($content.incarico.text != "" )
              <strong>Incarico: </strong>$content.incarico.text<br />
              #end
              
              #if ($content.luogo.text != "" )
              <strong>Luogo: </strong>$content.luogo.text<br />
              #end
             
              #if ($content.piano.value)
              <strong>Piano: </strong>$content.piano.value <br />
              #end
             
              #if ($content.stanza.text != "" )
              <strong>Stanza: </strong>$content.stanza.text<br />
              #end
               
              #if ($content.telefono.text != "" )
              <strong>Telefono: </strong>$content.telefono.text<br />
              #end
              
              #if ($content.fax.text != "" )
              <strong>Fax: </strong>$content.fax.text<br />
              #end
              
              #if ($content.email.text != "" )
              <strong>Email: </strong>$content.email.text<br />
              #end
              
              #if ($content.gg_udienza.text != "" )
              <strong>Giorni di udienza: </strong>$content.gg_udienza.text<br />
              #end
              
              #if ($content.competenze.text != "" )
              <strong>Materie di competenza: </strong>$content.competenze.text<br />
              #end
              
              #if ($content.attivita.text != "" )
             	<strong>Attività svolte: </strong>$content.attivita.text<br />
              #end
              
              #if ($content.note.text != "" )
             	<strong>Note: </strong>$content.note.text<br />
              #end

					</p>                                                               
        </div>
    </div>
</div>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (101,'IMG','title+img','<article>
  <h1>$content.Title.text</h1>
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="well well-small text-center">
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
</figure>
#end
</article>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (103,'IPT','ipertesto','<div class="card-wrapper">
    <div class="card border-0">
        <div class="card-body p-1">        
            $content.ipertesto.text                                                                         
        </div>
    </div>
</div>


',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (182,'CTM','Carousel con filtri home','<div class="it-single-slide-wrapper">
    <a href="$content.getContentOnPageLink("paginadettaglio")&modelId=55">
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
                      #foreach ($contentCategory in $content.getCategories())

                        #if ($contentCategory.title != "")
                        <a class="category" href="$content.getContentOnPageLink("news_categorizzate")&modelId=55&category=$contentCategory.code ">                           

                         $contentCategory.title
                                         
                        </a>
                        #end
                    
                    #end

                    <!-- category data-->
                    <span class="data">$content.date.getFormattedDate("dd/MM/yyyy")</span>
                </div>
                <h5 class="card-title big-heading">$content.title.text</h5>
                <p class="card-text">$content.abstract.text</p>
                <span class="card-signature">di $content.autore.text</span>
                <a class="read-more" href="$content.getContentOnPageLink("paginadettaglio")&modelId=55">    
                    <span class="text">
                    $i18n.getLabel("READ_MORE")
                    </span>
                    <svg class="icon">
                    <use xlink:href="$content.link.destination"/>
                    </svg>
                </a>
            </div>
        </div>
    </div>
</div>
</div>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (183,'PRC','Lista degli allegati ','<div class="link-list-wrapper multiline">
<ul class="d-flex flex-wrap link-list">
    #foreach ($attach in $content.allegati)
    <li class="col-6 mt-3">
        <a class="list-item right-icon p-0"
           href="$attach.attachPath">
            <span class="display-4">$attach.text</span>
            
            <svg class="icon icon-primary icon-right m-0">
            <use xlink:href="/tribunalemarsala/resources/static/img/sprite.svg#it-download">
                </use>
            </svg>
            
        </a>
    </li>
    <li><span class="divider"></span> 
     #end
</ul>
</div>

',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (1111,'CNG','dynamic','<div class="card-wrapper">
    <div class="card border-0">
        <div class="card-body p-1">
            <h3 class="card-title">
              $content.Title.text
            </h3>         
            $content.MainBody.text                                                                         
        </div>
    </div>
</div>



  #foreach($item in $content.lista_comp)
     
     $item.testo.text
     
     <img class="" src="$item.immagine.getImagePath(''0'')" alt="$item.immagine.text">
      
      <a href="$item.link.destination">
      	<div class="it-right-zone py-3">
      		<span class="text">$item.link.text</span>
      	</div> 
      </a>
   
   #end


',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10000,'CON','composizione','#foreach($item in $content.contComp)

    <div class="card-wrapper">
        <div class="card border-0">
            <div class="card-body p-1">
                
                #if($item.title.text)
                 <h3 class="card-title">
                   $item.title.text
                 </h3> 
                #end
             
                #if($item.text.text)
                	$item.text.text
                #end
                
                #if($item.img.resource)
                	<img class="" src="$item.img.getImagePath(''0'')" alt="$item.img.text">
                #end
                
                #if($item.link.destination != "")
                 <a href="$item.link.destination">
                   <div class="it-right-zone py-3">
                     <span class="text">$item.link.text</span>
                   </div> 
                 </a>
                #end
   
   							#if($item.allegato.attachPath != "")
                 <a href="$item.allegato.attachPath">
                   <span class="display-4">$item.allegato.text</span>
                   <svg class="icon icon-primary icon-right m-0">
                     <use xlink:href="/tribunalemarsala/resources/static/img/sprite.svg#it-download">
                     </use>
                   </svg>
                 </a>
                #end
                
            </div>
        </div>
    </div>
    
   <br>
   
#end


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
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10002,'TIR','Modello Tirocinio Formativo','#foreach($item in $content.contTir)

    <div class="card-wrapper">
        <div class="card border-0">
            <div class="card-body p-1">
                
                
                #if($item.title.text)
                 <h3 class="card-title">
                   $item.title.text
                 </h3> 
          			#end
                
                #if($item.title.text)
        					$item.date.longDate <br>
								#end

                #if($item.text.text)
                	$item.text.text<br><br>
                #end
                
   							#if($item.docInfo.attachPath != "")
                 <a href="$item.docInfo.attachPath">
                   <span class="display-4">$item.docInfo.text</span>
                   <svg class="icon icon-primary icon-right m-0">
                     <use xlink:href="/tribunalemarsala/resources/static/img/sprite.svg#it-download">
                     </use>
                   </svg>
                 </a> <br>
                #end
                
                #if($item.mans.attachPath != "")
                 <a href="$item.mans.attachPath">
                   <span class="display-4">$item.mans.text</span>
                   <svg class="icon icon-primary icon-right m-0">
                     <use xlink:href="/tribunalemarsala/resources/static/img/sprite.svg#it-download">
                     </use>
                   </svg>
                 </a> <br>
                #end
                
                #if($item.modDom.attachPath != "")
                 <a href="$item.modDom.attachPath">
                   <span class="display-4">$item.modDom.text</span>
                   <svg class="icon icon-primary icon-right m-0">
                     <use xlink:href="/tribunalemarsala/resources/static/img/sprite.svg#it-download">
                     </use>
                   </svg>
                 </a>
                #end
                
            </div>
        </div>
    </div>
    
   <br>
   
#end


',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10003,'DLD','Full - Default','<article>
<h1>$content.Title.text</a></h1>
#if($content.categories.size() >= 1)
<p><span class="label">$i18n.getLabel("DLD_CATEGORIES"):</span>
#foreach($categ in $content.categories)
<span class="label label-info">$categ.title</span>
#end
</p>
#end
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="well well-small text-center">
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
#if ( $content.LongDescr.text != "" )
$content.LongDescr.text
#end
<p><a class="btn btn-primary" href="$content.File.attachPath">$i18n.getLabel("DLD_DOWNLOAD")&nbsp;<i class="icon-download-alt icon-white"></i></a></p>
</article>',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10004,'STA','Modello Statistica','#foreach($item in $content.contStat)

    <div class="card-wrapper">
        <div class="card border-0">
            <div class="card-body p-1">
                
                
                #if($item.title.text)
                 <h3 class="card-title">
                   $item.title.text
                 </h3> 
          			#end
                
                #if($item.title.text)
        					$item.date.longDate <br>
								#end

                #if($item.text.text)
                	$item.text.text<br><br>
                #end
                
   							#if($item.file.attachPath != "")
                 <a href="$item.file.attachPath">
                   <span class="display-4">$item.file.text</span>
                   <svg class="icon icon-primary icon-right m-0">
                     <use xlink:href="/tribunalemarsala/resources/static/img/sprite.svg#it-download">
                     </use>
                   </svg>
                 </a>
                #end
                
            </div>
        </div>
    </div>
    
   <br>
   
#end


',NULL);
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10005,'PRO','Modello Procedura Concorsuale','#foreach($item in $content.contProc)

    <div class="card-wrapper">
        <div class="card border-0">
            <div class="card-body p-1">
                
                
                #if($item.title.text)
                 <h3 class="card-title">
                   $item.title.text
                 </h3> 
          			#end
                
                #if($item.subtitle.text)
                 <h4 class="card-title">
                   $item.subtitle.text
                 </h4> 
          			#end
                
                #if($item.date.longDate)
        					$item.date.longDate <br>
								#end

                #if($item.text.text)
                	$item.text.text<br><br>
                #end
                
   							#if($item.file.attachPath != "")
                 <a href="$item.file.attachPath">
                   <span class="display-4">$item.file.text</span>
                   <svg class="icon icon-primary icon-right m-0">
                     <use xlink:href="/tribunalemarsala/resources/static/img/sprite.svg#it-download">
                     </use>
                   </svg>
                 </a>
                #end
                
            </div>
        </div>
    </div>
    
   <br>
   
#end


',NULL);
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
INSERT INTO contentmodels (modelid,contenttype,descr,model,stylesheet) VALUES (10031,'DLD','Lists - Default','<article>
<h2>$content.Title.text</h2>
$content.ShortDescr.text
<p class="btn-group">
  <a class="btn" href="$content.contentLink">$i18n.getLabel("DLD_GET_INFO")&nbsp;<i class="icon-info-sign"></i></a>
  <a class="btn btn-primary" href="$content.File.attachPath">$i18n.getLabel("DLD_DOWNLOAD")&nbsp;<i class="icon-download-alt icon-white"></i></a>
</p>
</article>',NULL);
