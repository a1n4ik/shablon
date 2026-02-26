<?php echo $header; ?>
<?php echo $content_top; ?>
<section class="banket">
    <div class="wrapper">
        <div class="head d-flex justify-between d-none">
            <div class="head-title uppercase">
                <h1 class="subtitle mar-bot"><?php echo $heading_title; ?></h1>
                <div class="box-heading nowrap"></div>
            </div>
            <div class="head-text color-gray"><p><?php echo $description; ?></p></div>
        </div>
        <?php if ($articles) { ?>
        <div class="news-list d-grid lg-col-2 md-col-2 sm-col-1 xs-col-1 row-gap-20 column-gap-20" style="margin-top:30px;">
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
<section class="about-events-block wow fadeInUp">
  <div class="wrapper">
    <div class="about-events-block__inner">
      <div class="about-events-block__title-column">
        <h2 class="about-events-block__title">О ресторане</h2>        
        <h2 class="about-events-block__title about-events-block__title--hidden">Мероприятия</h2>        
      </div>
      <div class="about-events-block__content-column">
        <div class="about-events-block__description-wrapper">
          <p class="about-events-block__description">Прекрасная возможность привлечь гостей, поэтому важно подчеркивать разнообразие форматов, предлагать гибкие программы и индивидуальный подход, включая тематические вечера, банкеты, детские праздники и возможность аренды площадки</p>
          <?php // Если кнопка "Заказать банкет" должна отображаться только при определенных условиях, используйте PHP ?>
          <?php /*
          <a href="banket/" class="about-events-block__button common-button common-button--filled">
            <span>Заказать банкет</span>
            <div class="common-button-icon common-button-icon--filled">
              <svg width="14" height="11" viewBox="0 0 14 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M12.75 5.5L1 5.5M12.75 5.5L7.8125 1.5M12.75 5.5L7.8125 9.5" stroke="#FFFFFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
              </svg>
            </div>
          </a>
          */ ?>
        </div>
      </div>
    </div>
  </div>
</section>
<?php echo $footer; ?>
<script>
    $('body').addClass('common-home');
</script>
<style>
/* === Стили для "about-events-block" === */
.about-events-block {
    margin-top: 30px;
  margin-bottom: 50px;
}

.about-events-block .wrapper {
  margin: 0 auto;
  padding: 0 20px;
  box-sizing: border-box;
  height: 272px;
}

.about-events-block__inner {
  display: flex;
  flex-direction: row;
  align-items: flex-start;
  padding: 90px 60px;
  gap: 150px;
  width: 100%;
  height: 100%;
  background: #FFFFFF;
  border-radius: 20px;
  box-sizing: border-box;
}

.about-events-block__title-column {
  flex-shrink: 0;
  width: 272px;
}

.about-events-block__title {
  font-family: 'Onest', sans-serif;
  font-style: normal;
  font-weight: 600;
  font-size: 40px;
  line-height: 51px;
  letter-spacing: -0.02em;
  text-transform: uppercase;
  color: #6F5438;
  margin: 0;
}

.about-events-block__title--hidden {
  display: none;
  width: 303px;
}

.about-events-block__content-column {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding: 0px;
  gap: 60px;
  flex-grow: 1;
  width: 658px;
}

.about-events-block__description-wrapper {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding: 0;
  gap: 60px;
  width: 100%;
}

.about-events-block__description {
  width: 100%;
  height: 92px;
  font-family: 'Onest', sans-serif;
  font-style: normal;
  font-weight: 400;
  font-size: 18px;
  line-height: 23px;
  color: rgba(111, 84, 56, 0.5);
  margin: 0;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 4;
  -webkit-box-orient: vertical;
}

/* === Адаптивность для "about-events-block" === */
@media (max-width: 1200px) {
  .about-events-block .wrapper {
    width: auto;
    height: auto;
    padding: 0 20px;
  }

  .about-events-block__inner {
    flex-direction: column;
    gap: 30px;
    padding: 30px;
    height: auto;
  }

  .about-events-block__title-column,
  .about-events-block__content-column {
    width: 100%;
    flex-grow: 1;
  }

  .about-events-block__title {
    font-size: 32px;
    line-height: 40px;
  }

  .about-events-block__description {
    height: auto;
    -webkit-line-clamp: unset;
    font-size: 16px;
  }

  .about-events-block__description-wrapper {
    gap: 30px;
  }
}

@media (max-width: 768px) {
  .about-events-block__inner {
    padding: 20px;
    gap: 20px;
  }

  .about-events-block__title {
    font-size: 28px;
    line-height: 36px;
  }

  .about-events-block__description {
    font-size: 14px;
    line-height: 18px;
  }

  .about-events-block__description-wrapper {
    gap: 20px;
  }
}
</style>