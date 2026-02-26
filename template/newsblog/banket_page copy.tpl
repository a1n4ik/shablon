<?php echo $header; ?>
<section class="video">
    <?php if ($addimages){ ?>
    <div class="swiper" id="banket_swiper">
        <div class="swiper-wrapper">
        <?php foreach ($addimages as $addimage) { ?>
        <?php if ($addimage['addhead'] == 'Слайдер') { ?>
            <div class="swiper-slide">
                <div class="absolute w100 h100 d-flex align-center">
                    <div class="wrapper w100 d-flex align-center justify-center direction-column z-index">
                    	<div class="box-heading color-white"><?php echo strstr($addimage['addtext'], '/', true); ?></div>
                    	<?php if($addimage['addtext']){ ?>
                    		<div class="subtitle color-white"><?php echo substr(strstr($addimage['addtext'], '/'), 1, strlen($addimage['addtext'])); ?></div>
                    	<?php } ?>
                    </div>
                </div>
                <span class="bg absolute w100 h100"></span>
                <?php if($addimage['additional']){ ?>
                    <picture>
                      <source media="(min-width: 601px)" srcset="<?php echo $addimage['additional_slide']; ?>">
                        <img src="<?php echo $addimage['additional_mob']; ?>" width="600" height="800" alt="<?php echo $addimage['addhead']; ?>" title="<?php echo $heading_title; ?>" class="img-responsive w100">
                    </picture>
                <?php } ?>
            </div>
        <?php } else { ?>
        <?php } ?>
        <?php } ?>
    </div>
        <div class="swiper-button-prev btn--prev"><i class="icon-arrow-left"></i></div>
        <div class="swiper-button-next btn--next"><i class="icon-arrow-right"></i></div>
    </div>
    <?php } ?>
    <script>
        $(document).ready(function(){
        var swiper = new Swiper("#banket_swiper", {
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
<section class="restoran-page banket">
    <div class="wrapper">
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <div class="head d-flex justify-between">
            <div class="head-title uppercase">
                <div class="subtitle mar-none">Банкетный зал</div>
                <h1 class="box-heading nowrap"><?php echo $heading_title; ?></h1>
            </div>
            <div class="head-text color-gray"><?php echo $description; ?></div>
        </div>
        <?php if ($addimages){ ?>
        <div class="news-list d-grid lg-col-2 md-col-2 sm-col-2 xs-col-1 row-gap-20 column-gap-20">
            <?php foreach ($addimages as $addimage) { ?>
            <?php if ($addimage['addhead'] == 'Слайдер') { ?>
            <?php } else { ?>
            <div class="banket-item radius-large overflow relative d-block">
            	<?php if($addimage['additional']){ ?>
            		<?php if($addimage['addvideo']){ ?>
            			<iframe width="800" height="540" src="https://vk.com/video_ext.php?oid=<?php echo $addimage['addvideo']; ?>&autoplay=1" class="img-responsive h100 h263" frameborder="0" allowfullscreen></iframe>
            		<?php } else { ?>
            			<img src="<?php echo $addimage['additional']; ?>" title="<?php echo $addimage['addhead']; ?>" alt="<?php echo $addimage['addhead']; ?>"  class="img-responsive" />
            		<?php } ?>
            	<?php } ?>
            	<?php if(!$addimage['addvideo']){ ?>
                <div class="caption d-flex direction-column w100">
                    <div class="name subtitle uppercase"><?php echo $addimage['addhead']; ?></div>
                    <div class="text d-flex justify-between align-center column-gap-20">
                        <?php if($addimage['addtext']){ ?>
                        <span><?php echo $addimage['addtext']; ?></span>
                        <?php } ?>
                        <?php if($addimage['addlink']){ ?>
                        	<a href="<?php echo $addimage['addlink']; ?>"><i class="icon-arrow-right"></i></a>
                        <?php } ?>
                    </div>
                </div>
                <?php } ?>
            </div>
            <?php } ?>
            <?php } ?>
        </div>
        <?php } ?>
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