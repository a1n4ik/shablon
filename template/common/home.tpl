<?php echo $header; ?>
<?php echo $content_top; ?>

<!-- Новый блок "Доставка" с товарами -->
<?php if ($Position_15) { ?>
  <section class="delivery-block wow fadeInUp">
    <div class="wrapper">
      <div class="delivery-block__header"> <!-- Новый контейнер для заголовка и кнопки -->
        <h2 class="delivery-block__title">Доставка</h2>
        <a href="dostavka/"
           class="rooms-gallery__button">
          <span>Заказать доставку</span>
          <div class="rooms-gallery__button-icon">
            <!--<svg width="14" height="11" viewBox="0 0 14 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12.75 5.5L1 5.5M12.75 5.5L7.8125 1.5M12.75 5.5L7.8125 9.5" stroke="#FFFFFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                    </svg>-->
          </div>
        </a>
      </div>
      <div class="delivery-block__products-container">
        <?php echo $Position_15; ?>
      </div>
    </div>
  </section>
<?php } ?>

<section class="shipping-block wow fadeInUp">
  <div class="wrapper">
    <div class="shipping-block__inner-content">
      <div class="shipping-block__tabs-header">
        <ul class="nav nav-tabs shipping-block__tabs list-unstyled"
            role="tablist">
          <li class="nav-item active">
            <a class="nav-link"
               data-toggle="tab"
               href="#tab-4"
               role="tab"
               aria-selected="true">Отель</a>
          </li>
          <li class="shipping-block__tab-divider"></li>
          <li class="nav-item">
            <a class="nav-link"
               data-toggle="tab"
               href="#tab-5"
               role="tab"
               aria-selected="false">Караоке MAJOR</a>
          </li>
        </ul>
      </div>
      <div class="tab-content shipping-block__tab-content-wrapper">
        <div class="tab-pane active"
             id="tab-4"
             role="tabpanel">
          <div class="shipping-block__gallery-container">
            <?php echo $Position_5; ?>
          </div>
        </div>
        <div class="tab-pane"
             id="tab-5"
             role="tabpanel">
          <div class="shipping-block__gallery-container">
            <?php echo $Position_6; ?>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<?php echo $Position_7; ?>

<section class="news wow fadeInUp">
<!-- ... ваш текущий HTML для news-блока ... -->
  <div class="wrapper">
    <div class="news__tabs-header">
      <ul class="nav nav-tabs news__tabs list-unstyled" role="tablist">
        <li class="nav-item active">
          <a class="nav-link" data-toggle="tab" href="#tab-1" role="tab" aria-selected="true">Новости</a>
        </li>
        <li class="news__tab-divider"></li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="tab" href="#tab-2" role="tab" aria-selected="false">Акции</a>
        </li>
        <li class="news__tab-divider"></li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="tab" href="#tab-3" role="tab" aria-selected="false">Блог</a>
        </li>
      </ul>
    </div>
    <div class="tab-content">
      <div class="tab-pane active" id="tab-1" role="tabpanel">
        <div class="news-grid">
          <?php echo $Position_2; ?>
        </div>
      </div>
      <div class="tab-pane"
           id="tab-2"
           role="tabpanel">
        <div class="news-grid">
          <?php echo $Position_3; ?>
        </div>
      </div>
      <div class="tab-pane"
           id="tab-3"
           role="tabpanel">
        <div class="news-grid">
          <?php echo $Position_4; ?>
        </div>
      </div>
    </div>
  </div>
</section>

