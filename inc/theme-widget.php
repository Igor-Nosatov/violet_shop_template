<?php

function be_easy_store_widgets_init() {

	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'be_easy_store' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'be_easy_store' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

	register_sidebar( array(
		'name'          => esc_html__( 'Search', 'be_easy_store' ),
		'id'            => 'search',
		'description'   => esc_html__( 'Add widgets here.', 'be_easy_store' ),
		'before_widget' => '',
		'after_widget'  => '',
		'before_title'  => '',
		'after_title'   => '',
	) );

}
add_action( 'widgets_init', 'be_easy_store_widgets_init' );
