<?php echo $header; ?>
<section class="success-page">
    <div class="wrapper">
        <ul class="breadcrumb text-center">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <h1 class="box-heading text-center"><?php echo $heading_title; ?></h1>
        <div class="text text-center"><?php echo $text_message; ?></div>
    </div>
</section>
<?php echo $footer; ?>