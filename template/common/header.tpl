<!DOCTYPE HTML
          PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>"
      lang="<?php echo $lang; ?>">
<!--<![endif]-->

<head>
  <meta charset="UTF-8" />
  <meta name="viewport"
        content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible"
        content="IE=edge">
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
    <meta name="description"
          content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
    <meta name="keywords"
          content="<?php echo $keywords; ?>" />
  <?php } ?>
  <meta property="og:title"
        content="<?php echo $title; ?>" />
  <meta property="og:type"
        content="website" />
  <meta property="og:url"
        content="<?php echo $og_url; ?>" />
  <?php if ($og_image) { ?>
    <meta property="og:image"
          content="<?php echo $og_image; ?>" />
  <?php } else { ?>
    <meta property="og:image"
          content="<?php echo $logo; ?>" />
  <?php } ?>
  <link rel="icon"
        href="favicon.svg"
        type="image/svg+xml">
  <link rel="shortcut icon"
        type="image/x-icon"
        href="favicon.ico">
  <link rel="icon"
        type="image/vnd.microsoft.icon"
        href="favicon.ico">
  <link rel="apple-touch-icon"
        href="favicon.png">
  <link href="https://fonts.googleapis.com/css2?family=Onest&display=swap"
        rel="stylesheet">
  <meta property="og:site_name"
        content="<?php echo $name; ?>" />
  <script src="dist/js/jquery-2.1.1.min.js"></script>

  <link href="catalog/view/theme/default/stylesheet/bootstrap-custom.css?v=7"
        rel="stylesheet"
        media="screen" />
  <link href="dist/css/main.min.css?<?php echo time(); ?>"
        rel="stylesheet">
  <link href="catalog/view/theme/default/stylesheet/style.css?<?php echo time(); ?>"
        rel="stylesheet">

  <?php /* ?>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />

<?php */ ?>

  <link href="dist/css/font.min.css"
        rel="stylesheet">
  <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>"
          type="text/css"
          rel="<?php echo $style['rel']; ?>"
          media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>"
          rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>"></script>
  <?php } ?>
  <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
  <?php } ?>
</head>

