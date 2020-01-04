<?php

add_filter( 'woocommerce_registration_redirect', 'custom_redirection_after_registration', 10, 1 );
function custom_redirection_after_registration( $redirection_url ){

    $redirection_url = get_home_url();

    return $redirection_url;
}

add_filter( 'woocommerce_login_redirect', 'custom_redirection_after_login', 10, 1 );
function custom_redirection_after_login( $redirection_url ){

    $redirection_url = get_home_url();

    return $redirection_url;
}

// Trigger jQuery script
add_action( 'wp_footer', 'add_cart_quantity_plus_minus' );
function add_cart_quantity_plus_minus() {
   // Only run this on the single product page
   if ( ! is_product() ) return; ?>
      <script type="text/javascript">
      jQuery(document).ready(function($){
         $('form.cart').on( 'click', 'button.plus, button.minus', function() {
            // Get current quantity values
            var qty = $( this ).closest( 'form.cart' ).find( '.qty' );
            var val   = parseFloat(qty.val());
            var max = parseFloat(qty.attr( 'max' ));
            var min = parseFloat(qty.attr( 'min' ));
            var step = parseFloat(qty.attr( 'step' ));
            // Change the value if plus or minus
            if ( $( this ).is( '.plus' ) ) {
               if ( max && ( max <= val ) ) {
                  qty.val( max );
               } else {
                  qty.val( val + step );
               }
            } else {
               if ( min && ( min >= val ) ) {
                  qty.val( min );
               } else if ( val > 1 ) {
                  qty.val( val - step );
               }
            }
         });
      });
      </script>
   <?php
}

add_filter( 'woocommerce_checkout_fields' , 'custom_override_checkout_fields' );

function custom_override_checkout_fields( $fields ) {
     unset($fields['billing']['billing_country']);
     unset($fields['billing']['billing_address_2']);
     unset($fields['billing']['billing_company']);
     unset($fields['billing']['billing_state']);
     unset($fields['billing']['billing_email']);
     return $fields;
}

 ?>
