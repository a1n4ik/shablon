<?php echo $header; ?>
<section class="news">
    <div class="wrapper">
        <ul class="breadcrumb text-center">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <h1 class="box-heading text-center"><?php echo $heading_title; ?></h1>
        <div class="subcat list-unstyled d-flex justify-center">
            <a href="gallery/bankety-154/" class="subcat-item">Банкеты</a>
            <a href="gallery/meropriyatiya-525/" class="subcat-item">Мероприятия</a>
            <a href="gallery/kuhnya/" class="subcat-item">Кухня</a>
        </div>
        <?php if ($articles) { ?>
        <div class="news-list d-grid lg-col-2 md-col-2 sm-col-2 xs-col-1 row-gap-20 column-gap-20">
            <?php foreach ($articles as $article) { ?>
            <div class="swiper-slide">
                <a href="<?php echo $article['href']; ?>" class="news-item">
                    <img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $heading_title; ?>" class="img-responsive"/>
                    <div class="caption d-flex align-center justify-between column-gap-20">
                        <div class="name subtitle uppercase"><?php echo $article['name']; ?></div>
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