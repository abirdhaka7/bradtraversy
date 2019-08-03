<?php get_header();?>
<section class="row showcase animated fadeIn">
    <div class="container">
        <div class="col-md-12">
            <div class="showcase-content">
                <h1><?php echo get_theme_mod('showcase_heading','CleanCut Theme')?></h1>
                <p class="lead"><?php echo get_theme_mod('showcase_text','Custom WordPress Theme By Abir')?></p>
            
                
                <?php if( get_theme_mod('facebook_url','http://www.facebook.com') != '') : ;?>
                <a href="<?php echo get_theme_mod('facebook_url','http://www.facebook.com') ?>" target="_blank"
                    class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i> Facebook</a>
                
                <?php endif;?>
                
                <?php if( get_theme_mod('twitter_url','http://www.twitter.com') != '') : ;?>
                <a href="<?php echo get_theme_mod('twitter_url','http://www.twitter.com') ?>" target="_blank"
                class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> Twitter</a>

                <?php endif;?>
                <?php if( get_theme_mod('linkedin','http://www.linkedin.com') != '') : ;?>
                <a href="<?php echo get_theme_mod('linkedin_url','http://www.linkedin.com') ?>" target="_blank"
                class="btn btn-default btn-lg"><i class="fa fa-linkedin fa-fw"></i>LinkedIn</a>

                <?php endif;?>
            
            </div>
        </div>
    </div>
</section>

<?php 
    $latest_blog_post = new WP_Query( array(
    'post_per_page' => 3,
    'tax_query'     => array(
        array(
        'taxonomy' => 'post_format',
        'field' => 'slug',
        'terms' => array(
            'post-format-aside',
            'post-format-gallery',
        ),
        'operator' => 'NOT IN'
        )
    )
));?>
<?php
    $i = 0; // Counter
    $section = 'section-a' // Section Class
?>

<?php if($latest_blog_post->have_posts()) : while($latest_blog_post->have_posts()) : $latest_blog_post->the_post();?>

<?php
    $i++;
    if($i % 2 != 0){
        //Odd post
        $section_class = 'section-a';
        $left_class    = 'col-lg-5 col-sm-6 animated fadeInLeft';
        $right_class   = 'col-lg-5 col-lg-offset-2 col-sm-6';
        $img_class     = 'img-circle img-responsive animated fadeInRight';
    }else {
        //even post
        $section_class = 'section-b';
        $left_class    = 'col-lg-5 col-lg-offset1 col-sm-push-6 col-sm-6 animated fadeInRight';
        $right_class   = 'col-lg-5 col-sm-pull-6 col-sm-6';
        $img_class     = 'img-circle img-responsive animated fadeInLeft';
         
    }

?>
<div class="<?php echo $section_class;?>">
    <div class="container">
        <div class="row">
            <div class="<?php echo $left_class;?>">
                <hr class="section-heading-spacer">
                <div class="clearfix"></div>
                <h2 class="section-heading"><?php the_title();?></h2>
                <div class="excerpt">
                    <?php the_excerpt(); ?>
                </div>
            </div>
            <div class="<?php echo $right_class;?>">
            <?php if( has_post_thumbnail()): ;?>
                  <?php the_post_thumbnail('full',array(
                        'class'=> $img_class
                    ));?>
            <?php endif;?>
            </div>
        </div>
    </div>
</div>

<?php endwhile; endif;?>





    <?php get_footer();?>