<?php echo $content_bottom; ?>
<section class="contacts-block wow fadeInUp">
  <div class="wrapper">
    <div class="contacts-block__inner">
      <div class="contacts-block__info">
        <div class="contacts-block__info-content">
          <h2 class="contacts-block__title">Контакты</h2>
          <p class="contacts-block__description">Для вашего удобства предлагаем воспользоваться следующими контактами. Вы также можете оставить заявку, нажав кнопку «Заказать банкет» внизу страницы.</p>
        </div>
        <a href=""
           class="rooms-gallery__button common-button common-button--filled" data-toggle="modal"
               data-target="#zakazBanket">
          <span>Заказать банкет</span>
          <div class="common-button-icon common-button-icon--filled">
            <svg width="14"
                 height="11"
                 viewBox="0 0 14 11"
                 fill="none"
                 xmlns="http://www.w3.org/2000/svg">
              <path d="M12.75 5.5L1 5.5M12.75 5.5L7.8125 1.5M12.75 5.5L7.8125 9.5"
                    stroke="#FFFFFF"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round" />
            </svg>
          </div>
        </a>
      </div>
      <div class="contacts-block__details">
        <div class="contact-card">
          <div class="contact-card__icon">
            <!-- Иконка Телефон -->
            <svg width="15"
                 height="15"
                 viewBox="0 0 15 15"
                 xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd"
                    clip-rule="evenodd"
                    d="M11.6667 9.5C11.1667 9.5 10.6667 9.41667 10.1667 9.25C9.75 9.16667 9.25 9.25 8.91667 9.58333L7.33333 11.25C5.08333 10.0833 3.66667 8.5 2.5 6.25L4.16667 4.66667C4.41667 4.41667 4.5 3.91667 4.33333 3.5C4.16667 3 4.08333 2.5 4.08333 2C4.08333 1.33333 3.5 0.75 2.83333 0.75H2C1.33333 0.75 0.75 1.33333 0.75 2C0.75 8.16667 5.83333 13.25 12 13.25C12.6667 13.25 13.25 12.6667 13.25 12V11.25C13.25 10.5833 12.6667 10 12 10C11.8333 10 11.6667 9.5 11.6667 9.5Z"
                    fill="#FFFFFF" />
            </svg>
          </div>
          <div class="contact-card__details">
            <div class="contact-card__label">Телефон</div>
            <div class="contact-card__row">
              <span class="contact-card__category">Ресторан</span>
              <a href="tel:89647271414"
                 class="contact-card__value">8(964)727-14-14</a>
            </div>
            <div class="contact-card__row">
              <span class="contact-card__category">Банкет</span>
              <a href="tel:84985959090"
                 class="contact-card__value">8(498)595-90-90</a>
            </div>
            <div class="contact-card__row">
              <span class="contact-card__category">Отель</span>
              <a href="tel:84955908778"
                 class="contact-card__value">8(495)590-87-78</a>
            </div>
          </div>
        </div>
        <div class="contact-card">
          <div class="contact-card__icon">
            <!-- Иконка Почта -->
            <svg width="15"
                 height="15"
                 viewBox="0 0 15 15"
                 fill="none"
                 xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd"
                    clip-rule="evenodd"
                    d="M1.25 3.75L1.25 11.25C1.25 11.9404 1.80964 12.5 2.5 12.5H12.5C13.1904 12.5 13.75 11.9404 13.75 11.25V3.75L7.5 7.5L1.25 3.75ZM13.75 2.5C13.75 1.80964 13.1904 1.25 12.5 1.25H2.5C1.80964 1.25 1.25 1.80964 1.25 2.5V3.125L7.5 6.875L13.75 3.125V2.5Z"
                    fill="#000000" />
            </svg>
          </div>
          <div class="contact-card__details">
            <div class="contact-card__label">Почта</div>
            <div class="contact-card__row">
              <a href="mailto:z-ochag@mail.ru"
                 class="contact-card__value">z-ochag@mail.ru</a>
            </div>
          </div>
        </div>
        <div class="contact-card">
          <div class="contact-card__icon">
            <!-- Иконка Адрес -->
            <svg width="15"
                 height="15"
                 viewBox="0 0 15 15"
                 fill="none"
                 xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd"
                    clip-rule="evenodd"
                    d="M7.5 0C4.05357 0 1.25 2.80357 1.25 6.25C1.25 10.9375 7.5 15 7.5 15C7.5 15 13.75 10.9375 13.75 6.25C13.75 2.80357 10.9464 0 7.5 0ZM7.5 8.75C6.11929 8.75 5 7.63071 5 6.25C5 4.86929 6.11929 3.75 7.5 3.75C8.88071 3.75 10 4.86929 10 6.25C10 7.63071 8.88071 8.75 7.5 8.75Z"
                    fill="#000000" />
            </svg>
          </div>
          <div class="contact-card__details">
            <div class="contact-card__label">Адрес</div>
            <div class="contact-card__row">
              <span class="contact-card__value">город Одинцово Подушкинское шоссе д.9</span>
            </div>
          </div>
        </div>
      </div>
    </div>
</section>
<script src="dist/js/jquery.cookie.min.js"></script>
<script>
  $(document).ready(function () {
    if ($.cookie('showOnlyOne')) {
      $("body").removeClass('preloader-show');
      $(".preloader").removeClass('active');
    } else {
      $.cookie('showOnlyOne', 'showOnlyOne', { expires: 1 });
      setTimeout(function () {
        $("body").removeClass('preloader-show');
        $(".preloader").removeClass('active');
      }, 4000);
    }

    var swiper = new Swiper('.rooms-gallery-swiper', {
      slidesPerView: 3,
      spaceBetween: 20,
      centeredSlides: false,
      loop: false,
      pagination: {
        el: '.rooms-gallery-pagination',
        clickable: true,
      },
      breakpoints: {

        320: {
          slidesPerView: 1,
          spaceBetween: 10
        },

        768: {
          slidesPerView: 2,
          spaceBetween: 20
        },

        1200: {
          slidesPerView: 3,
          spaceBetween: 20
        }
      }
    });

    var eventsSwiper = new Swiper('.events-gallery-swiper', {
      slidesPerView: 4,
      spaceBetween: 20,
      centeredSlides: false,
      loop: false,
      pagination: {
        el: '.events-gallery-pagination',
        clickable: true,
      },
      breakpoints: {

        320: {
          slidesPerView: 1,
          spaceBetween: 10
        },

        768: {
          slidesPerView: 2,
          spaceBetween: 20
        },

        1200: {
          slidesPerView: 4,
          spaceBetween: 20
        }
      }
    });

    // Инициализация Swiper для блока "Доставка"
    var deliverySwiper = new Swiper('.delivery-block__products-container .swiper', {
      slidesPerView: 3,
      spaceBetween: 20,
      centeredSlides: false,
      loop: false,
      navigation: {
        nextEl: '.delivery-block__products-container .swiper-button-next',
        prevEl: '.delivery-block__products-container .swiper-button-prev',
      },
      breakpoints: {
        320: {
          slidesPerView: 1,
          spaceBetween: 10
        },
        768: {
          slidesPerView: 2,
          spaceBetween: 20
        },
        1200: {
          slidesPerView: 3,
          spaceBetween: 20
        }
      }
    });
  });
</script>
<?php echo $footer; ?>