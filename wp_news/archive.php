<?php get_header();?>
<div class="ink-grid vertical-space">
    <div class="panel">
        <h2>  <?php
              if(is_category()){
                single_cat_title();
              } else if(is_author()){
                the_post();
                echo 'Archives By Author: ' .get_the_author();
                rewind_posts();
              } else if(is_tag()){
                single_tag_title();
              } else if(is_day()){
                echo 'Archives By Day: ' .get_the_date();
              } else if(is_month()){
                echo 'Archives By Month : ' .get_the_date('F Y');
              } else if(is_year()){
                echo 'Archives By year: ' .get_the_date('Y');
              } else {
                echo 'Archives';
              }
            ?> 
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