<?php

function advance_theme_support(){

    add_theme_support( 'post-thumbnails' );

    register_nav_menus(array(
            
            'primary' =>__('Primary Menu'),
            'footer'  => __('Footer Menu'),
    ));
    // post format support
    add_theme_support('post-formats', array('aside', 'gallery','link'));

    //register sidebar 
    function widget_init($id){
        register_sidebar( array(
            'name' => 'Sidebar',
            'id' => 'sidebar',
            'before_widget' => '<div class="block side-widget"',
            'after_widget' => '</div>',
            'before_title'  => '<h3>',
            'afters_title'  => '</h3>',
        ) );
        register_sidebar( array(
            'name' => 'Showcase',
            'id' => 'showcase',
            'before_widget' => '<div class="showcase"',
            'after_widget' => '</div>',
            'before_title'  => '<h3>',
            'afters_title'  => '</h3>',
        ) );
        register_sidebar( array(
            'name' => 'Box 1',
            'id' => 'box1',
            'before_widget' => '<div class="box box1"',
            'after_widget' => '</div>',
            'before_title'  => '<h3>',
            'afters_title'  => '</h3>',
        ) );
        register_sidebar( array(
            'name' => 'Box2',
            'id' => 'box2',
            'before_widget' => '<div class="box box2"',
            'after_widget' => '</div>',
            'before_title'  => '<h3>',
            'afters_title'  => '</h3>',
        ) );
        register_sidebar( array(
            'name' => 'Box 3',
            'id' => 'box3',
            'before_widget' => '<div class="box box3"',
            'after_widget' => '</div>',
            'before_title'  => '<h3>',
            'afters_title'  => '</h3>',
        ) );
       
    }
}

add_action( 'widgets_init' , 'widget_init' );


add_action( 'after_setup_theme','advance_theme_support');


function advance_theme_excerpt_length($length){
    return 44;
}
add_action('excerpt_length','advance_theme_excerpt_length');



function advance_theme_excerpt_link( ){
    return '<a href=" '. get_the_permalink() . ' "> [Read more]</a>';
}
add_action('excerpt_more','advance_theme_excerpt_link');


function get_top_parent(){
    global $post;
    if($post->post_parent){
        $ancestors = get_post_ancestors($post->ID);
        return $ancestors[0];
    }
    return $post->ID;
}

function page_is_parent(){
    global $post;
    $pages = get_pages('child_of='.$post->ID);
    return count($pages);
}