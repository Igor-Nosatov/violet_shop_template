<?php

add_action( 'wp_enqueue_scripts', 'be_easy_store_style' );
function be_easy_store_style() {
	wp_enqueue_style( 'font-amatic',  "https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap", array(), null);
	wp_enqueue_style( 'font-montserrat', "https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap", array(), null );
	wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/assets/css/bootstrap.min.css', array(),  null );
	wp_enqueue_style( 'font-awesome', get_template_directory_uri() . '/assets/css/font-awesome.min.css', array(), null );
	wp_enqueue_style( 'nice-select', get_template_directory_uri() . '/assets/css/nice-select.css', array(), null );
	wp_enqueue_style( 'owl.carousel', get_template_directory_uri() . '/assets/css/owl.carousel.min.css', array(), null );
	wp_enqueue_style( 'magnific-popup', get_template_directory_uri() . '/assets/css/magnific-popup.css', array(), null );
	wp_enqueue_style( 'slicknav', get_template_directory_uri() . '/assets/css/slicknav.min.css', array(), null );

	wp_enqueue_style( 'be_easy_store-style', get_stylesheet_uri() );

}

add_action( 'wp_enqueue_scripts', 'be_easy_store_scripts' );

function be_easy_store_scripts() {
  wp_enqueue_script( 'jquery', get_template_directory_uri() . '/assets/js/jquery-3.3.1.min.js', array(), true );
	wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/assets/js/bootstrap.min.js', array(), true );
	wp_enqueue_script( 'magnific-popup', get_template_directory_uri() . '/assets/js/jquery.magnific-popup.min.js', array(), true );
	wp_enqueue_script( 'slicknav', get_template_directory_uri() . '/assets/js/jquery.slicknav.js', array(), true );
	wp_enqueue_script( 'owl-carousel', get_template_directory_uri() . '/assets/js/owl.carousel.min.js', array(), true );
	wp_enqueue_script( 'nice-select', get_template_directory_uri() . '/assets/js/jquery.nice-select.min.js', array(), true );
	wp_enqueue_script( 'navigation', get_template_directory_uri() . '/assets/js/navigation.js', array(), true );
	wp_enqueue_script( 'skip-link-focus-fix', get_template_directory_uri() . '/assets/js/skip-link-focus-fix.js', array(), true );
	wp_enqueue_script( 'mixitup', get_template_directory_uri() . '/assets/js/mixitup.min.js', array(), true );
	wp_enqueue_script( 'magnific-popup', get_template_directory_uri() . '/assets/js/jquery.magnific-popup.min.js', array(), true );
	wp_enqueue_script( 'main-js', get_template_directory_uri() . '/assets/js/main.js', array(), true );


	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}


 ?>
