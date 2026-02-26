<?php echo $header; ?>
<section class="video">
    <?php if ($addimages){ ?>
    <div class="swiper">
        <div class="swiper-wrapper">
        <?php foreach ($addimages as $addimage) { ?>
            <div class="swiper-slide">
                <div class="absolute w100 h100 d-flex align-center">
                    <div class="wrapper w100 d-flex align-center justify-center direction-column z-index">
                        <div class="box-heading color-white wow fadeInUp"><?php echo $addimage['addhead']; ?></div>
                        <?php if($addimage['addtext']){ ?>
                        <div class="subtitle color-white wow fadeInUp"><?php echo $addimage['addtext']; ?></div>
                        <?php } ?>
                    </div>
                </div>
                <span class="bg absolute w100 h100"></span>
                <?php if($addimage['additional']){ ?>
                <img src="<?php echo $addimage['additional_slide']; ?>" title="<?php echo $addimage['addhead']; ?>" alt="<?php echo $addimage['addhead']; ?>"  class="img-responsive" />
                <?php } ?>
            </div>
        <?php } ?>
    </div>
        <div class="swiper-button-prev btn--prev"><i class="icon-arrow-left"></i></div>
        <div class="swiper-button-next btn--next"><i class="icon-arrow-right"></i></div>
    </div>
    <?php } ?>
    <script>
        $(document).ready(function(){
        var swiper = new Swiper(".swiper", {
            loop: true,
            navigation: {
                nextEl: ".btn--next",
                prevEl: ".btn--prev",
            },
            autoplay: {
	            delay: 4500,
	            disableOnInteraction: false,
	        },
        });
            $('body').addClass('common-home');
        });
    </script>
</section>
<section class="mero-page">
    <div class="wrapper">
        <ul class="breadcrumb text-center">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <h1 class="box-heading text-center"><?php echo $heading_title; ?></h1>
        <div class=""><?php echo $description; ?></div>
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