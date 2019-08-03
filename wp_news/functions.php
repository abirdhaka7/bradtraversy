 <?php

function wp_news_theme_support(){
   
    add_theme_support( 'post-thumbnails' );
    
    add_image_size( 'news-thumb',   400, 200);
    add_image_size( 'news-large',   790, 380);
    add_image_size( 'news-popular', 300, 150);

    register_nav_menus( array(
        'primary' => __( 'Primary Menu'),
    ) );
    
    //Post format Support
    add_theme_support('post-formats',array('aside','gallery'));
    
}
add_action( 'after_setup_theme','wp_news_theme_support');


//this function will define the length of excerpt
function control_excerpt_length( $length ){
    return 30;
}
add_filter('excerpt_length','control_excerpt_length');
//this function will remove the [...] of excerpt
function remove_dot_from_excerpt( $remove ){
    return ' <a href=" '. get_the_permalink() . ' ">Read more..</a>';
}
add_filter('excerpt_more', 'remove_dot_from_excerpt');

function init_widgets($id){

    register_sidebar(array(
        'name' => 'Sidebar',
        'id' => 'sidebar',
        'before_widget' => '<div class="side-widget">',
        'after_widget' => '</div>',
        'before_title' => '<h3>',
        'after_title' => '</h3>'
    ));
}
add_action('widgets_init','init_widgets');