<?php

function newsletter_widget_init() {

register_sidebar( array(
  'name'          => esc_html__( 'Newsletter', 'be_easy_store' ),
  'id'            => 'newsletter-widget',
  'description'   => esc_html__( 'Add widgets here.', 'be_easy_store' ),
  'before_widget' => '',
  'after_widget'  => '',
  'before_title'  => '',
  'after_title'   => '',
) );

}
add_action( 'widgets_init', 'newsletter_widget_init' );




 ?>
