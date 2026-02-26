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


<?php if ($images) { ?>
<section class="news-page-gallery">
    <div class="wrapper" style="overflow:hidden;">
			<div class="box-heading text-center">Галерея</div>
        <!--<div class="thumbnails d-grid lg-col-4 md-col-4 sm-col-3 xs-col-2 row-gap-20 column-gap-20">-->
        <div id="sswipe" style="position:relative;">
            <div class="swiper-wrapper">
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
                <div class="swiper-slide">
            <a href="<?php echo $image['original']; ?>" title="<?php echo $heading_title; ?>" class="wow fadeInUp">
                <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="img-responsive radius-medium"/></a>
                </div>
            <?php } ?>
            <?php } ?>
            </div>
            <div class="swiper-button-prev" id="gallery-prev-sswipe"><i class="icon-arrow-left"></i></div>
            <div class="swiper-button-next" id="gallery-next-sswipe"><i class="icon-arrow-right"></i></div>
        </div>
        <!--</div>-->
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
<script>
    $(document).ready(function() {
    var swiper = new Swiper('#sswipe', {
        spaceBetween: 10,
        navigation: {
            nextEl: '#gallery-next-sswipe',
            prevEl: '#gallery-prev-sswipe',
        },
        breakpoints: {
            320: {
                slidesPerView: 2,
            },
            640: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 3,
            },
            1024: {
                slidesPerView: 3,
            },
            1200: {
                slidesPerView: 3,
            },
            1400: {
                slidesPerView: 4,
            }
        }
    });
        $('.news-page-gallery .swiper-wrapper').magnificPopup({
            type: 'image',
            delegate: 'a',
            gallery: {
                enabled: true
            }
        });
    });
</script>
<?php echo $footer; ?>