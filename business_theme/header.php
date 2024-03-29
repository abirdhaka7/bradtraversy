<!DOCTYPE html>
<html <?php language_attributes();?>>
  <head>
    <meta charset="<?php bloginfo( 'charset' );?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
    <?php 
		
		wp_title( '&raquo;', true, 'right' );//this function will show the current selective page name with title
		bloginfo('name');
		?>
  </title>

  
  </head>
  <?php wp_head();?>

  <style>
  .jumbotron{
      background: url(<?php echo get_theme_mod('banner_image',get_bloginfo('template_url').'/img/banner.jpg');?>) 0 -80px;
      }

  </style>


  <body <?php body_class();?>>
      <div class="header clearfix">
        <div class="container">
       <?php
        wp_nav_menu( array(
          'theme_location'  => 'primary',
          'depth'	          => 2, 
          'container'       => 'false',
          'menu_class'      => 'nav nav-pills pull-right',
          'fallback_cb'     => 'WP_Bootstrap_Navwalker::fallback',
          'walker'          => new WP_Bootstrap_Navwalker(),
        ) );
       ?>
        
        <?php if (has_custom_logo()) : ;?>
          <?php the_custom_logo();?>
        <?php else:?>
          <h1><?php bloginfo('name');?></h1>
        <?php endif;?>

        </div>
      </div>