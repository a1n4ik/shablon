<?php echo $header; ?>
<section class="banket mero-page">
    <div class="wrapper">
        <ul class="breadcrumb text-left">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <h1 class="box-heading text-left"><?php echo $heading_title; ?></h1>
        <?php echo $description; ?><br><br>
        
        <?php echo $content_top; ?>

        <?php if ($articles) { ?>
        <div class="news-list d-grid lg-col-4 md-col-3 sm-col-2 xs-col-1 row-gap-20 column-gap-20">
            <?php foreach ($articles as $article) { ?>
            <a href="<?php echo $article['href']; ?>" class="banket-item mero-page-item overflow relative d-block image_hover">
            <?php if ($article['attributes']) { ?>
	<?php foreach ($article['attributes'] as $attribute_group) { ?>
		<?php foreach ($attribute_group['attribute'] as $attribute_item) { ?>
			<?php if ($attribute_item['name'] == 'тег') { ?>
				<span class="sticker"><?php echo $attribute_item['text'];?></span>
			<?php } ?>
		<?php } ?>
	<?php } ?>
	<?php } ?>
                <img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" class="img-responsive"/>
                <div class="caption d-flex direction-column w100">
                    <div class="name subtitle uppercase"><?php echo $article['name']; ?></div>
                    <div class="text d-flex justify-between align-start column-gap-20">
                        <span><?php echo $article['preview']; ?></span>
                    </div>
                </div>
            </a>
            <?php } ?>
        </div>
        <?php } ?>
        <?php if (!$categories && !$articles) { ?>
        <p><?php echo $text_empty; ?></p>
        <div class="buttons">
            <a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a>
        </div>
        <?php } ?>
    </div>
</section>
<?php echo $footer; ?>