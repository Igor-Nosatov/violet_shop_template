<!DOCTYPE html>
<html>

<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <?php wp_head(); ?>
</head>

<body>

  <header class="header">
    <section class="navigation">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <nav class="navbar navbar-expand-lg  pt-3 pb-3">
              <a class="nav-brand pr-5 pl-4  display-sm-none" href="<?php echo esc_url(home_url('/')); ?>" rel="home"><?php dynamic_sidebar('logo'); ?></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="bar-menu">&#8801;</span>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <?php
                wp_nav_menu(array(
                  'theme_location'    => 'header-menu',
                  'depth'             => 0,
                  'container'         => '',
                  'menu_class'        => 'navbar-nav d-flex justify-content-center mx-auto',
                ));
                ?>
                <div class="header-right my-2 my-lg-0">
                  <a data-toggle="modal" data-target="#searchModal" class="pr-3">
                    <?php dynamic_sidebar('icon-1'); ?>
                  </a>
                  <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="h-100 d-flex align-items-center justify-content-center">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <div class="search-close-switch">+</div>
                          </button>
                          <form role="search" method="get" id="searchform" action="
														<?php echo home_url('/'); ?>" class="search-model-form">
                            <input type="text" value="" placeholder="Search here....." />
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                  <a href="<?php echo get_permalink(wc_get_page_id('myaccount')); ?>" class="mr-3">
                    <?php dynamic_sidebar('icon-2'); ?>
                  </a>
                  <a>
                    <?php be_easy_store_woocommerce_header_cart(); ?>
                  </a>
                </div>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </section>
    <section class="header-info">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-4">
            <div class="header-item">
              <?php dynamic_sidebar('service-icon-1'); ?>
              <p>Free shipping on orders over $30 in USA</p>
            </div>
          </div>
          <div class="col-md-4 text-left text-lg-center">
            <div class="header-item">
              <?php dynamic_sidebar('service-icon-2'); ?>
              <p>20% Student Discount</p>
            </div>
          </div>
          <div class="col-md-4 text-left text-xl-right">
            <div class="header-item">
              <?php dynamic_sidebar('service-icon-3'); ?>
              <p>30% off on dresses. Use code: 30OFF</p>
            </div>
          </div>
        </div>
      </div>
    </section>
  </header>