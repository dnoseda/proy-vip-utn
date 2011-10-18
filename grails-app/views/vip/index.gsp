<!doctype html>
<html lang="es" class="no-js">
  <head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>
      ${item.title}</title>
  </head>
  <body>
    <div class="header mainHeader ml home">
      <strong>
        <a class="ml-main-header-logo-es" href="http://www.mercadolibre.com.ar">
          MercadoLibre - Donde compras y vendes de todo	</a>
      </strong>


      <form id="formBusqueda" class="ml-main-header-search-bar" action="http://www.mercadolibre.com.ar/jm/search" method="get">
        <div class="buscador home">
          <input type="text" class="search home" maxlength="60" name="as_word" autocomplete="off" id="query" tabindex="1">
          <input type="submit" value="Buscar" class="btn secondary ml-main-header-search-button" accesskey="b" tabindex="2">
        </div>
        <div id="autosug_div">
        </div>
        <a rel="nofollow" class="btn secondary ml-main-header-sell-button" href="http://www.mercadolibre.com.ar/jm/syi4">
          Vender</a>
      </form>
    </div>

    <div class="nav path">
    </div>


     <style>
    .gallery {width: 600px;}
    </style>
<div class="gallery ch-carousel">
			<ul>
				<g:each in="${item.pictures}">
					<li><img src="${it.url}"></li>
				</g:each>
			</ul>
		</div>

		<script type="text/javascript" src="/js/jquery.js"></script>
		<script type="text/javascript" src="/js/chico-min-0.7.9.js"></script>
	
      <script type="text/javascript">
        $(".gallery").carousel();
      </script>


      <div class="infoProd" >
        <h1 itemprop="name">
          ${item.title}</h1>
        <dl class="itemData">
          <dt>
          Precio:</dt>
          <dd class="placePrice">
          <strong class="price principal" itemprop="price">
            $ ${item.price}</strong>
          </dd>
        </dl>

        <div class="article buy">
          <!-- Button for contact -->
          <form class="buy-btn" method="get" action="/question/make?from=is">
            <input type="hidden" value="${item.id}" name="itemId"/>
            <input type="submit" id="makeQuest" class="btn primary makeQuestBtn" value="Contactar" title="Contactar al vendedor">
            </input>
          </form>
          <!-- Share component-->
          <!-- Component ILikeButtonBox-->
        </div>
        
      </div>
    <!-- footer START -->
    <div class="footer mainFooter">
      <ul>
        <li>
        <a href="http://www.mercadolibre.com.ar/argentina/ml/org_theme.p_main?as_theme_id=NEW_SOBRE_ML">
          Sobre MercadoLibre</a>
        | </li>
        <li>
        <a href="http://www.mercadolibre.com.ar/argentina/ml/p_loadhtml?as_menu=CSEG&amp;as_html_code=CSEG01">
          Centro de Seguridad</a>
        | </li>
        <li>
        <a href="http://www.mercadolibre.com.ar/sitemap.html">
          Mapa del Sitio</a>
        | </li>
        <li>
        <a href="http://www.mercadolibre.com">
          Ver otros pa&iacute;ses</a>
        </li>
      </ul>
      <hr>
      <p>
      El uso de este sitio web implica la aceptación de los <a target="_blank" href="http://www.mercadolibre.com.ar/seguro_terminos.html">
        Términos y Condiciones</a>
      y de las <a target="_blank" href="http://www.mercadolibre.com.ar/org-img/html/MLA/seguro_privacidad.html">
        Políticas de Privacidad</a>
      de MercadoLibre Argentina Ltda. <br />
      Copyright © 1999-2011 MercadoLibre Argentina Ltda. </p>
    </div>
    <!-- footer END -->
    <!--/div-->
    <link rel='stylesheet' type='text/css' href='/css/base.css' />
    <link rel="stylesheet" type='text/css'href="/css/chico-min-0.7.9.css">
  </body>
</html>


