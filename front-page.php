<?php

/**
 * Template name:Home page
 *
 */

get_header();
?>

<section class="hero-slider">
    <div class="bd-">
        <div id="carouselCaptions" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="<?php the_field('slider_image1'); ?>" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block mb-5 pb-5">
                        <h5 class="text-white font-weight-bold display-1">First slide label</h5>
                        <p class="text-secondary font-italic font-weight-bold display-4 mt-5 mb-5">Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="<?php the_field('slider_image2'); ?>" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block mb-5 pb-5">
                        <h5 class="text-white font-weight-bold display-1">Second slide label</h5>
                        <p class="text-secondary font-italic font-weight-bold display-4  mt-5 mb-5">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="<?php the_field('slider_image3'); ?>" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block mb-5 pb-5">
                        <h5 class="text-white font-weight-bold display-1">Third slide label</h5>
                        <p class="text-secondary font-italic font-weight-bold display-4  mt-5 mb-5">Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</section>

<section class="features-section spad">
    <div class="features-ads">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="single-features-ads first">
                        <img src="<?php the_field('service_icon1'); ?>" alt="">
                        <h4>Free shipping</h4>
                        <p>Fusce urna quam, euismod sit amet mollis quis, vestibulum quis velit. Vesti bulum mal
                            esuada aliquet libero viverra cursus. </p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-features-ads second">
                        <img src="<?php the_field('service_icon2'); ?>" alt="">
                        <h4>100% Money back </h4>
                        <p>Urna quam, euismo2 sit amet mollis quis, vestibulum quis velit. Vesti bulum mal esuada
                            aliquet libero viverra cursus. </p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-features-ads">
                        <img src="<?php the_field('service_icon3'); ?>" alt="">
                        <h4>Online support 24/7</h4>
                        <p>Urna quam, euismod sit amet mollis quis, vestibulum quis velit. Vesti bulum mal esuada
                            aliquet libero viverra cursus. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Features Box -->
    <div class="features-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="single-box-item first-box">
                                <img src="<?php the_field('banner_image1'); ?>" alt="">
                                <div class="box-text">
                                    <span class="trend-year">2019 Party</span>
                                    <h2>Jewelry</h2>
                                    <span class="trend-alert">Trend Allert</span>
                                    <a href="<?php echo get_permalink(wc_get_page_id('shop')); ?>" class="primary-btn">See More</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="single-box-item second-box">
                                <img src="<?php the_field('banner_image2'); ?>" alt="">
                                <div class="box-text">
                                    <span class="trend-year">2019 Trend</span>
                                    <h2>Footwear</h2>
                                    <span class="trend-alert">Bold & Black</span><br>
                                    <a href="<?php echo get_permalink(wc_get_page_id('shop')); ?>" class="primary-btn">See More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="single-box-item large-box">
                        <img src="<?php the_field('banner_image3'); ?>" alt="">
                        <div class="box-text">
                            <span class="trend-year">2019 Party</span>
                            <h2>Collection</h2>
                            <div class="trend-alert">Trend Allert</div><br>
                            <a href="<?php echo get_permalink(wc_get_page_id('shop')); ?>" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="latest-products spad">
    <div class="container">
        <div class="product-filter">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>Latest Products</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" id="product-list">
            <?php echo do_shortcode('[products limit="4" columns="4" ]'); ?>
        </div>
    </div>
</section>

<section class="lookbok-section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 offset-lg-1">
                <div class="lookbok-left">
                    <div class="section-title">
                        <h2>2019 <br />#lookbook</h2>
                    </div>
                    <p><?php the_field('lookbook_text'); ?></p>
                    <a href="<?php echo get_permalink(wc_get_page_id('shop')); ?>" class="primary-btn look-btn">See More</a>
                </div>
            </div>
            <div class="col-lg-5 offset-lg-1">
                <div class="lookbok-pic">
                    <img src="<?php the_field('lookbook_image'); ?>" alt="">
                    <div class="pic-text">fashion</div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <div class="row front-page pt-5 pb-5">
        <div class="col-md-12">
            <div id="front-pageCarousel" class="carousel slide" data-ride="carousel">

                <div class="carousel-inner">

                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-2">
                                <a href="#">
                                    <img src="<?php the_field('logo_icon1'); ?>" alt="Image" style="max-width:100%;">
                                </a>
                            </div>
                            <div class="col-md-2">
                                <a href="#">
                                    <img src="<?php the_field('logo_icon2'); ?>" alt="Image" style="max-width:100%;">
                                </a>
                            </div>
                            <div class="col-md-2">
                                <a href="#">
                                    <img src="<?php the_field('logo_icon3'); ?>" alt="Image" style="max-width:100%;">
                                </a>
                            </div>
                            <div class="col-md-2">
                                <a href="#">
                                    <img src="<?php the_field('logo_icon4'); ?>" alt="Image" style="max-width:100%;">
                                </a>
                            </div>
                            <div class="col-md-2">
                                <a href="#">
                                    <img src="<?php the_field('logo_icon3'); ?>" alt="Image" style="max-width:100%;">
                                </a>
                            </div>
                            <div class="col-md-2">
                                <a href="#">
                                    <img src="<?php the_field('logo_icon4'); ?>" alt="Image" style="max-width:100%;">
                                </a>
                            </div>
                        </div>
                        <!--.row-->
                    </div>
                    <!--.item-->

                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-2">
                                <a href="#">
                                    <img src="<?php the_field('logo_icon1'); ?>" alt="Image" style="max-width:100%;">
                                </a>
                            </div>
                            <div class="col-md-2">
                                <a href="#">
                                    <img src="<?php the_field('logo_icon2'); ?>" alt="Image" style="max-width:100%;">
                                </a>
                            </div>
                            <div class="col-md-2">
                                <a href="#">
                                    <img src="<?php the_field('logo_icon3'); ?>" alt="Image" style="max-width:100%;">
                                </a>
                            </div>
                            <div class="col-md-2">
                                <a href="#">
                                    <img src="<?php the_field('logo_icon4'); ?>" alt="Image" style="max-width:100%;">
                                </a>
                            </div>
                            <div class="col-md-2">
                                <a href="#">
                                    <img src="<?php the_field('logo_icon3'); ?>" alt="Image" style="max-width:100%;">
                                </a>
                            </div>
                            <div class="col-md-2">
                                <a href="#">
                                    <img src="<?php the_field('logo_icon4'); ?>" alt="Image" style="max-width:100%;">
                                </a>
                            </div>
                        </div>
                        <!--.row-->
                    </div>
                    <!--.item-->

                </div>
                <!--.carousel-inner-->
            </div>
            <!--.Carousel-->

        </div>
    </div>
</div>


<?php
get_footer();
?>