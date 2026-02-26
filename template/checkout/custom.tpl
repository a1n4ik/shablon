<?php echo $header; ?>
<div class="bg__top">
  <div class="container">
    <h1 class="category-title">Оформление заказа</h1>
  </div>
</div>

<div class="container mar-bot-medium">
  <?php echo $content_top; ?>
	
	<?php if (isset($errors)) { ?>
		<?php foreach($errors as $error) { ?>
			<div class="alert alert-warning"><?= $error; ?></div>
		<?php } ?>

	<?php } elseif (isset($empty)) { ?>
		<div class="alert alert-info">Корзина пуста!</div>
	<?php } ?>
	<?php if (isset($cart)) { ?>
	<div class="row d-flex flex-wrap justify-between after__before-none">

		<div class="col-lg-7 col-md-6 col-sm-6 col-xs-12">
			<div class="bg-white">
				<?php echo $column_left; ?>

				<?php if (isset($login) && !$logged) { ?>
				<div id="custom-login">
					<?php echo $login; ?>
				</div>
				<?php } ?>

				<?php if (isset($customer) && !$logged) { ?>
				<div id="custom-customer">
					<?php echo $customer; ?>
				</div>
				<?php } ?>

				<?php if (isset($shipping) && $shipping !== false) { ?>
				<div id="custom-shipping">
					<?php echo $shipping; ?>
				</div>
				<?php } ?>

				<?php if (isset($payment)) { ?>
				<div id="custom-payment">
					<?php echo $payment; ?>
				</div>
				<?php } ?>

				<?php if (isset($comment) && $comment !== false) { ?>
				<div id="custom-comment">
					<?php echo $comment; ?>
				</div>
				<?php } ?>
			</div>

		</div>

		<div class="col-lg-4 col-md-5 col-sm-5 col-xs-12">
			<div class="bg-white">
				<?php if (isset($cart)) { ?>
				<div id="custom-cart">
					<?php echo $cart; ?>
				</div>
				<?php } ?>
				<div class="bg__gray mar-top">
					<?php if (isset($module) && $module !== false) { ?>
					<div id="custom-module">
						<?php echo $module; ?>
					</div>
					<?php } ?>

					<?php if (isset($total) && $total !== false) { ?>
					<div id="custom-total" class="mar-top">
						<?php echo $total; ?>
					</div>
					<?php } ?>
				</div>
			</div>
		</div>

	</div>
	<?php } ?>
	<?php if (isset($payment)) { ?>
		<div class="buttons" id="custom-control">
			<div class="pull-right d-none">
				<?php if ($text_agree) { ?>
					<input type="checkbox" name="agree" value="1" checked="checked" />&nbsp;
					<label for="control-label"><?php echo $text_agree; ?></label>
					<br>
				<?php } ?>
			</div>
			<input type="button" value="<?php echo $button_continue; ?>" id="button-custom-order" data-loading-text="<?php echo $text_loading; ?>" class="mar-top btn btn-primary pointer" />
			<div class="clearfix"></div>
		</div>
	<?php } ?>

	<?php echo $content_bottom; ?>

	<div id="custom-confirm" style="display: none;"></div>
	
</div> 

<script>
  
$(document).ready(function($) {

  $('#button-custom-order').on('click', function(){

  	<?php if (!$logged) { ?>

			checkoutCustomer()
				<?php if (isset($login) && $login !== false) { ?>
					.then( checkoutLogin )
				<?php } ?>
				<?php if (isset($shipping) && $shipping !== false) { ?>
					.then( checkoutShipping )
				<?php } ?>
					.then( checkoutPayment )
				<?php if (isset($comment) && $comment !== false) { ?>
					.then( checkoutComment )
				<?php } ?>
					.then( checkoutConfirm )
					.catch(failureCallback);

  	<?php } else { ?>

  		<?php if (isset($shipping) && $shipping !== false) { ?>

  			checkoutShipping()
  				.then( checkoutPayment )
  				<?php if (isset($comment) && $comment !== false) { ?>
						.then( checkoutComment )
					<?php } ?>
					.then( checkoutConfirm )
					.catch(failureCallback);

  		<?php } else { ?>

  			checkoutPayment()
  				<?php if (isset($comment) && $comment !== false) { ?>
						.then( checkoutComment )
					<?php } ?>
					.then( checkoutConfirm )
					.catch(failureCallback);


  		<?php } ?>	

  	<?php } ?>


    

  });

});
  
</script>

<?php echo $footer; ?>