<?php get_header();?>

      <div class="jumbotron">
        <div class="container">
          <h1><?php echo get_theme_mod('banner_heading','Banner Headnig');?></h1>

          <p class="lead"><?php echo get_theme_mod( 'banner_text','Aliqua adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. aliqua.adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.');?></p>

          <p><a class="btn btn-lg btn-primary" href="<?php echo get_theme_mod('banner_btn_url','http://test.com');?>" role="button"><?php echo get_theme_mod('banner_btn_text','sign up');?></a></p>
        </div>
      </div>

      <section class="row marketing">
        <div class="container">
          <div class="col-lg-4">
            <div class="block">
              <i class="fa fa-<?php echo get_theme_mod('box1_icon','bar-chart');?> fa-3"></i>
              <h3><?php echo get_theme_mod('box1_heading','Box 1 Headnig');?></h3>
              <p><?php echo get_theme_mod('box1_text','This is dummy text');?></p>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="block">
            <i class="fa fa-<?php echo get_theme_mod('box2_icon','bar-chart');?> fa-3"></i>
              <h3><?php echo get_theme_mod('box2_heading','Box 1 Headnig');?></h3>
              <p><?php echo get_theme_mod('box2_text','This is dummy text');?></p>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="block">
            <i class="fa fa-<?php echo get_theme_mod('box3_icon','code');?> fa-3"></i>
              <h3><?php echo get_theme_mod('box3_heading','Box 1 Headnig');?></h3>
              <p><?php echo get_theme_mod('box3_text','This is dummy text');?></p>
          </div>
        </div>
      </section>


  <?php if(is_active_sidebar('content-region-1')) : ?>
  <?php dynamic_sidebar('content-region-1'); ?>
  <?php endif; ?>

  <?php if(is_active_sidebar('content-region-2')) : ?>
  <?php dynamic_sidebar('content-region-2'); ?>
  <?php endif; ?>

    </div>
  </section>

<?php get_footer();?>
