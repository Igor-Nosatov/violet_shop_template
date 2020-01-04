<?php

function service_icon_init() {

register_sidebar( array(
  'name'          => esc_html__( 'Service Icon 1', 'be_easy_store' ),
  'id'            => 'service-icon-1',
  'description'   => esc_html__( 'Add widgets here.', 'be_easy_store' ),
  'before_widget' => '',
  'after_widget'  => '',
  'before_title'  => '',
  'after_title'   => '',
) );
register_sidebar( array(
  'name'          => esc_html__( 'Service Icon 2', 'be_easy_store' ),
  'id'            => 'service-icon-2',
  'description'   => esc_html__( 'Add widgets here.', 'be_easy_store' ),
  'before_widget' => '',
  'after_widget'  => '',
  'before_title'  => '',
  'after_title'   => '',
) );
register_sidebar( array(
  'name'          => esc_html__( 'Service Icon 3', 'be_easy_store' ),
  'id'            => 'service-icon-3',
  'description'   => esc_html__( 'Add widgets here.', 'be_easy_store' ),
  'before_widget' => '',
  'after_widget'  => '',
  'before_title'  => '',
  'after_title'   => '',
) );
}

add_action( 'widgets_init', 'service_icon_init' );
 ?>
