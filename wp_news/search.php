<?php get_header();?>

<form class="ink-form">
    <div class="ink-grid">
        <div class="panel">
            <div class="control-group append-button">
                <div class="control all-100">
                    <form method="get" action="<?php echo esc_url(home_url('/')); ?>">
                    <input type="text" name="s" placeholder="Search news...">
                </form>
                </div>
            </div>
        </div>
    </div>
</form>
<div class="ink-grid vertical-space">
    <div class="panel">
        <h2> Search result:
        </h2>
        <div class="column-group">
            <div class="all-70 post">
                <div class="unstyled">
                <?php while(have_posts()) : the_post();?>
                    <li class="column-group half-gutters">
                    <div class="all-40 small-50 tiny-50">
                         <?php the_post_thumbnail('news-popular', array('class' => 'half-bottom-space')); ?>
                    </div>
                    <div class="all-60 small-50 tiny-50">
                    <h4><a href="<?php the_permalink();?>"> <?php the_title();?></a></h4>
                        <?php comments_number('no Responses', '1 Response' ,'% Response') ;?>
                        <?php the_excerpt();?>
                    </div>
                    </li>
                <?php endwhile;?>
                </div><!---/.unstyled-->
            </div><!---/.all-70-->
            <div class="all-30">
               <div class="sidebar">
               <?php if( is_active_sidebar('sidebar')) : ?>
                <?php dynamic_sidebar('sidebar')?>
            <?php endif;?>
               </div>
            </div>
        </div>
    </div><!--/.panel-->
</div>
<?php get_footer();?>