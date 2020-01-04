<?php
/**
 * Template part for displaying results in search pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package be_easy_store
 */

?>

	<div class="col-lg-3">
		<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

    <div class="search-image">
    	 <?php be_easy_store_post_thumbnail(); ?>
    </div>
		<header class="entry-header">
			<?php the_title( sprintf( '<h4 class="text-dark mt-3 mb-3 entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h4>' ); ?>

			<?php if ( 'post' === get_post_type() ) : ?>
			<div class="entry-meta">
				<?php
				be_easy_store_posted_on();
				be_easy_store_posted_by();
				?>
			</div><!-- .entry-meta -->
			<?php endif; ?>
		</header><!-- .entry-header -->
			<div class="entry-summary">
				<?php the_excerpt(); ?>
			</div><!-- .entry-summary -->

			<footer class="entry-footer">
				<?php be_easy_store_entry_footer(); ?>
			</footer><!-- .entry-footer -->
		</article><!-- #post-<?php the_ID(); ?> -->
	</div>
