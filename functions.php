<?php

require get_template_directory() . '/inc/theme-support.php';

require get_template_directory() . '/inc/theme-widget.php';

require get_template_directory() . '/inc/theme-widget-icons/header-icon.php';
require get_template_directory() . '/inc/theme-widget-icons/service-icon.php';
require get_template_directory() . '/inc/newsletter-widget.php';

require get_template_directory() . '/inc/enqueue-style-scripts.php';

require get_template_directory() . '/inc/custom-header.php';
require get_template_directory() . '/inc/custom-menu.php';

require get_template_directory() . '/inc/template-tags.php';

require get_template_directory() . '/inc/template-functions.php';

require get_template_directory() . '/inc/customizer.php';

/*=================Woocommerce Login and Register=================*/
require get_template_directory() . '/template-parts/register-form.php';
require get_template_directory() . '/template-parts/login.php';


if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

if ( class_exists( 'WooCommerce' ) ) {
	require get_template_directory() . '/inc/woocommerce.php';
}

add_filter('newsletter_enqueue_style', '__return_false');

require get_template_directory() . '/inc/wc-filters.php';
require get_template_directory() . '/inc/wp-filters.php';


add_action( 'woocommerce_before_add_to_cart_quantity', 'display_quantity_plus' );
function display_quantity_plus() {
   echo '<button type="button" class="plus" >+</button>';
}
add_action( 'woocommerce_after_add_to_cart_quantity', 'display_quantity_minus' );
function display_quantity_minus() {
   echo '<button type="button" class="minus" >-</button>';
}
