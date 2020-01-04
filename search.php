<?php
/**
*
*Search Page
*
 */

get_header();
?>

<section class="categories-page spad">
		<div class="container">
				<div class="row">
						<div class="col-lg-12 col-md-12">

		<?php if ( have_posts() ) : ?>

			<header class="page-header">
				<h3 class="page-title font-weight-bold mt-4 mb-5">
					<?php
					printf( esc_html__( 'Search Results for: %s', 'be_easy_store' ), '<span>' . get_search_query() . '</span>' );
					?>
				</h3>
			</header>
<div class="row no-gutters">
	<?php

	 while ( have_posts() ) :
		 the_post();

		 get_template_part( 'template-parts/content', 'search' );

	 endwhile;

	 the_posts_navigation();

 else :

	 get_template_part( 'template-parts/content', 'none' );

 endif;
 ?>
</div>


	</div>
</div>
</div>
</section>

<?php

get_footer();
