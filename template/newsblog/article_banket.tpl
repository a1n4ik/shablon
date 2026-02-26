<?php echo $header; ?>
<?php if ($addimages){ ?>
  <div class="video swiper">
    <div class="swiper-wrapper">
      <?php foreach ($addimages as $addimage) { ?>
        <div class="swiper-slide">
          <?php if($addimage['additional']){ ?>
            <img src="<?php echo $addimage['additional']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"  class="img-responsive" />
          <?php } ?>

          <div class="caption-row absolute w100 d-flex align-center justify-center">
            <div class="caption text-center">
              <div class="name h1"><?php echo $addimage['addhead']; ?></div>
              <?php if($addimage['addtext']){ ?>
                <div class="text"><?php echo $addimage['addtext']; ?></div>
              <?php } ?>
            </div>
          </div>

        </div>
      <?php } ?>
    </div>
    <div class="swiper-prev btn-prev absolute d-flex align-center justify-center radius-large pointer"><i class="icon-left"></i></div>
    <div class="swiper-next btn-next absolute d-flex align-center justify-center radius-large pointer"><i class="icon-right"></i></div>
  </div>
  <script>
    $(document).ready(function() {
      var swiper = new Swiper(".swiper", {
        loop: true,
        navigation: {
          nextEl: ".btn-next",
          prevEl: ".btn-prev",
        },
      });
    });
  </script>
<?php } ?>
<?php echo $content_top; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <h1 class="category-title"><?php echo $heading_title; ?></h1>
  <div class="descr-banket mar-bot-medium"><?php echo $description; ?></div>
</div>
<div class="bg-white pad relative overflow">
  <div class="container">
    <?php if ($images) { ?>
    <div class="thumbnails">
      <?php if ($images) { ?>
      <?php foreach ($images as $image) { ?>
      <a href="<?php echo $image['original']; ?>" title="<?php echo $heading_title; ?> <?php echo $sort; ?>" class="wow fadeInUp">
        <img src="<?php echo $image['original']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="img-responsive radius-medium"/></a>
      <?php } ?>
      <?php } ?>
    </div>
    <?php } ?>
  </div>
</div>
<script src="dist/js/swiper.min.js"></script>
<script>
$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
</script>
<?php echo $footer; ?>