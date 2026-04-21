<ion:partial view="header-home" />

	<main class="home">
		<!-- Page : Current | Medias From Current Page -->
		<ion:page>
			<div class="slider">
				<ion:medias type="picture">
					<ion:media>
						<div><img src="<ion:src />" alt="<ion:alt />" title="<ion:title />" /></div>	
					</ion:media>
				</ion:medias>
			</div>
			<ion:extend:content:value />
			
			<a class="smooth" data-toggle="collapse" href="#collapseOne">
				<img id="moreinfo" src="<ion:theme_url />assets/images/more-info.png" alt="">
			</a>

			<aside id="collapseOne" class="collapse">
				
				<!-- Display the Element which has the name "home-extend" -->
				<ion:element:home-extend>
					<ion:items:extra-content:value />
				</ion:element:home-extend>
				
			</aside>
			
		</ion:page>
	</main>

<ion:partial view="footer-home" />
