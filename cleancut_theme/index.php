
<?php get_header();?>

<section class="row title-bar">
      <div class="container">
        <div class="col-md-12">
            <h1>Blog</h1>
        </div>
        
        
      </div>
    </section>

<?php
    $i = 0;
?>

<?php while( have_posts()) : the_post();?>

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
<?php if( has_post_format($format, $post_id) && get_post_format($post_id) == 'aside') : ?>
<?php
//Aside Content
require get_template_directory() .'./content-aside.php';
 ?>


<?php elseif( has_post_format($format, $post_id) && get_post_format($post_id) == 'gallery') : ?>
<?php
//Gallery Content
require get_template_directory() .'./content-gallery.php'; ?>


<?php else: ?>

<?php
//Standerd Content
require get_template_directory() .'./content.php';
 ?>


<?php endif;?>

<?php endwhile;?>

<?php get_footer();?>