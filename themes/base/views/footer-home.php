    <!-- FOOTER -->
    <footer>
		<div class="container">
        <div class="row-fluid">
            <ion:page id="footer">
				<ion:articles>
					<ion:article>
						<div class="span4 first">
							<ion:title tag="h4" />
							<ion:content />
						</div>
					</ion:article>
				</ion:articles>
            </ion:page>
        </div>
        </div>
    </footer>

    <!-- Default Theme Js Files & Codes -->
    <script type="text/javascript" src="<ion:theme_url />assets/js/default.min.js"></script>
    <script type="text/javascript" src="<ion:theme_url />assets/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript">
        !function ($) {
            var $window = $(window);

            // Disable certain links in docs
            $('[href^=#]').click(function (e) {
                e.preventDefault()
            })

        }(window.jQuery)
    </script>

	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="<ion:theme_url />assets/js/slick.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('.slider').slick({
				autoplay: true,
				dots: false,
				infinite: true,
				speed: 500,
				fade: true,
				cssEase: 'linear',
				autoplaySpeed: 3000
			});
		});
	</script>
</body>
</html>