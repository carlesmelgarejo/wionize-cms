<ion:partial view="header" />
<main>
	<div class="container">

		<ion:page>
			<nav>
				<ion:categories tag="ul" class="nav" active_class="active">
					<li <ion:category:is_active> class="<ion:category:active_class />" </ion:category:is_active>>
						<a <ion:category:is_active> class="<ion:category:active_class />" </ion:category:is_active> href="<ion:category:url />">
							<ion:category:title />
						</a>
					</li>
				</ion:categories>
			</nav>
			
			<div class="row-fluid">
				<ul class="thumbnails">
					<ion:articles type="">
						
						<ion:article>

							<li class="span4<ion:index expression='index%3==0'>-last span4 last</ion:index>">
								<div class="hover-text">
									<p>
										<a href="<ion:article:url />">
											<ion:title /><br />
											<ion:subtitle expression="!=''">
												<img src="<ion:theme_url />assets/images/line.png" alt="" /><br />
												<ion:subtitle />
											</ion:subtitle>
										</a>
									</p>
								</div>
								<ion:medias type="picture" limit="1">
									<ion:media>
										
											<a href="<ion:src />" class="thumbnail fancybox" data-fancybox-group="thumb<ion:article:get key="id_article" />">
												<img src="<ion:src method="adaptive" size="304,199" unsharp="true" />" title="<ion:title />" alt="<ion:alt />" />
											</a>
										
									</ion:media>
								</ion:medias>
							</li>
						</ion:article>
						
					</ion:articles>
				</ul>		
			</div>
		</ion:page>


	</div> <!-- Container End -->
</main>
<ion:partial view="footer" />
