
<?php get_header();?>

<div class="container">
    <div class="main">
    <?php if( have_posts() ): ?>

        <?php while( have_posts() ): the_post() ;?>

        <article class="post">
            <h3>
                <?php the_title();?>
            </h3>
            
            
            <?php if( has_post_thumbnail() ):?>
            
                <div class="post-thumbnail">
                    <?php the_post_thumbnail();?>
                </div>

            <?php endif;?>
            
            <?php the_content();?>


          
        </article>

        <?php endwhile;?>

        <?php else :  ?>

                     <?php echo wpautop('Sorry, no post here');?>

    <?php endif; ?>
    
<h4><?php echo "page.php";?></h4>
    </div><!---/.main-->
<?php get_footer();?>
