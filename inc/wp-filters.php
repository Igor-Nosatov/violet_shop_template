<?php



add_filter('nav_menu_item_id', 'clear_nav_menu_item_id', 10, 3);
function clear_nav_menu_item_id($id, $item, $args) {
    return "";
}

add_filter('nav_menu_css_class', 'clear_nav_menu_item_class', 10, 3);
function clear_nav_menu_item_class($classes, $item, $args) {
    return array();
}

function tt_hidetitle_class($classes) {

if ( is_single() || is_page () ):
$classes[] = 'hidetitle';
return $classes;
endif;
return $classes;

}
add_filter('post_class', 'tt_hidetitle_class');



add_filter( 'wp_nav_menu_items', 'adding_register_login_logout_menu', 20, 2 );
function adding_register_login_logout_menu( $items, $args ){
    if ( $args->theme_location != 'log-menu' ){ // Targeting wordpress main or primary menu
        return $items;
    }

    if ( is_user_logged_in() ){
        // This below line of code will display logout url when user loged in
        $items .= '<li><a href="' . wp_logout_url( 'shop/' ) . '">' . _('Logout') . '</a></li>';
    }

    else {
        // This below line of code will display login link when user logout
        $items .= '<li><a href="' . esc_url( get_permalink( get_page_by_title( 'Sign In' ) ) ) . '">' . _('Login') . '</a></l>';

        // This line of code will display Registration link for new visitor or user
        $items .= '<li><a href="' . esc_url( get_permalink( get_page_by_title( 'Register' ) ) ) . '">' . _('Register') . '</a></li>';
    }

    return $items;

}



 ?>
