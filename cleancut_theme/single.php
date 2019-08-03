<?php get_header();?>
<?php while( have_posts() ): the_post();?>

<section class="row title-bar">
    <div class="container">
        <div class="col-md-12">
            <h1><?php the_title();?></h1>
        </div>
    </div>
</section>

<section class="row page">
      <div class="container">
        <div class="col-md-8">
            <?php if( has_post_thumbnail()): ;?>
            <div class="post-thumbnail">
                <?php the_post_thumbnail();?>
            </div>
            <?php endif;?>
            <div class="meta">
            Created at <?php the_time();?> on
            <?php the_date()?> by 
            <a href="<?php echo get_author_posts_url(get_the_author_meta('ID'))?>">
            <?php the_author();?>
            </a> in
            <?php
            $categories = get_the_category();
            $separator = ", ";
            $output = '';

            if($categories){
            foreach($categories as $category){
            $output .= '<a href="'.get_category_link($category->term_id).'">'.$category->cat_name .'</a>'. $separator;
            //$output .= $category->cat_name . $separator;

            }
            }
            echo trim($output, $separator);
            ?>
            </div>
            <p>
            <?php the_content();?>
            </p>
            <?php comments_template();?>
            </div>

        <div class="col-md-4">
          <?php if(is_active_sidebar( 'sidebar' )) : ?>
              <?php dynamic_sidebar('sidebar'); ?>
          <?php endif; ?>
        </div>
      </div>
    </section>




<?php endwhile;?>
<?php get_footer();?>