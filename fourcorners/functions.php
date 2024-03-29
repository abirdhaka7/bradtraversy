<?php

function fc_theme_setup(){

    add_theme_support('post-thumbnails');
    //Add size for specific img-thumbnail selection 
    add_image_size('home-thumb', 715, 499);

    register_nav_menus(array(
        'primary' => __('Primary Menu')
    ));
}
add_action('after_setup_theme','fc_theme_setup');

function fc_init_widgets($id){
    register_sidebar(array(
		'name' 	=> 'Sidebar',
		'id' 	=> 'sidebar',
		'before_widget'	=> '<div class="sidebar-widget">',
		'after_widget'	=> '</div>',
		'before_title'	=> '<h3>',
		'after_title'	=> '</h3>'
	));
    register_sidebar(array(
        'name' =>'Footer 1',
        'id' =>'footer1',
        'before_widget' =>'<div>',
        'after_widget' =>'</div>',
        'before_title' =>'<h3>',
        'after_title' =>'</h3>',
    ));
    register_sidebar(array(
        'name' =>'Footer 2',
        'id' =>'footer2',
        'before_widget' =>'<div>',
        'after_widget' =>'</div>',
        'before_title' =>'<h3>',
        'after_title' =>'</h3>',
    ));
    register_sidebar(array(
        'name' =>'Footer 3',
        'id' =>'footer3',
        'before_widget' =>'<div>',
        'after_widget' =>'</div>',
        'before_title' =>'<h3>',
        'after_title' =>'</h3>',
    ));
    register_sidebar(array(
        'name' =>'Footer 4',
        'id' =>'footer4',
        'before_widget' =>'<div>',
        'after_widget' =>'</div>',
        'before_title' =>'<h3>',
        'after_title' =>'</h3>',
    ));
}
add_action( 'widgets_init','fc_init_widgets' );