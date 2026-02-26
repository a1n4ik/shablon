<?php echo $header; ?>
<?php echo $content_top; ?>
<section class="banket">
    <div class="wrapper">
        <div class="head d-flex justify-between d-none">
            <div class="head-title uppercase">
                <h1 class="subtitle mar-bot"><?php echo $heading_title; ?></h1>
                <div class="box-heading nowrap">Наша кондитерская</div>
            </div>
            <div class="head-text color-gray"><p><?php echo $description; ?></p></div>
        </div>
        <?php if ($articles) { ?>
        <div class="news-list d-grid lg-col-2 md-col-2 sm-col-1 xs-col-1 row-gap-20 column-gap-20">
            <?php foreach ($articles as $article) { ?>
            <a href="<?php echo $article['href']; ?>" class="banket-item radius-large overflow relative d-block image_hover">
                <img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $heading_title; ?>" class="img-responsive"/>
                <div class="caption d-flex direction-column w100">
                    <div class="name subtitle uppercase"><?php echo $article['name']; ?></div>
                    <div class="text d-flex justify-between align-start column-gap-20">
                        <span><?php echo $article['preview']; ?></span>
                        <i class="icon-arrow-right"></i>
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
<script>
    $('body').addClass('common-home');
</script>