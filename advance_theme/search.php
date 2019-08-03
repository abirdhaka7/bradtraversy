
	<?php get_header();?>

<div class="container content">
    <div class="main block">
    <h1 class="page-header">
		      Search Results
        </h1>
        <?php if ( have_posts()) :?>
        <?php while( have_posts()) : the_post();?>

        <?php get_template_part('content', get_post_format());?>

			
        <?php endwhile;  ?>

        <?php else:  ?>

        <?php echo apautop('No post;');?>

        <?php endif; ?>
    </div>

    <div class="side">
        
		<div class="side">
			<?php if( is_active_sidebar( 'sidebar' ) ) :?>
				<?php dynamic_sidebar( 'sidebar' )?>
			<?php endif;?>
		</div>
    </div>
</div>

<?php get_footer();?>