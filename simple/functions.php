<?php

function simple_theme_setup(){
    // Featured Image Support
    add_theme_support('post-thumbnails');

    //menu
    register_nav_menus(array(

        'primary' => __('Primary Menu')
    ));
    
}

add_action('after_setup_theme','simple_theme_setup');


//this function will define the length of excerpt
function set_excerpt_length(){
    return 55;
}
add_filter('excerpt_length', 'set_excerpt_length');


//this function will remove the [...] of excerpt
function remove_dot_from_excerpt( $remove ){
    return ' <a href=" '. get_the_permalink() . ' "> [Read more..]</a>';
}
add_filter('excerpt_more', 'remove_dot_from_excerpt');

//widget location
function init_widgets( $id ){
    register_sidebar(array(
        'name' => 'Sidebar',
        'id'   => 'sidebar',
        'before_widget' => '<div class="side-widget">',
        'after_widget'  => '</div>',
        'before_title'  => '<h3>',
        'after_title'   => '</h3>'
    ));
}
add_action("widgets_init", 'init_widgets');

