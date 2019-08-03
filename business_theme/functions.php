<?php
// Register Custom Navigation Walker
require_once('wp_bootstrap_navwalker.php');

function business_theme_setup(){
    
    add_theme_support( 'custom-logo' );

    add_theme_support('post-thumbnails');
    register_nav_menus( array(
    'primary' => __( 'Primary Menu', 'THEMENAME' ),
    ) );

}
add_action( 'after_setup_theme','business_theme_setup' );

function business_theme_styles(){
    // Load all CSS files
    wp_enqueue_style( 'bootstrap', get_template_directory_uri() .'/css/bootstrap.css', Null , Null );
    wp_enqueue_style( 'font-awesome', get_template_directory_uri() .'/css/font-awesome.css', Null , Null );
    wp_enqueue_style( 'main', get_template_directory_uri() .'/style.css', Null , time() );
    // Load all JS files
    wp_enqueue_script( 'bootstrap-min-js', get_template_directory_uri() .'/assets/js/bootstrap.bundle.min.js', array('jquery') , Null );
 
}
add_action( 'wp_enqueue_scripts', 'business_theme_styles' );



//widget location
function init_widgets($id){
    register_sidebar(array(
		'name'		=> 'Content Region 1',
		'id'		=> 'content-region-1',
		'before_widget'	=> '<section class="row content-region-1 pt50 pb40"><div class="container"><div class="col-md-12">',
		'after_widget'	=> '</div></div></section>',
		'before_title'	=>	'<h1>',
		'after_title'	=>	'</h1>'
	));

	register_sidebar(array(
		'name'		=> 'Content Region 2',
		'id'		=> 'content-region-2',
		'before_widget'	=> '<section class="row content-region-2 pt40 pb40">
    <div class="container">',
		'after_widget'	=> '</div></section>',
		'before_title'	=>	'<h1>',
		'after_title'	=>	'</h1>'
    ));

    // Footer widgets
	register_sidebar(array(
		'name'		=> 'Footer 1',
		'id'		=> 'footer_1',
		'before_widget'	=> '',
		'after_widget'	=> '',
		'before_title'	=>	'<h4>',
		'after_title'	=>	'</h4>'
	));
	register_sidebar(array(
		'name'		=> 'Footer 2',
		'id'		=> 'footer_2',
		'before_widget'	=> '',
		'after_widget'	=> '',
		'before_title'	=>	'<h4>',
		'after_title'	=>	'</h4>'
	));
	register_sidebar(array(
		'name'		=> 'Footer 3',
		'id'		=> 'footer_3',
		'before_widget'	=> '',
		'after_widget'	=> '',
		'before_title'	=>	'<h4>',
		'after_title'	=>	'</h4>'
    ));
    register_sidebar(array(
		'name'		=> 'Sidebar',
		'id'		=> 'sidebar',
		'before_widget'	=> '<div class="panel panel-default sidebar-widget">',
		'after_widget'	=> '</div></div>
		',
		'before_title'	=> '<div class="panel-heading"><h3 class="panel-title">',
		'after_title'	=> '</h3></div><div class="panel-body">'
	));

}

add_action('widgets_init','init_widgets');


//Customizing File
require get_template_directory(). '/inc/customizer.php';


//this function will define the length of excerpt
function control_excerpt_length( $length ){
    return 30;
}
add_filter('excerpt_length','control_excerpt_length');

//this function will remove the [...] of excerpt
function remove_dot_from_excerpt( $remove ){
    return ' <h5><a href=" '. get_the_permalink() . ' "><em>Read more..</em></a></h5>';
}
add_filter('excerpt_more', 'remove_dot_from_excerpt');