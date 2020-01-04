<?php

add_shortcode( 'wc_login_form', 'separate_login_form' );

function separate_login_form() {
   if ( is_admin() ) return;
   if ( is_user_logged_in() ) return;
   ob_start();

   woocommerce_login_form();

   return ob_get_clean();
}