<body class="<?php echo $class; ?>">
  <?php
  // Определяем, является ли страница главной
  // Удаляем конечный слэш для сравнения, так как $og_url может быть с ним, а $base - без
  $clean_og_url = rtrim($og_url, '/');
  $clean_base_url = rtrim($base, '/');
  $is_home = ($clean_og_url === $clean_base_url); // Используем тройное равенство для строгого сравнения
  ?>
  <!-- Хедер в один уровень -->
  <header class="header <?php if (!$is_home) { ?>header--fixed-white<?php } ?>">
    <div class="wrapper">
      <div class="header-content"> <!-- Обертка для Frame 11 -->
        <div class="header-row d-flex align-center justify-between">
          <!-- Логотип -->
          <div class="logo">
            <a href="<?php echo $home; ?>"
               class="logo-link">
              <!-- Здесь нужно будет также изменить логотип, чтобы он был темным по умолчанию, если это не главная страница -->
              <img src="dist/zagoch.svg"
                   alt="Банкетный зал"
                   title="Банкетный зал"
                   class="img-responsive d-inline logo-svg <?php if (!$is_home) { ?>logo-svg--dark<?php } ?>">
            </a>
          </div>
          <style>
            .logo-svg {
              filter: brightness(0) invert(1);
            }

            .header--fixed-white .logo-svg,
            /* Применяем темный логотип, если хедер сразу белый */
            .header--scrolled .logo-svg {
              /* Применяем темный логотип, если хедер скроллится и становится белым */
              filter: brightness(0) invert(0);
            }
          </style>
          <!-- Основное меню -->
          <ul class="header-menu list-unstyled d-flex align-center m-0">
            <li><a href="restoran/">У нас</a></li>
            <li><a href="zaly/">Залы</a></li>
            <li><a href="meropriyatiya/">Мероприятия</a></li>
            <li><a href="sobytiya/">События</a></li>
            <li><a href="<?php echo $contact; ?>">Контакты</a></li>
          </ul>
          <!-- Вертикальная черта -->
          <div class="header-divider"></div>
          <!-- Дополнительное меню -->
          <ul class="header-extra list-unstyled d-flex align-center m-0">
            <li><a href="karaoke/">Караоке</a></li>
            <li><a href="otel/">Отель</a></li>
            <li><a href="dostavka/">Доставка</a></li>
          </ul>
          <!-- Иконки -->
          <div class="header-icons d-flex align-center">
            <div class="btn-search"><i class="icon-search"></i></div>
            <a href="<?php echo $account; ?>"
               class="btn-user"><i class="icon-user"></i></a>
            <?php echo $cart; ?>
            <a href=""
               class="btn-header-banket"
               data-toggle="modal"
               data-target="#zakazBanket">Заказать банкет</a>
            <a href="<?php echo $account; ?>"
               class="btn-user btn-burger"><i class="icon-burger"></i></a>
          </div>
          <?php echo $search; ?>
        </div>
      </div>
      <hr class="header-underline">
    </div>
  </header>
  <?php require 'catalog/view/theme/default/template/common/menu.tpl' ?>
  <main>
    <!-- Добавьте этот код после стилей хедера -->
    <script>
      $(document).ready(function () {
        // Проверяем, является ли текущая страница главной
        <?php if ($is_home || true) { // Только на главной странице подключаем логику скролла ?>
          $(window).scroll(function () {
            if ($(this).scrollTop() > 50) {
              $('.header').addClass('header--scrolled');
            } else {
              $('.header').removeClass('header--scrolled');
            }
          });
          // Инициальная проверка при загрузке
          if ($(window).scrollTop() > 50) {
            $('.header').addClass('header--scrolled');
          }
        <?php } ?>
      });
    </script>
    <style>
      /* ========================================================================== */
      /* Стили для хедера, основанные на Figma Frame 11 и Group 54                 */
      /* ========================================================================== */
      body {
        /* Важно, чтобы body не имел padding-top, если header position: fixed */
        /* Если header sticky, то padding-top не нужен */
        padding-top: 0;
      }

      .header {
        position: sticky;
        /* Sticky, чтобы он оставался на месте при скролле */
        top: 0;
        z-index: 1000;
        background-color: transparent;
        /* Прозрачный фон по умолчанию */
        transition: background-color 0.3s ease, box-shadow 0.3s ease, padding 0.3s ease;
        padding-bottom: 0px;
        /* Отступ между Frame 11 и Line 1 */
        /* Общая высота хедера складывается из padding-top + height .header-content + padding-bottom */
        /* В нашем случае: 20px (padding-top) + 55px (height .header-content) = 75px */
      }

      .header .wrapper {
        /* Ширина 1200px (для Frame 11 и Line 1) */
        max-width: 1240px;
        /* 1200px контента + 2*20px padding по бокам, если нужен */
        margin-left: auto;
        margin-right: auto;
        padding-left: 20px;
        /* Отступы по бокам */
        padding-right: 20px;
        /* Отступы по бокам */
        box-sizing: border-box;
        /* Если в Figma "left: 60px", то wrapper_width = 1200px, container_width = 1320px */
        /* Для 1200px контента, wrapper должен быть 1200px шириной */
        width: 1200px;
        padding: 0;
        /* Убираем внутренний padding wrapper'а, если он уже в Figma учтен */
      }

      /* Содержимое хедера (Frame 11) */
      .header-content {
        display: flex;
        justify-content: space-between;
        align-items: center;
        width: 100%;
        /* Использует ширину wrapper'а (1200px) */
        height: 55px;
        /* Высота Frame 11 */
        /* top: 20px; left: 119.5px; - эти абсолютные позиционирования замещены padding и flexbox */
      }

      .header-row {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 5px;
        /* Общий gap между элементами в header-row, из Figma Frame 11 */
        width: 100%;
        padding-bottom: 20px;
      }

      /* Логотип */
      .logo {
        flex-shrink: 0;
        /* Frame 41 width: 91px, height: 50px */
        width: 150px;
        display: flex;
        /* Для центрирования img */
        align-items: center;
        justify-content: center;
      }

      .logo img {
        /* lg1 1 -> это, вероятно, само изображение, а Frame 41 его контейнер. */
        /* В Figma у Image 'lg1 1' есть размеры и смещение относительно Frame 41. */
        /* Если img это lg1.png, то оно уже имеет свои размеры 91x50, значит, просто 100% */
        width: 100%;
        /* подгоним под контейнер */
        height: 100%;
        /* подгоним под контейнер */
        object-fit: contain;
        /* чтобы картинка не обрезалась, но помещалась */
      }

      /* Основное меню (Frame 2) */
      .header-menu {
        gap: 15px;
        /* gap: 10px из Figma, но у вас в коде column-gap-25, я оставил 25px */
        white-space: nowrap;
        /* Не переносить элементы меню */
        flex-shrink: 1;
        /* Позволить меню сжиматься при необходимости */
        overflow: hidden;
        /* Скрыть элементы, если они не помещаются */
        margin-top: 10px;
      }

      .header-menu li a {
        color: #ffffff;
        font-size: 14px;
        font-weight: 400;
        /* В Figma 400 */
        line-height: 18px;
        /* В Figma 18px */
        text-decoration: none;
        transition: color 0.4s ease, font-size 0.4s ease;
        /* Увеличил время до 0.4s */
      }

      .header-extra li a {
        /* Применяем те же стили */
        color: #ffffff;
        font-size: 14px;
        font-weight: 400;
        /* В Figma 400 */
        line-height: 18px;
        /* В Figma 18px */
        text-decoration: none;
        transition: color 0.4s ease, font-size 0.4s ease;
        /* Увеличил время до 0.4s */
      }

      .header-menu li a:hover,
      .header-extra li a:hover {

        font-size: 15px;
        /* Увеличиваем размер шрифта на 1px */
      }

      /* Вертикальная черта (Line 1) */
      .header-divider {
        width: 2px;
        /* В Figma 2px, у вас было 1px */
        height: 20px;
        /* В Figma 20px, у вас было 25px */
        background-color: rgba(255, 255, 255, 0.2);
        /* transform: rotate(-90deg); - это у вас был, но обычный разделитель не вращается */
        flex-shrink: 0;
        margin: 0 10px;
        /* Если нужен отступ, но в Figma нет явного для разделителя Frame 11 */
      }

      /* Дополнительное меню (Frame 12) */
      .header-extra {
        gap: 25px;
        /* gap: 10px из Figma, но у вас в коде column-gap-25, я оставил 25px */
        white-space: nowrap;
        flex-shrink: 1;
        overflow: hidden;
        margin-top: 10px;
      }

      /* Иконки (Frame 66) */
      .header-icons {
        gap: 5px;
        /* gap: 5px из Figma */
        flex-shrink: 0;
        /* Не сжимать иконки */
      }

      .header-icons a,
      .header-icons .btn-search {
        color: #ffffff;
        // font-size: 18px;
        transition: color 0.3s ease;
        cursor: pointer;
        /* padding: 10px; - Убираем, стилизуем отдельно, если нужна область клика */
      }

      .btn-search,
      .btn-user,
      .header-cart-icon {
        /* (Frame 13, Frame 14, Frame 15) */
        box-sizing: border-box;
        width: 45px;
        /* В Figma width: 45px; */
        height: 45px;
        /* В Figma height: 45px; */
        border: 1px solid rgba(255, 255, 255, 0.2);
        border-radius: 100px;
        display: flex;
        justify-content: center;
        align-items: center;
        color: #FFFFFF;
        /* Цвет иконки */
        transition: border-color 0.3s ease, color 0.3s ease;
      }

      .btn-search .icon-search,
      .btn-user .icon-user,
      .header-cart-icon .icon-basket {
        font-size: 15px;
        /* Размер иконок в Figma (Shape/Icon) */
      }

      .btn-search:hover,
      .btn-user:hover,
      .header-cart-icon:hover {
        border-color: rgba(255, 255, 255, 0.5);
        /* color: #c49b6e; */
      }

      .btn-search:hover .icon-search,
      .btn-user:hover .icon-user,
      .header-cart-icon:hover .icon-basket {
        /* color: #c49b6e; */
        /* Цвет самой иконки при ховере */
      }

      /* Кнопка "Заказать банкет" (Frame 3) */
      .btn-header-banket {
        box-sizing: border-box;
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        padding: 21px 20px;
        /* padding из Figma */
        gap: 35px;
        /* gap из Figma */
        width: 172px;
        /* width из Figma */
        height: 45px;
        /* height из Figma */
        border: 1px solid rgba(255, 255, 255, 0.2);
        border-radius: 100px;
        background-color: transparent;
        color: #FFFFFF;
        font-family: 'Onest', sans-serif;
        font-style: normal;
        font-weight: 600;
        /* В Figma 600 */
        font-size: 14px;
        line-height: 18px;
        text-transform: uppercase;
        text-decoration: none;
        transition: all 0.3s ease;
        white-space: nowrap;
        /* Важно, чтобы текст не переносился */
      }

      .btn-header-banket:hover {
        background-color: rgba(255, 255, 255, 0.1);
        border-color: rgba(255, 255, 255, 0.5);
        color: #fff;
        text-decoration: none;
      }

      /* Горизонтальная черта под хедером (Line 1) */
      .header-underline {
        margin-top: 0px;
        /* У вас было 0px, я его сохранил*/
        border-top: 2px solid rgba(255, 255, 255, 0.2);
        /* 20% непрозрачности из Figma */
        /* Позиционирование h_r: position: absolute; top: 95px; - это будет работать только если header имеет position relative */
        width: 100%;
        /* Черта на всю ширину wrapper */
        box-sizing: border-box;
        /* Учитываем padding wrapper */
      }

      /* ========================================================================== */
      /* Стили для скролленного состояния хедера                                    */
      /* ========================================================================== */
      .header--scrolled {
        background-color: #ffffff;
        /* Белая подложка */
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        // padding-top: 10px; /* Уменьшаем padding при скролле */
        // padding-bottom: 10px; /* Уменьшаем padding при скролле */
        /* Если высота хедера должна измениться до 45px или другого значения */
      }

      /* Черный текст и иконки для меню при скролле */
      .header--scrolled .header-menu li a,
      .header--scrolled .header-extra li a {
        color: #333333;
      }

      .header--scrolled .header-menu li a:hover,
      .header--scrolled .header-extra li a:hover {
        color: #c49b6e;
      }

      /* Черная иконка поиска, пользователя, корзины */
      .header--scrolled .btn-search,
      .header--scrolled .btn-user,
      .header--scrolled .icon-basket,
      .header--scrolled .btn-cart {
        color: #333333;
        border-color: rgba(0, 0, 0, 0.2);
      }

      .header--scrolled .btn-search:hover,
      .header--scrolled .btn-user:hover,
      .header--scrolled .btn-cart:hover,
      .header--scrolled .header-cart-icon:hover {
        /* color: #c49b6e; */
        border-color: rgba(0, 0, 0, 0.5);
      }

      /* Черная вертикальная черта */
      .header--scrolled .header-divider {
        background-color: rgba(0, 0, 0, 0.2);
      }

      /* Изменение кнопки "Заказать банкет" */
      .header--scrolled .btn-header-banket {
        border-color: rgba(0, 0, 0, 0.3);
        color: #333333;
        background-color: transparent;
      }

      /* .header--scrolled .btn-header-banket::after {
        background-color: #CBB89A;
        } */
      .header--scrolled .btn-header-banket:hover {
        background-color: rgba(0, 0, 0, 0.05);
        border-color: rgba(0, 0, 0, 0.5);
        color: #333333;
      }

      /*.header--scrolled .btn-header-banket:hover::after {
background-color: #6F5438;
}*/
      /* При скролле - скрываем hr и нижнюю часть меню */
      .header--scrolled .header-underline {
        display: none;
      }

      /* ========================================================================== */
      /* Стили для хедера, когда он ДОЛЖЕН быть белым (не главная страница)        */
      /* Это дублирует стили header--scrolled, но применяется сразу при загрузке  */
      /* ========================================================================== */
      .header--fixed-white {
        background-color: #ffffff;
        /* Белая подложка по умолчанию */
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      }

      .header--fixed-white .header-menu li a,
      .header--fixed-white .header-extra li a {
        color: #333333;
      }

      .header--fixed-white .header-menu li a:hover,
      .header--fixed-white .header-extra li a:hover {
        color: #c49b6e;
      }

      .header--fixed-white .btn-search,
      .header--fixed-white .btn-user,
      .header--fixed-white .btn-cart {
        color: #333333;
        border-color: rgba(0, 0, 0, 0.2);
      }

      .header--fixed-white .btn-search:hover,
      .header--fixed-white .btn-user:hover,
      .header--fixed-white .btn-cart:hover {
        color: #c49b6e;
        border-color: rgba(0, 0, 0, 0.5);
        text-decoration: none;
      }

      .header--fixed-white .header-divider {
        background-color: rgba(0, 0, 0, 0.2);
      }

      .header--fixed-white .btn-header-banket {
        border-color: rgba(0, 0, 0, 0.3);
        color: #333333;
        background-color: transparent;
      }

      .header--fixed-white .btn-header-banket:hover {
        background-color: rgba(0, 0, 0, 0.05);
        border-color: rgba(0, 0, 0, 0.5);
        color: #333333;
      }

      .header--fixed-white .header-underline {
        display: none;
      }

      /* ========================================================================== */
      /* Адаптивность хедера                                                          */
      /* ========================================================================== */
      @media (max-width: 1024px) {

        /* Ваш брейкпоинт */
        .header-menu,
        .header-extra {
          display: none;
        }

        .header-divider {
          display: none;
        }

        .header .wrapper {
          width: auto;
          /* Мобильные устройства: без фиксированной ширины */
          padding-left: 20px;
          padding-right: 20px;
        }

        .header-content {
          height: auto;
          /* Позволить контенту адаптироваться */
        }

        /* Показываем burger-кнопку на мобильном */
        .btn-burger {
          display: flex !important;
        }

        /* Скрываем кнопку аккаунта (иконка-человек) на мобильном — бургер её заменяет */
        .header-icons .btn-user:not(.btn-burger) {
          display: none;
        }

        /* Выравниваем иконки в хедере */
        .header-icons {
          gap: 6px;
        }

        /* header-row: лого слева, иконки справа */
        .header-row {
          padding-bottom: 0;
        }
      }

      @media (max-width: 768px) {
        .header {
          padding-top: 12px;
          padding-bottom: 12px;
        }

        .logo {
          height: 36px;
          width: auto;
        }

        .logo img {
          height: 100%;
          width: auto;
        }

        .btn-search,
        .btn-user,
        .header-cart-icon {
          width: 38px;
          height: 38px;
        }

        /* Кнопку "Заказать банкет" скрываем — есть в мобильном меню */
        .btn-header-banket:not(.mobile-menu__banket-button) {
          display: none !important;
        }

        .header-icons {
          gap: 5px;
        }
      }

      @media (max-width: 480px) {
        .header {
          padding-top: 10px;
          padding-bottom: 10px;
        }

        .logo {
          height: 32px;
        }

        .header-icons {
          gap: 4px;
        }

        .btn-search,
        .btn-user,
        .header-cart-icon {
          width: 36px;
          height: 36px;
        }
      }

      .icon-search,
      .icon-user,
      .icon-burger {
        padding: 10px;
      }
    </style>
    <div class="mobile-menu-overlay"
         id="mobileMenuOverlay">
      <div class="mobile-menu"
           id="mobileMenu">
        <div class="mobile-menu__header">
          <h2 class="mobile-menu__title">Меню</h2>
          <button class="mobile-menu__close"
                  aria-label="Закрыть меню">
            <svg width="20"
                 height="20"
                 viewBox="0 0 20 20"
                 fill="none"
                 xmlns="http://www.w3.org/2000/svg">
              <path d="M15 5L5 15M5 5L15 15"
                    stroke="#6F5438"
                    stroke-width="2"
                    stroke-linecap="round"
                    stroke-linejoin="round" />
            </svg>
          </button>
        </div>
        <hr class="mobile-menu__divider">
        <div class="mobile-menu__content">
          <div class="mobile-menu__section mobile-menu__section--main">
            <ul class="list-unstyled">
              <li><a href="restoran/">О ресторане</a></li>
              <li><a href="menu/">Меню</a></li>
              <li><a href="zaly/">Залы</a></li>
              <li><a href="meropriyatiya/">Мероприятия</a></li>
              <li><a href="news/">Новости</a></li>
              <li><a href="akcii/">Акции</a></li>
              <li><a href="blog/">Блог</a></li>
              <li><a href="galereya/">Галерея</a></li>
            </ul>
          </div>
          <hr class="mobile-menu__divider mobile-menu__divider--vert">
          <div class="mobile-menu__section mobile-menu__section--extra">
            <ul class="list-unstyled">
              <li><a href="dostavka/">Доставка</a></li>
              <li><a href="otel/">Отель</a></li>
              <li><a href="karaoke/">Караоке Major</a></li>
              <li><a href="otzyvy/">Отзывы</a></li>
              <li><a href="<?php echo $contact; ?>">Контакты</a></li>
            </ul>
          </div>
          <hr class="mobile-menu__divider">
          <div class="mobile-menu__contacts">
            <div class="contact-item">
              <div class="contact-item__icon">
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
              <div class="contact-item__details">
                <span class="contact-item__category">Ресторан</span>
                <a href="tel:89647271414"
                   class="contact-item__value">8(964)727-14-14</a>
                <hr class="contact-item__sub-divider">
                <span class="contact-item__category">Банкет</span>
                <a href="tel:84985959090"
                   class="contact-item__value">8(498)595-90-90</a>
                <hr class="contact-item__sub-divider">
                <span class="contact-item__category">Отель</span>
                <a href="tel:84955908778"
                   class="contact-item__value">8(495)590-87-78</a>
              </div>
            </div>
          </div>
          <hr class="mobile-menu__divider">
          <div class="mobile-menu__contact-card">
            <div class="contact-item">
              <div class="contact-item__icon">
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
              <div class="contact-item__details">
                <span class="contact-item__category">Почта</span>
                <a href="mailto:z-ochag@mail.ru"
                   class="contact-item__value">z-ochag@mail.ru</a>
              </div>
            </div>
          </div>
          <hr class="mobile-menu__divider">
          <div class="mobile-menu__contact-card">
            <div class="contact-item">
              <div class="contact-item__icon">
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
              <div class="contact-item__details">
                <span class="contact-item__category">Адрес</span>
                <address class="contact-item__value">город Одинцово Подушкинское шоссе д.9</address>
              </div>
            </div>
          </div>
          <a href=""
             class="btn-header-banket mobile-menu__banket-button" data-toggle="modal"
               data-target="#zakazBanket">
            <span>Заказать банкет</span>
            <div class="btn-header-banket__icon">
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
      </div>
    </div>
    <style>
      /* ---- Мобильное/Боковое меню (Sidebar) ---- */
      .mobile-menu-overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        /* Полупрозрачный фон */
        z-index: 1000;
        visibility: hidden;
        /* Скрыть по умолчанию */
        opacity: 0;
        /* Скрыть по умолчанию */
        transition: opacity 0.3s ease, visibility 0.3s ease;
      }

      .mobile-menu-overlay.active {
        visibility: visible;
        opacity: 1;
      }

      .mobile-menu {
        position: absolute;
        top: 0;
        right: 0;
        /* Меню выезжает справа, Figma указывает width: 490px */
        width: 490px;
        height: 100%;
        background: #F7F3F0;
        color: #6F5438;
        padding: 30px;
        /* Внутренние отступы */
        box-sizing: border-box;
        transform: translateX(100%);
        /* Скрыть меню за пределами экрана */
        transition: transform 0.3s ease;
        overflow-y: auto;
        /* Для скролла, если контент не помещается */
        -webkit-overflow-scrolling: touch;
        /* Для плавного скролла на iOS */
      }

      .mobile-menu-overlay.active .mobile-menu {
        transform: translateX(0);
        /* Показать меню */
      }

      .mobile-menu__header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
        /* Отступ до первой линии */
      }

      .mobile-menu__title {
        font-family: 'Onest', sans-serif;
        font-weight: 600;
        font-size: 40px;
        line-height: 51px;
        text-transform: uppercase;
        color: #6F5438;
        margin: 0;
      }

      .mobile-menu__close {
        background: none;
        border: none;
        cursor: pointer;
        padding: 0;
        width: 45px;
        /* Размер кнопки закрытия */
        height: 45px;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 50%;
        transition: background-color 0.2s ease;
      }

      .mobile-menu__close:hover {
        background-color: rgba(111, 84, 56, 0.1);
      }

      .mobile-menu__close svg path {
        stroke: #6F5438;
      }

      .mobile-menu__divider {
        width: 100%;
        /* В Figma width: 430px, но лучше 100% с padding */
        border: none;
        border-top: 1px solid rgba(0, 0, 0, 0.1);
        margin: 20px 0;
        /* Отступ до и после разделителя */
      }

      .mobile-menu__divider--vert {
        /* Чтобы сделать вертикальный разделитель, нам нужно изменить структуру Flexbox */
        /* или просто использовать border-left у следующей колонки */
        display: none;
        /* Пока скрываем, так как в Figma это часть 2-колоночного макета */
      }

      .mobile-menu__content {
        display: flex;
        flex-wrap: wrap;
        /* Для расположения в две колонки */
        gap: 15px 20px;
        /* Отступ между колонками */
      }

      .mobile-menu__section {
        flex: 1;
        /* Позволяет секциям занимать доступное пространство */
        min-width: 156px;
        /* Минимальная ширина для колонок, как в Figma Frame 58 */
      }

      .mobile-menu__section ul {
        list-style: none;
        padding: 0;
        margin: 0;
        display: flex;
        flex-direction: column;
        gap: 15px;
        /* Отступ между пунктами меню */
      }

      .mobile-menu__section a {
        font-family: 'Onest', sans-serif;
        font-weight: 600;
        font-size: 20px;
        line-height: 26px;
        text-transform: uppercase;
        color: #6F5438;
        text-decoration: none;
        transition: color 0.2s ease;
      }

      .mobile-menu__section a:hover {
        color: #CBB89A;
      }

      .mobile-menu__section--main {
        position: relative;
        /* Для верт. разделителя */
        padding-right: 15px;
        /* Отступ для разделителя */
      }

      /* Вертикальный разделитель */
      .mobile-menu__section--main::after {
        content: '';
        position: absolute;
        right: 0;
        top: 0;
        width: 1px;
        height: 100%;
        /* Высота как у колонки */
        background-color: rgba(0, 0, 0, 0.1);
      }

      /* Контактные блоки */
      .mobile-menu__contacts,
      .mobile-menu__contact-card {
        background: #FFFFFF;
        border-radius: 10px;
        padding: 30px;
        /* Внутренние отступы */
        width: 100%;
        box-sizing: border-box;
      }

      .mobile-menu__contacts .contact-item,
      .mobile-menu__contact-card .contact-item {
        display: flex;
        align-items: flex-start;
        gap: 30px;
        width: 100%;
      }

      .mobile-menu__contacts .contact-item__icon,
      .mobile-menu__contact-card .contact-item__icon {
        width: 45px;
        height: 45px;
        background: #CBB89A;
        border-radius: 100px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-shrink: 0;
      }

      .mobile-menu__contacts .contact-item__icon svg path,
      .mobile-menu__contact-card .contact-item__icon svg path {
        fill: #FFFFFF;
        /* Заливка иконок белым цветом в контактных карточках */
      }

      .mobile-menu__contacts .contact-item__details,
      .mobile-menu__contact-card .contact-item__details {
        display: flex;
        flex-direction: column;
        gap: 5px;
        /* Отступ между элементами в деталях */
        flex-grow: 1;
      }

      .contact-item__details address {
        margin: 0;
      }

      .mobile-menu__contacts .contact-item__category,
      .mobile-menu__contact-card .contact-item__category {
        font-family: 'Onest', sans-serif;
        font-weight: 400;
        font-size: 14px;
        line-height: 18px;
        color: rgba(111, 84, 56, 0.25);
        text-transform: uppercase;
      }

      .mobile-menu__contacts .contact-item__value,
      .mobile-menu__contact-card .contact-item__value {
        font-family: 'Onest', sans-serif;
        font-weight: 500;
        font-size: 18px;
        line-height: 23px;
        text-transform: uppercase;
        color: #6F5438;
        text-decoration: none;
        word-break: break-word;
        /* Для длинных адресов/почты */
      }

      .mobile-menu__contacts .contact-item__value:hover,
      .mobile-menu__contact-card .contact-item__value:hover {
        color: #CBB89A;
      }

      .contact-item__sub-divider {
        width: 100%;
        border: none;
        border-top: 1px solid rgba(0, 0, 0, 0.05);
        /* Легкий разделитель между номерами */
        margin: 1px 0;
      }

      /* Кнопка "Заказать банкет" в меню */
      .mobile-menu__banket-button {
        margin-top: 15px;
        width: 100%;
        /* На всю ширину меню */
        justify-content: center;
        /* Центрируем содержимое кнопки */
        padding: 21px 20px;
        /* Подгоняем padding */
        background: #cbb89a;
        height: 65px;
      }

      .mobile-menu__banket-button:hover,
      .mobile-menu__banket-button:active,
      .mobile-menu__banket-button:focus {
        background: #6F5438;
      }


      .mobile-menu__header+.mobile-menu__divider {
        margin: 30px 0;
      }

      .mobile-menu__section--extra+.mobile-menu__divider {
        margin: 11px 0 0px;
      }

      .mobile-menu__contacts+.mobile-menu__divider {
        margin: 5px 0 0px;
      }

      .mobile-menu__contact-card+.mobile-menu__divider {
        margin: -2px 0 0px;
      }

      /* Адаптивность для мобильного меню */
      @media (max-width: 768px) {
        .mobile-menu {
          width: 100%;
          /* На весь экран */
          padding: 20px;
        }

        .mobile-menu__title {
          font-size: 32px;
          line-height: 40px;
        }

        .mobile-menu__section {
          min-width: unset;
          /* Убираем min-width */
          flex: none;
          /* Не сжимаем колонки */
          width: 100%;
          /* Каждая секция на всю ширину */
        }

        .mobile-menu__section--main::after {
          display: none;
          /* Скрыть вертикальный разделитель на мобильных */
        }

        .mobile-menu__content {
          flex-direction: column;
          /* Колонки одна под другой */
          gap: 15px 20px;
        }

        .mobile-menu__contacts,
        .mobile-menu__contact-card {
          padding: 20px;
        }

        .mobile-menu__contacts .contact-item__value,
        .mobile-menu__contact-card .contact-item__value {
          font-size: 16px;
          line-height: 20px;
        }

        .mobile-menu__section a {
          font-size: 18px;
        }
      }

      a:hover {
        text-decoration: none !important;
      }
    </style>
    <script>
      $(document).ready(function () {
        // ... (ваш существующий код document.ready) ...
        const mobileMenuOverlay = $('#mobileMenuOverlay');
        const mobileMenu = $('#mobileMenu');
        const burgerButton = $('.btn-user .icon-burger').parent(); // Получаем родительский <a> для .icon-burger
        const closeButton = $('.mobile-menu__close');
        // Открытие меню
        burgerButton.on('click', function (e) {
          e.preventDefault(); // Предотвращаем переход по ссылке
          mobileMenuOverlay.addClass('active');
          $('body').addClass('no-scroll'); // Чтобы страница не скроллилась под меню
        });
        // Закрытие меню по кнопке "Крестик"
        closeButton.on('click', function () {
          mobileMenuOverlay.removeClass('active');
          $('body').removeClass('no-scroll');
        });
        // Закрытие меню по клику на оверлей
        mobileMenuOverlay.on('click', function (e) {
          if ($(e.target).is(mobileMenuOverlay)) { // Проверяем, что клик был именно по оверлею, а не по самому меню
            mobileMenuOverlay.removeClass('active');
            $('body').removeClass('no-scroll');
          }
        });
        // Закрытие меню по клику на пункт меню
        $('#mobileMenu a').on('click', function () {
          mobileMenuOverlay.removeClass('active');
          $('body').removeClass('no-scroll');
        });
        // Добавляем стиль для body, чтобы предотвратить скролл страницы под открытым меню
        $('head').append('<style>.no-scroll { overflow: hidden; }</style>');
      });
    </script>