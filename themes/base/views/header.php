<!DOCTYPE html>
    <html lang="<ion:language:code />" dir="<ion:language:dir />">
    <head>
		<meta charset="utf-8">
		<title><ion:meta_title /> | <ion:site_title /></title>

		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densityDpi=device-dpi" />
		<meta name="description" content="<ion:meta_description />" />
		<meta name="keywords" content="<ion:meta_keywords />" />
		<meta name="author" content="" />
		<meta name="p:domain_verify" content="4521c1137552db9abe1449d8037d714c"/>

		<!-- FACEBOOK METATAGS -->	
		<meta property="og:title" content="De llibre" />
		<meta property="og:type" content="website" />
		<meta property="og:url" content="<ion:article:url />" />
		<meta property="og:site_name" content="efonts.cat" />
		<meta property="og:image" content="<ion:page><ion:article><ion:medias type='picture' limit='1'><ion:media><ion:src method='width' size='600'/></ion:media></ion:medias></ion:article></ion:page>"/>
		<meta property="og:description" content="EFONTS" />
		<!-- //FACEBOOK METATAGS -->
		
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@efonts.cat">
		<meta name="twitter:creator" content="@efonts.cat">
		<meta name="twitter:title" content="<ion:meta_title />">
		<meta name="twitter:description" content="<ion:site_title />">
		<meta name="twitter:image" content="<ion:page><ion:article><ion:medias type='picture' limit='1'><ion:media><ion:src method='width' size='600'/></ion:media></ion:medias></ion:article></ion:page>"/>
		
		<!-- Styles -->
		<link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,300italic' rel='stylesheet' type='text/css'/>
		<link href="<ion:theme_url />assets/css/bootstrap.min.css" rel="stylesheet" type='text/css'/>
		<link href="<ion:theme_url />assets/css/bootstrap-responsive.min.css" rel="stylesheet" type='text/css'/>
		<link href="<ion:theme_url />assets/css/app.css" rel="stylesheet" type='text/css'/>
		<link href="<ion:theme_url />assets/css/fancybox.css" rel="stylesheet" type='text/css'/>
		<link href="<ion:theme_url />assets/css/basic.css" rel="stylesheet" type='text/css'/>
		<link href="<ion:theme_url />assets/css/galleriffic-2.css" rel="stylesheet" type='text/css'/>
		
		<!-- Slick jquery slider -->
		<link rel="stylesheet" type="text/css" href="<ion:theme_url />assets/css/slick.css"/>
		<link rel="stylesheet" type="text/css" href="<ion:theme_url />assets/css/slick-theme.css"/>

		<link href="<ion:theme_url />assets/css/style.css" rel="stylesheet" type='text/css'/>

		<!-- Load Jquery Javascript Library -->
		<script src="<ion:theme_url />assets/js/jquery-1.8.2.min.js"></script>
		<script src="<ion:theme_url />assets/js/bootstrap.min.js"></script>
		<script src="<ion:theme_url />assets/js/init.js"></script>
		<script src="<ion:theme_url />assets/js/jquery.galleriffic.js"></script>
		<script src="<ion:theme_url />assets/js/jquery.opacityrollover.js"></script>

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Fav and touch icons -->
        <link rel="shortcut icon" href="<ion:theme_url />assets/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<ion:theme_url />assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<ion:theme_url />assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<ion:theme_url />assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="<ion:theme_url />assets/ico/apple-touch-icon-57-precomposed.png">

		<?php
			if (stripos($_SERVER['HTTP_USER_AGENT'], 'MSIE 9')||stripos($_SERVER['HTTP_USER_AGENT'], 'MSIE 10')) {
				echo "<link rel='stylesheet' type='text/css' href='<ion:theme_url />assets/css/all-ie-only.css' />";
			}
		?>

		<script type="text/javascript">

			document.oncontextmenu = function(){
				//alert("<ion:lang key='right_button' />");
				//return false;
			}

			$(function(){
				$('#home-categories div:gt(0)').hide();
				setInterval(function(){
				  $('#home-categories div:first-child').fadeOut(0)
					 .next('div').fadeIn(1000)
					 .end().appendTo('#home-categories');}, 4000);
			});
		</script>
		
		<ion:google_analytics />

    </head>
    <body>
        <header>
        	<div class="header-div">
				<a href="<ion:home_url />" class="logo"><img src="<ion:theme_url />assets/images/efonts-logo.png" alt=""></a>
				
				<div id="home-categories">
					<img  usemap="#icones-xarxes" src="<ion:theme_url />assets/images/icones_xarxes.png" />
				</div>

				<map id="icones-xarxes" name="icones-xarxes">
					<area shape="rect" alt="" title="" coords="3,1,27,29" href="https://twitter.com/efonts" target="_blank" />
					<area shape="rect" alt="" title="" coords="35,2,60,29" href="http://instagram.com/efonts/" target="_blank" />
					<area shape="rect" alt="" title="" coords="67,2,93,29" href="https://www.facebook.com/efonts.cat" target="_blank" />
					<area shape="rect" alt="" title="" coords="100,1,124,29" href="http://www.pinterest.com/elenafonts/" target="_blank" />
					<area shape="rect" alt="" title="" coords="131,1,157,29" href="https://es.linkedin.com/in/efonts" target="_blank" />
					<!-- Created by Online Image Map Editor (http://www.maschek.hu/imagemap/index) -->
				</map>
				
				<div class="language-wrapper">
					<ion:languages tag="ul">
						<li<ion:language:is_active> class="active"</ion:language:is_active>>
							<a href="<ion:language:url />"<ion:language:is_active> class="active"</ion:language:is_active>>
								<ion:language:code />
							</a>
						</li>
					</ion:languages>
				</div>			
				<nav>
					<!--
						Navigation Menu
					-->
					<ion:tree_navigation tag="ul" class="nav" active_class="active" />
				</nav>
			</div>

        </header>