<?php echo $header; ?>
<section class="news">
    <div class="wrapper">
        <ul class="breadcrumb text-left">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <h1 class="box-heading text-left"><?php echo $heading_title; ?></h1>
        <div class="subcat list-unstyled d-flex justify-center">
            <a href="sobytiya/novosti/" class="subcat-item">Новости</a>
            <a href="sobytiya/akcii/" class="subcat-item">Акции</a>
            <a href="sobytiya/blog/" class="subcat-item">Блог</a>
        </div>
        <?php if ($articles) { ?>
        <div class="news-list d-grid lg-col-3 md-col-3 sm-col-2 xs-col-1 row-gap-20 column-gap-20">
            <?php foreach ($articles as $article) { ?>
            <div class="swiper-slide">
            <?php if ($article['attributes']) { ?>
	<?php foreach ($article['attributes'] as $attribute_group) { ?>
		<?php foreach ($attribute_group['attribute'] as $attribute_item) { ?>
			<?php if ($attribute_item['name'] == 'тег') { ?>
				<a class="sticker" href="<?php echo strstr($attribute_item['text'], ',', true); ?>"><?php echo substr(strstr($attribute_item['text'], ','), 1, strlen($attribute_item['text'])); ?></a>
			<?php } ?>
		<?php } ?>
	<?php } ?>
	<?php } ?>
                <a href="<?php echo $article['href']; ?>" class="news-item image_hover">
                    <img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $heading_title; ?>" class="img-responsive"/>
                    <div class="caption d-flex align-center justify-between column-gap-20">
                        <div class="name medium p16"><?php echo $article['name']; ?></div>
                        <i class="icon-arrow-right"></i>
                    </div>
                </a>
            </div>
            <?php } ?>
        </div>
        <div class="mar-top-medium"><?php echo $pagination; ?></div>
        <?php } ?>
        <?php if (!$categories && !$articles) { ?>
        <p><?php echo $text_empty; ?></p>
        <div class="buttons">
            <a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a>
        </div>
        <?php } ?>
    </div>
</section>
<script>
    var b = window.location.href
    let count = document.querySelector('.subcat').getElementsByTagName('a').length

    for (let i = 0; i < count; i++) {
        var c = document.querySelectorAll('.subcat-item')[i]
        var d = c.href
        if (d == b) {
            c.classList.add('active')
        } else {
            c.classList.remove('active')
        }
    }
</script>
<?php echo $footer; ?>