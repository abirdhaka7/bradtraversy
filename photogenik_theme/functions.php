<?php

require_once('widgets/class-wp-widgets-categories.php');

function theme_setup(){

    add_theme_support( 'post-thumbnails' );

    set_post_thumbnail_size(900, 600);

    add_theme_support( 'post-formats', array('gallery') );

    
}
add_action('after_setup_theme', 'theme_setup');

function init_widgets($id){
    
    register_sidebar( array(
        'name' => 'Sidebar',
        'id' => 'sidebar'
    ));

}
add_action( 'widgets_init', 'init_widgets' );

// Register Widgets
function custom_register_widgets(){
	register_widget('WP_Widget_Categories_Custom');
}

add_action('widgets_init', 'custom_register_widgets');