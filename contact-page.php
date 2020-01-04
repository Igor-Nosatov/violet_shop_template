<?php

/**
 * Template name:contact page
 *
 */

get_header();
?>


<section class="page-add">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="page-breadcrumb">
                    <h2>Contact us<span>.</span></h2>
                </div>
            </div>
            <div class="col-lg-8">
                <img src="<?php the_field('image_contact'); ?>" alt="">
            </div>
        </div>
    </div>
</section>
<!-- Page Add Section End -->

<!-- Contact Section Begin -->
<div class="contact-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <?php echo do_shortcode('[contact-form-7 id="82" title="Contact form 1"]'); ?>
            </div>
            <div class="col-lg-3 offset-lg-1">
                <div class="contact-widget">
                    <div class="cw-item">
                        <h5>Location</h5>
                        <ul>
                            <li><?php the_field('location1'); ?></li>
                            <li><?php the_field('location2'); ?></li>
                        </ul>
                    </div>
                    <div class="cw-item">
                        <h5>Phone</h5>
                        <ul>
                            <li><?php the_field('phone1'); ?></li>
                            <li><?php the_field('phone2'); ?></li>
                        </ul>
                    </div>
                    <div class="cw-item">
                        <h5>E-mail</h5>
                        <ul>
                            <li><?php the_field('e-mail1'); ?></li>
                            <li><?php the_field('email2'); ?></li>
                        </ul>
                    </div>
                </div>
            </div>


        </div>
        <div class="map">
            <div class="row">
                <div class="col-lg-12">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26440.72384129847!2d-118.24906619231132!3d34.06719475913053!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c659f50c318d%3A0xe2ffb80a9d3820ae!2sChinatown%2C%20Los%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1570213740685!5m2!1sen!2sbd" height="560" style="border:0;" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>
    </div>
</div>


<?php

get_footer();
