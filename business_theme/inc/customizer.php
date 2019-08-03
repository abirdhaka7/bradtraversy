<?php

function business_customize_register( $wp_customize){

    //Banner Section
    $wp_customize->add_Section('banner' , array(
        'title' => __('Banner', 'business'),
        'description' => sprintf(__('Options for homepage banner', 'business') ),
        'priority' => 130
    ));

    //Heading setting
    $wp_customize->add_setting('banner_heading', array(
        'default'   => _x('Banner Heading', 'business'),
        'type'      => 'theme_mod',
    ));

    //heading control
    $wp_customize->add_control('banner_heading', array(
        'label'   => __('Heading', 'business'),
        'section' => 'banner',
        'priority' => 20
    ));

    //text setting
    $wp_customize->add_setting('banner_text', array(
        'default'   => _x('Aliqua adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. aliqua.adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.', 'business'),
        'type'      => 'theme_mod',
    ));

    //text control
    $wp_customize->add_control('banner_text', array(
        'label'   => __('Text', 'business'),
        'section' => 'banner',
        'priority' => 20
    ));

    //button btn setting
    $wp_customize->add_setting('banner_btn_text', array(
        'default'   => _x('sign up', 'business'),
        'type'      => 'theme_mod',
    ));

    //button btn control
    $wp_customize->add_control('banner_btn_text', array(
        'label'   => __('Button Text', 'business'),
        'section' => 'banner',
        'priority' => 20
    ));
    // Button URL Setting
	$wp_customize->add_setting('banner_btn_url', array(
		'default'		=> _x('http://test.com', 'business'),
		'type'			=> 'theme_mod'
	));

	// Button URL Control
	$wp_customize->add_control('banner_btn_url', array(
		'label'			=> __('Button URL', 'business'),
		'section'		=> 'banner',
		'priority'		=> 20
	));
    
    
    //Background Image setting
    $wp_customize->add_setting('banner_image', array(
        'default'   => get_bloginfo('template_directory').'/img/banner.jpg',
        'type'      => 'theme_mod',
    ));

    //Background Image control 
    $wp_customize->add_control(new Wp_Customize_image_Control($wp_customize, 'banner_image',array(
        'label' => __('Background Image','business'),
        'section' => 'banner',
        'setting' => 'banner_image'
    )));


    // Boxes Section
    $wp_customize->add_section('boxes', array(
        'title'   => __('Boxes', 'business'),
        'description' => sprintf(__('Option for homepage boxes', 'business')),
        'priority' => 130
    ));
     
    // Box 1
        //Box 1 heading setting
        $wp_customize->add_setting('box1_heading', array(
            'default'   => _x('Box 1 heading', 'business'),
            'type'      => 'theme_mod',
        ));

        //Box 1 heading control 
        $wp_customize->add_control('box1_heading', array(
            'label'   => __('Box 1 Heading', 'business'),
            'section' => 'boxes',
            'priority' => 20
        ));
        //Box 1 text setting
        $wp_customize->add_setting('box1_text', array(
            'default'   => _x('This is dummy text ', 'business'),
            'type'      => 'theme_mod',
        ));

        //Box 1 text control 
        $wp_customize->add_control('box1_text', array(
            'label'   => __('Box 1 text', 'business'),
            'section' => 'boxes',
            'priority' => 20
        ));
        //Box 1 icon setting
        $wp_customize->add_setting('box1_icon', array(
            'default'   => _x('bar-chart', 'business'),
            'type'      => 'theme_mod',
        ));

        //Box 1 icon control 
        $wp_customize->add_control('box1_icon', array(
            'label'   => __('Box 1 Icon', 'business'),
            'section' => 'boxes',
            'priority' => 20
        ));
    
    // Box 2
        //Box 2 heading setting
        $wp_customize->add_setting('box2_heading', array(
            'default'   => _x('Box 2 heading', 'business'),
            'type'      => 'theme_mod',
        ));

        //Box 2 heading control 
        $wp_customize->add_control('box2_heading', array(
            'label'   => __('Box 2 Heading', 'business'),
            'section' => 'boxes',
            'priority' => 20
        ));
        //Box  text setting
        $wp_customize->add_setting('box2_text', array(
            'default'   => _x('This is dummy text ', 'business'),
            'type'      => 'theme_mod',
        ));

        //Box 2 text control 
        $wp_customize->add_control('box2_text', array(
            'label'   => __('Box 2 text', 'business'),
            'section' => 'boxes',
            'priority' => 20
        ));
        //Box 2 icon setting
        $wp_customize->add_setting('box2_icon', array(
            'default'   => _x('code', 'business'),
            'type'      => 'theme_mod',
        ));

        //Box 2 icon control 
        $wp_customize->add_control('box2_icon', array(
            'label'   => __('Box 2 Icon', 'business'),
            'section' => 'boxes',
            'priority' => 20
        ));
         
    // Box 3
        //Box 3 heading setting
        $wp_customize->add_setting('box3_heading', array(
            'default'   => _x('Box 3 heading', 'business'),
            'type'      => 'theme_mod',
        ));

        //Box 3 heading control 
        $wp_customize->add_control('box3_heading', array(
            'label'   => __('Box 3 Heading', 'business'),
            'section' => 'boxes',
            'priority' => 20
        ));
        //Box  text setting
        $wp_customize->add_setting('box3_text', array(
            'default'   => _x('This is dummy text ', 'business'),
            'type'      => 'theme_mod',
        ));

        //Box 3 text control 
        $wp_customize->add_control('box3_text', array(
            'label'   => __('Box 3 text', 'business'),
            'section' => 'boxes',
            'priority' => 20
        ));
        //Box 3 icon setting
        $wp_customize->add_setting('box3_icon', array(
            'default'   => _x('desktop', 'business'),
            'type'      => 'theme_mod',
        ));

        //Box 3 icon control 
        $wp_customize->add_control('box3_icon', array(
            'label'   => __('Box 3 Icon', 'business'),
            'section' => 'boxes',
            'priority' => 20
        ));


}
add_action('customize_register','business_customize_register');