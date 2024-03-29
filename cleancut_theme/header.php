<!DOCTYPE html>
<html <?php language_attributes();?>>
<head>
    <meta charset="<?php bloginfo('charset')?>">
    <title>
        <?php bloginfo('name');?> | 
        <?php if(is_front_page()): ;?> 
            <?php bloginfo('description')?>
        <?php else: ?>
            <?php wp_title(''); ?>
        <?php endif;?>
    </title>
    <link rel="stylesheet" href="<?php bloginfo('template_url');?>/./css/bootstrap.css">
     
    <?php if( get_theme_mod('animation', true )) : ;?>
        <link rel="stylesheet" href="<?php bloginfo('template_url');?>/./css/animate.css"> 
    <?php endif;?>

    <link rel="stylesheet" href="<?php bloginfo('template_url');?>/./css/font-awesome.css">
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url');?>">
    <style>
        .showcase{
            height: <?php echo get_theme_mod('showcase_height',700 );?>px;
            background:url( <?php echo get_theme_mod('showcase_image', get_bloginfo('template_directory').'/img/showcase.jpg') ?> );
        }

        .banner{
            background:url( <?php echo get_theme_mod('banner_image', get_bloginfo('template_directory').'/img/banner.jpg') ?> );
        }
    </style>
    <?php wp_head();?>
</head>
<body <?php body_class();?>>
<nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="  <?php bloginfo('url');?>">  <?php bloginfo('name');?></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse navbar-ex1-collapse">
          <?php
                  wp_nav_menu(
                      array(
                          'theme_location' => 'primary',
                          'depth'          => 2,
                          'container'      => false,
                          'menu_class'     => 'nav navbar-nav navbar-right',
                          'fallback_cb'    => 'wp_bootstrap_navwalker::fallback',
                          'walker'         => new wp_bootstrap_navwalker()
                      )
                  );
              ?>
        </div><!--/.nav-collapse -->
      </div>
    </nav>