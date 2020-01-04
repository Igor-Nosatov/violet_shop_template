<footer class="footer-section spad">
	<div class="container">
			<div class="row">
				<div class="col-sm-12 col-lg-12">
          <?php dynamic_sidebar( 'newsletter-widget' ); ?>
				</div>
			</div>
		<div class="footer-widget">
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="single-footer-widget">
						<h4>About us</h4>
						<?php
		                      wp_nav_menu( array(
			                    'theme_location' => 'about-us',
			                     'menu_id'       => 'about-us',

		                     ) );
		                    ?>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="single-footer-widget">
						<h4>Customer Care</h4>
						<?php
		                      wp_nav_menu( array(
			                    'theme_location' => 'customer-menu',
			                     'menu_id'        => 'customer-menu',
		                     ) );
		                    ?>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="single-footer-widget">
						<h4>Our Services</h4>
						<?php
		                      wp_nav_menu( array(
			                    'theme_location' => 'services-menu',
			                     'menu_id'        => 'services-menu',
		                     ) );
		                    ?>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="single-footer-widget">
						<h4>Information</h4>
						<?php
		                      wp_nav_menu( array(
			                    'theme_location' => 'information-menu',
			                     'menu_id'        => 'information-menu',
		                     ) );
		                    ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="social-links-warp">
		<div class="container">
			<div class="social-links">
				<a href="" class="instagram"><i class="fa fa-instagram"></i><span>instagram</span></a>
				<a href="" class="pinterest"><i class="fa fa-pinterest"></i><span>pinterest</span></a>
				<a href="" class="facebook"><i class="fa fa-facebook"></i><span>facebook</span></a>
				<a href="" class="twitter"><i class="fa fa-twitter"></i><span>twitter</span></a>
				<a href="" class="youtube"><i class="fa fa-youtube"></i><span>youtube</span></a>
				<a href="" class="tumblr"><i class="fa fa-tumblr-square"></i><span>tumblr</span></a>
			</div>
		</div>
	</div>
</footer>

<?php wp_footer(); ?>

</body>

</html>
