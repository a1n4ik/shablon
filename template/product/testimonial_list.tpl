<?php if ($testimonials) { ?>
	<div class="review-page-list d-grid lg-col-3 md-col-4 sm-col-2 xs-col-1 column-gap-20 row-gap-20">
		<?php foreach ($testimonials as $testimonial) { ?>
			<div class="review-page-list-item">
				<?php if ($testimonial['text']) { ?>
					<div class="text p16"><?php echo $testimonial['text']; ?></div>
				<?php } ?>
				<div class="author d-flex justify-between align-center">
					<?php if ($testimonial['name']) { ?>
						<div class="name medium"><?php echo $testimonial['name']; ?></div>
					<?php } ?>
					<div class="date"><?php echo $testimonial['date_added']; ?></div>
				</div>
			</div>
		<?php } ?>
	</div>
	<div class="mar-top-medium"><?php echo $pagination; ?></div>
<?php } else { ?>
	<p><?php echo $text_no_testimonials; ?></p>
	<?php } ?>	