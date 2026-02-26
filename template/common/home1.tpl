<?php echo $header; ?>
<!-- Слайдер на всю ширину -->
<?php echo $content_top; ?>

<section class="shipping-block wow fadeInUp">
  <div class="wrapper">
    <div class="bg-black">
      <ul class="nav nav-tabs list-unstyled d-flex justify-center" role="tablist">
        <li class="nav-item active">
          <a class="nav-link" data-toggle="tab" href="#tab-4" role="tab" aria-selected="true">Доставка ресторана</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="tab" href="#tab-5" role="tab" aria-selected="false">Кондитерская</a>
        </li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab-4" role="tabpanel">
          <?php echo $Position_5; ?>
        </div>
        <div class="tab-pane" id="tab-5" role="tabpanel">
          <?php echo $Position_6; ?>
        </div>
      </div>
      <div class="see-all">
        <a href="dostavka/" class="btn-animated">
          <i class="icon-arrow-right"></i>
          <span class="ui-button-circle-icon__label-wr" data-text="Доставка">
            <span class="ui-button-circle-icon__label">Доставка</span>
          </span>
        </a>
      </div>
    </div>
  </div>
</section>
<?php echo $Position_7; ?>
<section class="news wow fadeInUp">
  <div class="wrapper">
    <ul class="nav nav-tabs list-unstyled d-flex justify-center" role="tablist">
      <li class="nav-item active">
        <a class="nav-link" data-toggle="tab" href="#tab-1" role="tab" aria-selected="true">Акции</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#tab-2" role="tab" aria-selected="false">Новости</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#tab-3" role="tab" aria-selected="false">Блог</a>
      </li>
    </ul>
    <div class="tab-content">
      <div class="tab-pane active" id="tab-1" role="tabpanel">
        <?php echo $Position_2; ?>
      </div>
      <div class="tab-pane" id="tab-2" role="tabpanel">
        <?php echo $Position_3; ?>
      </div>
      <div class="tab-pane" id="tab-3" role="tabpanel">
        <?php echo $Position_4; ?>
      </div>
    </div>
    <div class="see-all">
      <a href="sobytiya/" class="btn-animated">
        <i class="icon-arrow-right"></i>
        <span class="ui-button-circle-icon__label-wr" data-text="Смотреть все">
          <span class="ui-button-circle-icon__label">Смотреть все</span>
        </span>
      </a>
    </div>
  </div>
</section>
<?php echo $content_bottom; ?>
<?php echo $footer; ?>
<script src="dist/js/jquery.cookie.min.js"></script>
<script>                                          
	$(document).ready(function() {
		if( $.cookie('showOnlyOne') ){
                $("body").removeClass('preloader-show');
                $(".preloader").removeClass('active');
            } else {
                $.cookie('showOnlyOne', 'showOnlyOne', { expires: 1 });
                setTimeout(function() {
                	$("body").removeClass('preloader-show');
                	$(".preloader").removeClass('active');
                }, 4000);
            }
        });
    </script>
<style>
/* Стили для слайдера */
section.video {
  position: relative;
  width: 100%;
  height: 100vh; /* Занимает всю высоту вьюпорта */
  overflow: hidden;
}

section.video .swiper-slide {
  background-size: cover;
  background-position: center;
  position: relative;
}

section.video .swiper-slide .absolute {
  top: 0;
  left: 0;
  z-index: 2;
  text-align: center;
}

section.video .box-heading {
  font-size: clamp(28px, 5vw, 60px); /* Адаптивный размер текста */
  margin-bottom: 15px;
  line-height: 1.2;
}

section.video .subtitle {
  font-size: clamp(18px, 3vw, 30px);
  margin-bottom: 30px;
  line-height: 1.3;
}

section.video .btn-primary {
  padding: 15px 40px;
  font-size: 18px;
  border-radius: 5px;
  background-color: #c49b6e; /* Цвет кнопки */
  transition: background-color 0.3s ease;
}

section.video .btn-primary:hover {
  background-color: #a07d57; /* Цвет кнопки при наведении */
}

/* Нижняя плашка */
.slider-bottom-plate {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  background-color: rgba(0, 0, 0, 0.7);
  color: #fff;
  padding: 15px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 16px;
  z-index: 3;
  flex-wrap: wrap; /* Для адаптивности */
}

.slider-bottom-plate .plate-text {
  margin: 0 10px;
  white-space: nowrap; /* Не переносить текст */
}

.slider-bottom-plate .plate-divider {
  color: #c49b6e;
}

@media (max-width: 768px) {
  .slider-bottom-plate {
    font-size: 14px;
    padding: 10px 0;
  }
  .slider-bottom-plate .plate-text {
    margin: 5px 10px;
  }
}
</style>