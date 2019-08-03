<?php


require_once('wp_bootstrap_navwalker.php');


function clean_cut_theme_support(){
   
    add_theme_support( 'post-thumbnails' );

    register_nav_menus( array(
        'primary' => __( 'Primary Menu'),
        'footer' => __( 'Footer Menu')
    ) );
    
    //Post format Support
    add_theme_support('post-formats',array('aside','gallery'));
    
}
add_action( 'after_setup_theme','clean_cut_theme_support');

//Add customizer Functionality
require get_template_directory(). '/inc/customizer.php';

//Widget Location
function init_widgets($id){
    register_sidebar(array(
        'name' => 'Sidebar',
        'id' => 'sidebar',
        'before_widget' => '<div class="well animated fadeInRight sidebar-widget">',
        'after_widget'  => '</div>',
        'before_title'  => '<h3>',
        'after_title'   => '</h3>'
    ));
    register_sidebar(array(
        'name' => 'Subnav',
        'id' => 'subnav',
        'before_widget' => '<div class="sub-nav">',
        'after_widget'  => '</div>',
        'before_title'  => '<div class="hide">',
        'after_title'   => '</div>'
    ));
    register_sidebar(array(
        'name' => 'Bottom',
        'id' => 'bottom',
        'before_widget' => '<div class="section-a fadeInUp"><div class="container">',
        'after_widget'  => '</div>',
        'before_title'  => '<div class="hide">',
        'after_title'   => '</div>'
    ));
}
add_action('widgets_init','init_widgets');

//Get top parent
function get_top_parent(){
    global $post;
    if($post-> post_parent){
        $ancestors = array_reverse(get_post_ancestors( $post->ID ));
        return $ancestors[0];
    }
    return $post->ID;
}



//this function will define the length of excerpt
function control_excerpt_length( $length ){
    return 30;
}
add_filter('excerpt_length','control_excerpt_length');
//this function will remove the [...] of excerpt
function remove_dot_from_excerpt( $remove ){
    return ' <a  href=" '. get_the_permalink() . ' ">....</a>';
}
add_filter('excerpt_more', 'remove_dot_from_excerpt');