<ion:partial view="header" />
<main>
	<div class="container">
		<ion:page>
		
			<nav>
				<?php
					$active_category = "<ion:article:categories:list />";
					$active_category = str_replace("Tots, ", "", $active_category);
					$active_category = str_replace("Todos, ", "", $active_category);
					$active_category = str_replace("All, ", "", $active_category);
					$active_class = "";
				?>			
				<ion:categories tag="ul" class="nav" active_class="active">
					<?php
						if ($active_category == "<ion:category:title />"){
							$active_class = " class=\"active\"";
						}else{
							$active_class = "";
						}
					?>
					<li<?php echo $active_class; ?>>
						<a<?php echo $active_class; ?> href="<ion:category:url />">
							<ion:category:title />
						</a>
					</li>
				</ion:categories>
			</nav>

			<ion:article>	


				<div id="text-content">
					<nav>
						<ion:article:prev >
							<a href="<ion:url />"><img src="<ion:theme_url />assets/images/left_arrow.png" alt="" /></a>
						</ion:article:prev>			
						<ion:article:next >
							<a href="<ion:url />"><img src="<ion:theme_url />assets/images/right_arrow.png" alt="" /></a>
						</ion:article:next>
					</nav>
					<p>
						<ion:title /><br />
						<ion:subtitle expression="!=''">
							<img src="<ion:theme_url />assets/images/line.png" alt="" img1 /><br />
							<ion:subtitle /><br />
						</ion:subtitle>
						
						<ion:content expression="!=''">
							<img img2 src="<ion:theme_url />assets/images/line.png" alt="" /><br />	
						</ion:content>	
						
						<?php
							$text = '<ion:content />';
							$text_without_tags = str_replace("<p>", "", $text);
							$text_without_tags = str_replace("</p>", "", $text_without_tags);
							
							echo $text_without_tags."<br />";
						?>
						
						<ion:tags:count expression=".gt(0)">
							<img src="<ion:theme_url />assets/images/line.png" alt="" /><br />	
						</ion:tags:count>		
						
						<ion:tags>
							<ion:tag>
								<strong><ion:title /></strong><br />
							</ion:tag>
						</ion:tags>
					 </p>
					 <div class="social-share">
						<a href="https://twitter.com/intent/tweet?text=<ion:title /> - EFONTS&url=<ion:url />&hashtags=dissenyEfonts" title="Twitter Share" class="wptwitter">
							<img src="<ion:theme_url />assets/images/twitter2.png" />
						</a>
						<a href="http://www.facebook.com/share.php?u=<ion:url />" target='_blank' title="Facebook Share" >
							<img src="<ion:theme_url />assets/images/fb2.png" />
						</a>
						<img src="<ion:theme_url />assets/images/pinterest.png" style="display: none;" />						
					 </div>
				</div>
				<!-- Start Advanced Gallery Html Containers -->
				<div id="gallery" class="content">
					<div class="slideshow-container">
						<div id="loading" class="loader"></div>
						<div id="slideshow" class="slideshow"></div>
					</div>
				</div>
				<div id="thumbs" class="navigation">
					<ul class="thumbs noscript">
						<ion:medias type="picture">
							<ion:media>
								<li class="<ion:index expression='index%6==0'> last</ion:index>">
									<a class="thumb" name="leaf" href="<ion:src size='636,425' unsharp='true' />" title="">
										<img src="<ion:src method='adaptive' size='96,64' unsharp='true' />" title="" alt="" />
									</a>
								</li>
							</ion:media>
						</ion:medias>
					</ul>
				</div>
			</ion:article>
		</ion:page>

		<script type="text/javascript">
			jQuery(document).ready(function($) {
				// We only want these styles applied when javascript is enabled
				$('div.navigation').css({'width' : '636px', 'float' : 'left'});
				$('div.content').css('display', 'block');

				// Initially set opacity on thumbs and add
				// additional styling for hover effect on thumbs
				var onMouseOutOpacity = 0.67;
				$('#thumbs ul.thumbs li').opacityrollover({
					mouseOutOpacity:   onMouseOutOpacity,
					mouseOverOpacity:  1.0,
					fadeSpeed:         'fast',
					exemptionSelector: '.selected'
				});
				
				// Initialize Advanced Galleriffic Gallery
				var gallery = $('#thumbs').galleriffic({
					delay:                     2500,
					numThumbs:                 100,
					preloadAhead:              10,
					enableTopPager:            false,
					enableBottomPager:         false,
					maxPagesToShow:            7,
					imageContainerSel:         '#slideshow',
					controlsContainerSel:      '#controls',
					captionContainerSel:       '#caption',
					loadingContainerSel:       '#loading',
					renderSSControls:          false,
					renderNavControls:         false,
					playLinkText:              'Play Slideshow',
					pauseLinkText:             'Pause Slideshow',
					prevLinkText:              '&lsaquo; Previous Photo',
					nextLinkText:              'Next Photo &rsaquo;',
					nextPageLinkText:          'Next &rsaquo;',
					prevPageLinkText:          '&lsaquo; Prev',
					enableHistory:             false,
					autoStart:                 false,
					syncTransitions:           true,
					defaultTransitionDuration: 900,
					onSlideChange:             function(prevIndex, nextIndex) {
						// 'this' refers to the gallery, which is an extension of $('#thumbs')
						this.find('ul.thumbs').children()
							.eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
							.eq(nextIndex).fadeTo('fast', 1.0);
					},
					onPageTransitionOut:       function(callback) {
						this.fadeTo('fast', 0.0, callback);
					},
					onPageTransitionIn:        function() {
						this.fadeTo('fast', 1.0);
					}
				});
			});
		</script>
	</div> <!-- Container End -->
</main>

<ion:partial view="footer" />
