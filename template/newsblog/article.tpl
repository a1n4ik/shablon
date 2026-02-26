<?php echo $header; ?>
<section class="news-page">
    <div class="wrapper">
        <ul class="breadcrumb text-left">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <div class="news-page-content">
            <?php if ($thumb) { ?>
            <div class="image">
                <img src="<?php echo $popup ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"
                     class="img-responsive w100"/>
            </div>
            <?php } ?>
            <div class="caption">
                <h1 class="box-heading"><?php echo $heading_title; ?></h1>
                <div class="text"><?php echo $description; ?></div>
                <div class="viewed d-flex align-center mar-top-medium"><i class="icon-view"></i><?php echo $viewed; ?></div>
            </div>
        </div>
    </div>
</section>
<?php if ($images) { ?>
<section class="news-page-gallery">
    <div class="wrapper">
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