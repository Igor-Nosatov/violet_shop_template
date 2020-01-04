<?php

if ( ! function_exists( 'be_easy_store_setup' ) ) :

	function be_easy_store_setup() {

    load_theme_textdomain( 'kk', get_template_directory() . '/languages' );
		
		add_theme_support( 'automatic-feed-links' );
		add_theme_support( 'title-tag' );
		add_theme_support( 'post-thumbnails' );

		register_nav_menus( array(
			'header-menu' => esc_html__( 'Header Menu', 'be_easy_store' ),
			'log-menu' => esc_html__( 'Login Menu', 'be_easy_store' ),

			'about-us' => esc_html__( 'About Us Menu', 'be_easy_store' ),
			'customer-menu' => esc_html__( 'Customer Care Menu', 'be_easy_store' ),
			'services-menu' => esc_html__( 'Our Services Menu', 'be_easy_store' ),
			'information-menu' => esc_html__( 'Information Menu', 'be_easy_store' ),

		) );

		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		add_theme_support( 'customize-selective-refresh-widgets' );

		function themename_custom_logo_setup() {
	      $defaults = array(
	           'height'      => 100,
	           'width'       => 400,
	           'flex-height' => true,
	           'flex-width'  => true,
	       );
	   add_theme_support( 'custom-logo', $defaults );
	    }
	 }
endif;
add_action( 'after_setup_theme', 'be_easy_store_setup' );








 ?>
