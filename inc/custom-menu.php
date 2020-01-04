
<?php 


function header_menu_link( $atts, $item, $args ) {
		if($args->theme_location == 'header-menu') {
			$atts['class'] = 'nav-link';
		}
    return $atts;
}
add_filter( 'nav_menu_link_attributes', 'header_menu_link', 10, 3 );


function header_menu_classes($classes, $item, $args) {
  if($args->theme_location == 'header-menu') {
    $classes[] = 'nav-item';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'header_menu_classes', 1, 3);




?>
