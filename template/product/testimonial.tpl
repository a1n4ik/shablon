<?php echo $header; ?>
<section class="reviews-page">
	<div class="wrapper">
		<ul class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
			<?php } ?>
		</ul>
		<div class="d-flex justify-between column-gap-20 row-gap-20 flex-wrap">
			<h1 class="box-heading"><?php echo $heading_title; ?></h1>
			<div class="btn-primary pointer" data-toggle="modal" data-target="#review-form">Написать отзыв</div>
		</div>
		<div id="testimonial"></div>
	</div>
</section>
<?php echo $content_top; ?>
<div class="modal fade" id="review-form" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<div class="d-flex align-center justify-between w100">
					<div class="modal-title p18">Написать отзыв</div>
					<div class="close pointer" data-dismiss="modal" aria-label="Close"><i class="icon-close"></i></div>
				</div>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="form-testimonial">
					<?php if ($name > 0) { ?>
						<div class="form-group <?php if ($name == 2) { echo 'required'; }?>">
							<input type="text" name="name" value="" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
						</div>
					<?php } ?>

					<?php if ($email > 0) { ?>
						<div class="form-group <?php if ($email == 2) { echo 'required'; }?>">
							<input type="text" name="email" placeholder="<?php echo $entry_email; ?>" value="" id="input-email" class="form-control" />
						</div>
					<?php } ?>

					<?php if ($text > 0) { ?>
						<div class="form-group <?php if ($text == 2) { echo 'required'; }?>">
							<textarea name="text" rows="5" placeholder="<?php echo $entry_text; ?>" id="input-text" class="form-control"></textarea>
						</div>
					<?php } ?>
					<?php echo $captcha; ?>
					<div class="buttons">
						<button type="button" id="button-testimonial" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $text_write; ?></button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script><!--
	$('button[id^=\'button-upload\']').on('click', function() {
		var node = this;

		$('#form-upload').remove();

		$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

		$('#form-upload input[name=\'file\']').trigger('click');

		if (typeof timer != 'undefined') {
			clearInterval(timer);
		}

		timer = setInterval(function() {
			if ($('#form-upload input[name=\'file\']').val() != '') {
				clearInterval(timer);

				$.ajax({
					url: 'index.php?route=product/testimonial/upload',
					type: 'post',
					dataType: 'json',
					data: new FormData($('#form-upload')[0]),
					cache: false,
					contentType: false,
					processData: false,
					beforeSend: function() {
						$(node).button('loading');
					},
					complete: function() {
						$(node).button('reset');
					},
					success: function(json) {
						$('.text-danger').remove();

						if (json['error']) {
							$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
						}

						if (json['success']) {
							alert(json['success']);

							$(node).parent().find('input').val(json['file']);
						}
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
			}
		}, 500);
	});
	$('#testimonial').delegate('.pagination a', 'click', function(e) {
		e.preventDefault();

		$('#testimonial').fadeOut('slow');

		$('#testimonial').load(this.href);

		$('#testimonial').fadeIn('slow');
	}); 

	$('#testimonial').load('index.php?route=product/testimonial/testimonial');

	$('#button-testimonial').on('click', function() {
		$.ajax({
			url: 'index.php?route=product/testimonial/write',
			type: 'post',
			dataType: 'json',
			data: $("#form-testimonial").serialize(),
			beforeSend: function() {
				$('#button-testimonial').button('loading');
			},
			complete: function() {
				$('#button-testimonial').button('reset');
			},
			success: function(json) {
				$('.alert-success, .alert-danger').remove();

				if (json['error']) {
					$('.buttons').after('<div class="alert alert-danger relative text-center"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
				}

				if (json['success']) {
					$('#testimonial').fadeOut('slow');

					$('#testimonial').load(this.href);

					$('#testimonial').fadeIn('slow');

					$('#testimonial').load('index.php?route=product/testimonial/testimonial');

					$('.buttons').after('<div class="alert alert-success relative text-center">' + json['success'] + '</div>');

					$('#form-testimonial').get(0).reset();

					setTimeout(function () {
						$('#review-form').modal('hide');
					}, 2000);

				}
			}
		});
	});
	//--></script>
	<?php echo $footer; ?>