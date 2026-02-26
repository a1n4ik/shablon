<?php echo $header; ?>
<section class="gallery-page">
    <div class="wrapper">
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <h1 class="box-heading"><?php echo $heading_title; ?></h1>
        <?php echo $description; ?>
        <?php if ($images) { ?>
        <div class="thumbnails d-grid lg-col-4 md-col-4 sm-col-3 xs-col-2 column-gap-20 row-gap-20 mar-top-medium">
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <a href="<?php echo $image['original']; ?>" title="<?php echo $heading_title; ?>">
                <img src="<?php echo $image['thumb']; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>"
                     class="radius-medium img-responsive"/></a>
            <?php } ?>
            <?php } ?>
        </div>
        <?php } ?>
    </div>
</section>
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