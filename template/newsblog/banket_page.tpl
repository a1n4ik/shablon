<?php echo $header; ?>

<?php require(DIR_TEMPLATE . 'default/template/_include/article_slider.tpl'); ?>

<section class="about-events-block wow fadeInUp about-events-block-article">
  <div class="wrapper">
    <div class="about-events-block__inner">
      <div class="about-events-block__title-column">
        <h2 class="about-events-block__title"><?php echo $heading_title; ?></h2>
      </div>
      <div class="about-events-block__content-column">
        <div class="about-events-block__description-wrapper">
          <div class="about-events-block__description">
            <?php echo $description; ?>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<?php echo $content_bottom; ?>
<?php if ($articles) { ?>
<section class="news">
	<div class="wrapper">
		<div class="box-heading text-center">События</div>
		<div class="swiper mero_page-swiper">
			<div class="swiper-wrapper">
				<?php foreach ($articles as $article) { ?>
				<div class="swiper-slide">
					<a href="<?php echo $article['href']; ?>" class="news-item image_hover">
						<img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $article['name']; ?>" class="img-responsive" />
						<div class="caption d-flex align-center justify-between column-gap-20">
							<div class="name medium p16"><?php echo $article['name']; ?></div>
							<i class="icon-arrow-right"></i>
						</div>
					</a>
				</div>
				<?php } ?>
			</div>
			<div class="swiper-button-next" id="mero-page-next-1"><i class="icon-arrow-right"></i></div>
			<div class="swiper-button-prev" id="mero-page-prev-1"><i class="icon-arrow-right"></i></div>
		</div>
	</div>	
</section>
<script>
	$(document).ready(function() {
		var swiper = new Swiper('.mero_page-swiper', {
			spaceBetween: 20,
			navigation: {
				nextEl: '#mero-page-next-1',
				prevEl: '#mero-page-prev-1',
			},
			breakpoints: {
				640: {
					slidesPerView: 1,
					spaceBetween: 10,
				},
				768: {
					slidesPerView: 2,
					spaceBetween: 20,
				},
				1024: {
					slidesPerView: 3,
					spaceBetween: 20,
				},
				1200: {
					slidesPerView: 3,
					spaceBetween: 20,
				}
			}
		});
	});
</script>
<?php } ?>
<?php if ($images) { ?>
<section class="news-page-gallery">
    <div class="wrapper">
        <div class="box-heading text-center">Галерея</div>
        <div class="thumbnails d-grid lg-col-4 md-col-4 sm-col-3 xs-col-2 row-gap-20 column-gap-20">
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <a href="<?php echo $image['original']; ?>" title="<?php echo $heading_title; ?>" class="wow fadeInUp">
                <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="img-responsive radius-medium"/></a>
            <?php } ?>
            <?php } ?>
        </div>
    </div>
</section>
<?php } ?>
<script>
    $(document).ready(function () {
        $('.thumbnails').magnificPopup({
            type: 'image',
            delegate: 'a',
            gallery: {
                enabled: true
            }
        });
    });
</script>
<?php echo $footer; ?>