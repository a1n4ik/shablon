<?php echo $header; ?>
<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
    <h1 class="category-title"><?php echo $heading_title; ?></h1>
    <div id="news-page">
        <?php if ($thumb) { ?>
        <div class="image relative">
            <div class="date absolute radius-large p12 regular"><?php echo $date; ?></div>
            <img src="<?php echo $original ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"
                 class="img-responsive w100"/>
        </div>
        <?php } ?>
        <div class="text">
            <?php echo $description; ?>
        </div>
    </div>
</div>
<?php if ($images) { ?>
<div class="bg-white pad relative overflow">
    <div class="container">
        <div class="thumbnails">
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <a href="<?php echo $image['original']; ?>" title="<?php echo $heading_title; ?>" class="wow fadeInUp">
                <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="img-responsive radius-medium"/></a>
            <?php } ?>
            <?php } ?>
        </div>
    </div>
</div>
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