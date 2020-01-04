<?php

function header_icon_init() {
  register_sidebar( array(
    'name'          => esc_html__( 'Logo', 'be_easy_store' ),
    'id'            => 'logo',
    'description'   => esc_html__( 'Add widgets here.', 'be_easy_store' ),
    'before_widget' => '',
    'after_widget'  => '',
    'before_title'  => '',
    'after_title'   => '',
  ) );
register_sidebar( array(
  'name'          => esc_html__( 'Icon 1', 'be_easy_store' ),
  'id'            => 'icon-1',
  'description'   => esc_html__( 'Add widgets here.', 'be_easy_store' ),
  'before_widget' => '',
  'after_widget'  => '',
  'before_title'  => '',
  'after_title'   => '',
) );
register_sidebar( array(
  'name'          => esc_html__( 'Icon 2', 'be_easy_store' ),
  'id'            => 'icon-2',
  'description'   => esc_html__( 'Add widgets here.', 'be_easy_store' ),
  'before_widget' => '',
  'after_widget'  => '',
  'before_title'  => '',
  'after_title'   => '',
) );
register_sidebar( array(
  'name'          => esc_html__( 'Icon 3', 'be_easy_store' ),
  'id'            => 'icon-3',
  'description'   => esc_html__( 'Add widgets here.', 'be_easy_store' ),
  'before_widget' => '',
  'after_widget'  => '',
  'before_title'  => '',
  'after_title'   => '',
) );

}
add_action( 'widgets_init', 'header_icon_init' );
 ?>
