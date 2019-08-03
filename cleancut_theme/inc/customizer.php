<?php

function clean_cut_customize_register($wp_customize){
        //showcase Section
        $wp_customize->add_section('showcase' , array(
        'title' => __('Showcase', 'clean_cut'),
        'description' => sprintf(__('Options for Showcase Area', 'clean_Cut') ),
        'priority' => 130
        ));

        //Showcase Image Setting
        $wp_customize->add_setting('showcase_image' , array(
        'default'     => get_bloginfo('template_directory').'/img/showcase.jpg',
        'type' => 'theme_mod'
        ));

        //Showcase Image Control
		 $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'showcase_image', array(
            'label'    => __('Background Image', 'clean_cut'),
            'section'  => 'showcase',
            'settings' => 'showcase_image',
            'priority' => 1,
        )));

        //Showcase Image Height Setting
        $wp_customize->add_setting('showcase_height' , array(
        'default'     => _x(700,'clean_cut'),
        'type' => 'theme_mod'
        ));

        //Showcase Image Height Control
		 $wp_customize->add_control('showcase_height', array(
            'label'    => __('Showcase Height', 'clean_cut'),
            'section'  => 'showcase',
            'priority' => 2,
        ));

       
        //Showcase Heading Setting
        $wp_customize->add_setting('showcase_heading' , array(
        'default'     => _x('CleanCut Theme','clean_cut'),
        'type' => 'theme_mod'
        ));
       
        //Showcase Heading Control
        $wp_customize->add_control('showcase_heading' , array(
        'label'     => __('Heading','clean_cut'),
        'section' => 'showcase',
        'priority' => 3
        ));
        
        //Showcase Text Setting
        $wp_customize->add_setting('showcase_text' , array(
        'default'     => _x('Custom WordPress Theme By Abir','clean_cut'),
        'type' => 'theme_mod'
        ));
       
        //Showcase Text Control
        $wp_customize->add_control('showcase_text' , array(
        'label'     => __('Text','clean_cut'),
        'section' => 'showcase',
        'priority' => 4
        ));

        //Social Section
        $wp_customize->add_section('social' , array(
        'title' => __('Social', 'clean_cut'),
        'description' => sprintf(__('Social media urls', 'clean_Cut') ),
        'priority' => 140
        ));

        //Social Facebook Url Setting
        $wp_customize->add_setting('facebook_url' , array(
        'default'     => _x('http://www.facebook.com','clean_cut'),
        'type' => 'theme_mod'
        ));

        //Social Facebook Url Control
        $wp_customize->add_control('facebook_url' , array(
        'label'     => __('Facebook Url','clean_cut'),
        'section' => 'social',
        'priority' => 1
        ));

        //Social Twitter Setting
        $wp_customize->add_setting('twitter_url' , array(
        'default'     => _x('http://www.twitter.com','clean_cut'),
        'type' => 'theme_mod'
        ));

        //Social Twitter Control
        $wp_customize->add_control('twitter_url' , array(
        'label'     => __('Twitter Url','clean_cut'),
        'section' => 'social',
        'priority' => 1
        ));

        //Social Linked Setting
        $wp_customize->add_setting('linkedin_url' , array(
        'default'     => _x('http://www.linkedin.com','clean_cut'),
        'type' => 'theme_mod'
        ));

        //Social Linked Control
        $wp_customize->add_control('linkedin_url' , array(
        'label'     => __('LinkedIn Url','clean_cut'),
        'section' => 'social',
        'priority' => 1
        ));

        
        //Bottom banner Section
        $wp_customize->add_section('banner' , array(
            'title' => __('Bottom Banner', 'clean_cut'),
            'description' => sprintf(__('Options for bottom banner area', 'clean_Cut') ),
            'priority' => 160
        ));
        //Banner Image Setting
        $wp_customize->add_setting('banner_image' , array(
        'default'     => get_bloginfo('template_directory').'/img/banner.jpg',
        'type' => 'theme_mod'
        ));

        //Banner Image Control
        $wp_customize->add_control( new WP_Customize_Image_Control($wp_customize, 'banner_image', array(
        'label'    => __('Banner Image', 'clean_cut'),
        'section'  => 'banner',
        'settings' => 'banner_image',
        'priority' => 1,
        )));

        //Banner Heading Setting
        $wp_customize->add_setting('banner_heading' , array(
        'default'     => _x('Follow us on social media','clean_cut'),
        'type' => 'theme_mod'
        ));

        //Banner Heading Control
        $wp_customize->add_control('banner_heading' , array(
        'label'     => __('Heading','clean_cut'),
        'section' => 'banner',
        'priority' => 3
        ));

        //Misc Option Section
        $wp_customize->add_section('misc' , array(
        'title' => __('Misc Option', 'clean_cut'),
        'description' => sprintf(__('Misc Options for theme', 'clean_Cut') ),
        'priority' => 150
        ));

        $wp_customize->add_setting('animation',  array(
            'default' => true
        ));
        $wp_customize->add_control(
            new WP_Customize_Control(
                    $wp_customize,
                    'animation',
                    array(
                    'label'   => __('Enable Animations','clean_cut'),
                    'section' => 'misc',
                    'setting' => 'animation',
                    'type'    =>'checkbox'
                     )
                )
            );

}
add_action( 'customize_register','clean_cut_customize_register' );