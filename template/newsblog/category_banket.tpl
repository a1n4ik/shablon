<?php echo $header; ?>
<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
    <h1 class="category-title"><?php echo $heading_title; ?></h1>
    <div id="content">
        <?php echo $content_top; ?>
        <?php if ($articles) { ?>
        <div class="banket-row d-flex flex-wrap mar-top-medium overflow mar-bot-medium">
            <?php foreach ($articles as $article) { ?>
            <a href="<?php echo $article['href']; ?>" class="item wow fadeInUp animated animated">
                <div class="btn">
                    <div class="btn-more">
                        <svg width="70" height="70" viewBox="0 0 70 70" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.3333 1H69V57.6667M69 1L1 69L69 1Z" stroke="#C49B6E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                        <span>Подробнее</span>
                    </div>
                </div>
                <div class="name"><?php echo $article['name']; ?></div>
                <div class="border absolute"></div>
                <img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>"
                     title="<?php echo $article['name']; ?>" class="img-responsive"/>
            </a>
            <?php } ?>
        </div>
        <?php } ?>
        <?php echo $content_bottom; ?></div>
</div>
<?php echo $footer; ?>