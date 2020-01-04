<?php
/**
 * Login Form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/form-login.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.6.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}

do_action( 'woocommerce_before_customer_login_form' ); ?>

<?php if ( 'yes' === get_option( 'woocommerce_enable_myaccount_registration' ) ) : ?>


<?php endif; ?>

		<h2 class="mt-5"><?php esc_html_e( 'Login', 'woocommerce' ); ?></h2>

		<form class="checkout-form" method="post">

			<?php do_action( 'woocommerce_login_form_start' ); ?>
			<div class="row">
					<div class="col-lg-12">
							<h3 class="mt-5 pt-5">Login Form</h3>
					</div>
					<div class="col-lg-12">
						<label for="username"><?php esc_html_e( 'Username or email address', 'woocommerce' ); ?>&nbsp;<span class="required">*</span></label>
						<input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="username" id="username" autocomplete="username" value="<?php echo ( ! empty( $_POST['username'] ) ) ? esc_attr( wp_unslash( $_POST['username'] ) ) : ''; ?>" /><?php // @codingStandardsIgnoreLine ?>
					</div>
					<div class="col-lg-12">
						<label for="password"><?php esc_html_e( 'Password', 'woocommerce' ); ?>&nbsp;<span class="required">*</span></label>
						<input class="woocommerce-Input woocommerce-Input--text input-text" type="password" name="password" id="password" autocomplete="current-password" />
					</div>

			<?php do_action( 'woocommerce_login_form' ); ?>

		 <div class="col-lg-12">
				<label class="woocommerce-form__label woocommerce-form__label-for-checkbox woocommerce-form-login__rememberme">
					<input class="woocommerce-form__input woocommerce-form__input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever" /> <span><?php esc_html_e( 'Remember me', 'woocommerce' ); ?></span>
				</label>
		 </div>
				<div class="row">
						<div class="col-lg-12">
								<div class="payment-method">
									<?php wp_nonce_field( 'woocommerce-login', 'woocommerce-login-nonce' ); ?>
									<button type="submit" class="woocommerce-button button woocommerce-form-login__submit" name="login" value="<?php esc_attr_e( 'Log in', 'woocommerce' ); ?>"><?php esc_html_e( 'Log in', 'woocommerce' ); ?></button>
								</div>
						</div>
				</div>
				<div class="row">
						<div class="col-lg-12">
						 <a class=""href="<?php echo esc_url( wp_lostpassword_url() ); ?>"><?php esc_html_e( 'Lost your password?', 'woocommerce' ); ?></a>
					 </div>
			</div>

			<?php do_action( 'woocommerce_login_form_end' ); ?>
		</form>

<?php if ( 'yes' === get_option( 'woocommerce_enable_myaccount_registration' ) ) : ?>

	</div>



		<form method="post" <?php do_action( 'woocommerce_register_form_tag' ); ?> class="checkout-form" >
  <div class="row">
			<?php do_action( 'woocommerce_register_form_start' ); ?>

			<?php if ( 'no' === get_option( 'woocommerce_registration_generate_username' ) ) : ?>
        <div class="col-lg-12">
            <h3 class="mt-5 pt-5">Register form</h3>
        </div>
  <div class="col-lg-12">
					<label for="reg_username"><?php esc_html_e( 'Username', 'woocommerce' ); ?>&nbsp;<span class="required">*</span></label>
					<input type="text" name="username" id="reg_username" autocomplete="username" value="<?php echo ( ! empty( $_POST['username'] ) ) ? esc_attr( wp_unslash( $_POST['username'] ) ) : ''; ?>" /><?php // @codingStandardsIgnoreLine ?>
	  </div>

			<?php endif; ?>

  <div class="col-lg-12">
    <label for="reg_email"><?php esc_html_e( 'Email address', 'woocommerce' ); ?>&nbsp;<span class="required">*</span></label>
				<input type="email"  name="email" id="reg_email" autocomplete="email" value="<?php echo ( ! empty( $_POST['email'] ) ) ? esc_attr( wp_unslash( $_POST['email'] ) ) : ''; ?>" /><?php // @codingStandardsIgnoreLine ?>
		  </div>

			<?php if ( 'no' === get_option( 'woocommerce_registration_generate_password' ) ) : ?>

			  <div class="col-lg-12">
					<label for="reg_password"><?php esc_html_e( 'Password', 'woocommerce' ); ?>&nbsp;<span class="required">*</span></label>
					<input type="password" name="password" id="reg_password" autocomplete="new-password" />
			</div>

			<?php else : ?>

				<div class="col-lg-12"><?php esc_html_e( 'A password will be sent to your email address.', 'woocommerce' ); ?></div>

			<?php endif; ?>

			<?php do_action( 'woocommerce_register_form' ); ?>

      <div class="row">
          <div class="col-lg-12">
              <div class="payment-method">
                <?php wp_nonce_field( 'woocommerce-register', 'woocommerce-register-nonce' ); ?>
                <button type="submit"  name="register" value="<?php esc_attr_e( 'Register', 'woocommerce' ); ?>"><?php esc_html_e( 'Register', 'woocommerce' ); ?></button>
              </div>
          </div>
      </div>

			<?php do_action( 'woocommerce_register_form_end' ); ?>
  </div>
		</form>

<?php endif; ?>

<?php do_action( 'woocommerce_after_customer_login_form' ); ?>
