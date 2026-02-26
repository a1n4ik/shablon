<?php echo $header; ?>
<?php echo $content_top; ?>
<section class="shipping-block wow fadeInUp">
<div class="wrapper">
<div class="shipping-block__inner-content">
<div class="shipping-block__tabs-header">
<ul class="nav nav-tabs shipping-block__tabs list-unstyled" role="tablist">
<li class="nav-item active">
<a class="nav-link" data-toggle="tab" href="#tab-4" role="tab" aria-selected="true">Отель</a>
</li>
<li class="shipping-block__tab-divider"></li>
<li class="nav-item">
<a class="nav-link" data-toggle="tab" href="#tab-5" role="tab" aria-selected="false">Караоке MAJOR</a>
</li>
</ul>
</div>
<div class="tab-content shipping-block__tab-content-wrapper">
<div class="tab-pane active" id="tab-4" role="tabpanel">
<div class="shipping-block__gallery-container">
<?php echo $Position_5; ?>
</div>
</div>
<div class="tab-pane" id="tab-5" role="tabpanel">
<div class="shipping-block__gallery-container">
<?php echo $Position_6; ?>
</div>
</div>
</div>             
</div>
</div>
</section>
<?php echo $Position_7; ?>
<section class="about-events-block wow fadeInUp">
  <div class="wrapper">
    <div class="about-events-block__inner">
      <div class="about-events-block__title-column">
        <h2 class="about-events-block__title">О ресторане</h2>
        <?php // Если блок "Мероприятия" должен отображаться только при определенных условиях, используйте PHP ?>
        <?php /*
        <h2 class="about-events-block__title about-events-block__title--hidden">Мероприятия</h2>
        */ ?>
      </div>
      <div class="about-events-block__content-column">
        <div class="about-events-block__description-wrapper">
          <p class="about-events-block__description">Прекрасная возможность привлечь гостей, поэтому важно подчеркивать разнообразие форматов, предлагать гибкие программы и индивидуальный подход, включая тематические вечера, банкеты, детские праздники и возможность аренды площадки</p>
          <?php // Если кнопка "Заказать банкет" должна отображаться только при определенных условиях, используйте PHP ?>
          <?php /*
          <a href="banket/" class="about-events-block__button">
            <span>Заказать банкет</span>
            <div class="about-events-block__button-icon">
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
<style>
/* === Стили для "about-events-block" (Frame 69) === */
.about-events-block {
  margin-bottom: 50px; /* Отступ между этим блоком и следующим */
  /* Вместо order: 5; flex: none; flex-grow: 0; 
     мы просто размещаем секцию в нужном месте HTML */
}

.about-events-block .wrapper {
  margin: 0 auto;
  padding: 0 20px; /* Отступы по бокам */
  box-sizing: border-box;
  
  height: 272px; /* Высота из Figma */
}

.about-events-block__inner {
  display: flex;
  flex-direction: row;
  align-items: flex-start; /* Выравнивание по верху */
  padding: 90px 60px; /* Внутренние отступы, исходя из Figma */
  gap: 150px; /* Расстояние между столбцами */
  width: 100%; /* Занимает всю ширину wrapper'а */
  height: 100%; /* Занимает всю высоту wrapper'а */
  background: #FFFFFF;
  border-radius: 20px;
  box-sizing: border-box; /* Учитываем padding в ширине/высоте */
}

.about-events-block__title-column {
  /* Столбец для заголовка (О ресторане / Мероприятия) */
  flex-shrink: 0; /* Не сжимать */
  width: 272px; /* Ширина для "О ресторане" */
  /* height: 51px; - Задается контентом */
}

.about-events-block__title {
  /* О ресторане */
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

/* Если вам нужен заголовок "Мероприятия", который изначально скрыт */
.about-events-block__title--hidden {
  display: none; /* Или можно менять его видимость через JS/модификаторы класса */
  width: 303px; /* У "Мероприятия" своя ширина */
}


.about-events-block__content-column {
  /* Столбец для Frame 70 */
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding: 0px;
  gap: 60px; /* Отступ между описанием и кнопкой (если есть) */
  flex-grow: 1; /* Позволяет занимать оставшееся пространство */
  width: 658px; /* Ширина описания из Figma */
  /* height: 92px; - Задается контентом */
}

.about-events-block__description-wrapper { /* Frame 70, если это обертка для описания и кнопки */
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding: 0;
  gap: 60px; /* Gap между описанием и кнопкой */
  width: 100%;
}


.about-events-block__description {
  /* Прекрасная возможность привлечь гостей... */
  width: 100%; /* Занимает всю доступную ширину в колонке */
  height: 92px; /* Фиксированная высота, как в Figma */
  font-family: 'Onest', sans-serif;
  font-style: normal;
  font-weight: 400;
  font-size: 18px;
  line-height: 23px;
  color: rgba(111, 84, 56, 0.5);
  margin: 0;
  overflow: hidden; /* Скрывает текст, если он не помещается в 92px */
  text-overflow: ellipsis; /* Добавляет многоточие */
  display: -webkit-box;
  -webkit-line-clamp: 4; /* Примерное количество строк для 92px высоты и 23px line-height */
  -webkit-box-orient: vertical;
}

/* Стиль для кнопки "Заказать банкет" внутри этого блока */
.about-events-block__button {
  /* Frame 3 */
  box-sizing: border-box;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  padding: 21px 10px 21px 30px;
  gap: 30px;
  width: 247px;
  height: 65px;
  background: #CBB89A;
  border-radius: 100px;
  text-decoration: none;
  color: #FFFFFF;
  font-family: 'Onest', sans-serif;
  font-style: normal;
  font-weight: 600;
  font-size: 14px;
  line-height: 18px;
  text-transform: uppercase;
  transition: all 0.3s ease;
  flex-shrink: 0; /* Не сжимать кнопку */
  /* display: none;  Если кнопка должна быть скрыта по умолчанию */
}

.about-events-block__button:hover {
  background: #6F5438;
}

.about-events-block__button:hover .about-events-block__button-icon {
  background: #CBB89A;
}

.about-events-block__button span {
  flex: none;
  order: 0;
  flex-grow: 0;
}

.about-events-block__button-icon {
  /* Frame 4 */
  width: 45px;
  height: 45px;
  background: #6F5438;
  border-radius: 100px;
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  transition: background 0.3s ease;
  flex-shrink: 0;
}

.about-events-block__button-icon svg path {
  stroke: #FFFFFF; /* Цвет стрелки внутри круга */
}


* === Адаптивность для нового блока "about-events-block" === */
@media (max-width: 1200px) {
  .about-events-block .wrapper {
    width: auto; /* Убираем фиксированную ширину, делаем адаптивной */
    height: auto;
    padding: 0 20px; /* Удерживаем отступы */
  }

  .about-events-block__inner {
    flex-direction: column; /* На маленьких экранах столбцы идут друг за другом */
    gap: 30px; /* Меньший отступ между блоками */
    padding: 30px; /* Меньше внутренние отступы */
    height: auto; /* Высота подстраивается под контент */
  }

  .about-events-block__title-column,
  .about-events-block__content-column {
    width: 100%; /* Занимают всю ширину */
    flex-grow: 1;
  }

  .about-events-block__title {
    font-size: 32px; /* Уменьшаем размер заголовка */
    line-height: 40px;
  }

  .about-events-block__description {
    height: auto; /* Высота описания адаптивна */
    -webkit-line-clamp: unset; /* Убираем ограничение по строкам */
    font-size: 16px;
  }

  .about-events-block__description-wrapper {
    gap: 30px; /* Уменьшаем gap */
  }

  .about-events-block__button {
    width: 100%; /* Кнопка на всю ширину */
    max-width: 247px; /* Ограничиваем максимальную ширину */
  }
}

@media (max-width: 768px) {
  .about-events-block__inner {
    padding: 20px; /* Еще меньше отступы */
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

  .about-events-block__button {
    height: 55px; /* Меньше высота кнопки */
    padding: 15px 10px 15px 20px;
    font-size: 12px;
  }

  .about-events-block__button-icon {
    width: 35px;
    height: 35px;
  }
}

</style>
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
      <div class="tab-pane" id="tab-2" role="tabpanel">
        <div class="news-grid">
          <?php echo $Position_3; ?>
        </div>
      </div>
      <div class="tab-pane" id="tab-3" role="tabpanel">
        <div class="news-grid">
          <?php echo $Position_4; ?>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Новый блок с товарами -->
<!-- Новый блок "Доставка" с товарами -->
<section class="delivery-block wow fadeInUp">
    <div class="wrapper">
        <div class="delivery-block__header"> <!-- Новый контейнер для заголовка и кнопки -->
            <h2 class="delivery-block__title">Доставка</h2>
            <a href="dostavka/" class="delivery-block__button">
                <span>Заказать доставку</span>
                <div class="delivery-block__button-icon">
                    <svg width="14" height="11" viewBox="0 0 14 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12.75 5.5L1 5.5M12.75 5.5L7.8125 1.5M12.75 5.5L7.8125 9.5" stroke="#FFFFFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                    </svg>
                </div>
            </a>
        </div>
        <div class="delivery-block__products-container">
            <?php echo $Position_15; ?>
        </div>
    </div>
</section>
<style>
/* === Стили для контейнера заголовка и кнопки "Доставка" === */
.delivery-block__header {
    display: flex;
    justify-content: space-between; /* Распределяет заголовок и кнопку по краям */
    align-items: center; /* Выравнивает по центру по вертикали */
   
}

/* === Стили для кнопки "Заказать доставку" === */
.delivery-block__button {
        box-sizing: border-box;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    padding: 21px 10px 21px 30px;
    gap: 30px;
    width: 247px;
    height: 65px;
    border: 1px solid #CBB89A;
    border-radius: 100px;
    text-decoration: none;
    color: #6F5438;
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 600;
    font-size: 14px;
    line-height: 18px;
    text-transform: uppercase;
    transition: all 0.3s ease;
}

/* Изменение фона кнопки при наведении */
.delivery-block__button:hover {
    background: #6F5438;
}

/* Стили для текстового элемента внутри кнопки (span) */
.delivery-block__button span {
    flex: none; /* Не участвует в распределении пространства flex-контейнера */
    order: 0; /* Порядок элемента */
    flex-grow: 0; /* Не растягивается */
}

/* Контейнер для SVG-иконки внутри кнопки */
.delivery-block__button-icon {
    width: 45px; /* Ширина контейнера иконки (для создания круга) */
    height: 45px; /* Высота контейнера иконки */
    background: #CBB89A; /* Цвет фона круга иконки */
    border-radius: 100px; /* Скругление для создания круга */
    display: flex; /* Flexbox для центрирования SVG */
    justify-content: center; /* Центрирование SVG по горизонтали */
    align-items: center; /* Центрирование SVG по вертикали */
    position: relative;
    transition: background 0.3s ease; /* Плавный переход цвета фона */
    flex-shrink: 0;
}

/* Стили для пути SVG-иконки */
.delivery-block__button-icon svg path {
    stroke: #FFFFFF; /* Цвет SVG-стрелки */
}

/* Изменение фона контейнера иконки при наведении на кнопку */
.delivery-block__button:hover .delivery-block__button-icon {
    background: #CBB89A;
}


/* === Адаптивность для заголовка и кнопки "Доставка" === */
@media (max-width: 1200px) {
    .delivery-block__header {
        flex-direction: column; /* На экранах меньше 1200px элементы идут в столбец */
        align-items: flex-start; /* Выравнивание элементов по левому краю */
        margin-bottom: 40px; /* Уменьшаем отступ */
    }
    
    .delivery-block__title {
        font-size: 32px; /* Уменьшаем размер заголовка */
        line-height: 40px;
        margin-top: 40px; /* Скорректированный отступ сверху */
        margin-bottom: 20px; /* Отступ между заголовком и кнопкой */
    }

    .delivery-block__button {
        width: 100%; /* Кнопка занимает всю доступную ширину */
        max-width: 280px; /* Ограничиваем максимальную ширину */
        justify-content: center; /* Центрируем содержимое кнопки */
        padding: 18px 10px 18px 25px; /* Корректируем padding */
        height: 55px; /* Уменьшаем высоту */
    }

    .delivery-block__button-icon {
        width: 40px; /* Уменьшаем размер круга иконки */
        height: 40px;
    }
}

@media (max-width: 768px) {
    .delivery-block__header {
        margin-bottom: 30px; /* Еще уменьшаем отступ */
    }
    
    .delivery-block__title {
        font-size: 28px; /* Еще уменьшаем размер заголовка */
        line-height: 36px;
        margin-top: 30px;
        margin-bottom: 15px;
    }

    .delivery-block__button {
        padding: 15px 10px 15px 20px; /* Корректируем padding */
        height: 45px; /* Еще уменьшаем высоту */
        font-size: 12px; /* Уменьшаем размер шрифта */
    }

    .delivery-block__button-icon {
        width: 35px; /* Еще уменьшаем размер круга иконки */
        height: 35px;
    }
}
/* === Стили для нового блока "delivery-block" === */
.delivery-block {
    margin-bottom: 50px;
}

.delivery-block .wrapper {
    margin: 0 auto;
    padding: 0 20px;
    box-sizing: border-box;
}

.delivery-block__title {
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 600;
    font-size: 40px;
    line-height: 51px;
    letter-spacing: -0.02em;
    text-transform: uppercase;
    color: #6F5438;
    margin: 60px 0 50px 0; /* Отступ сверху и снизу для заголовка */
}

.delivery-block__products-container {
    position: relative; /* Важен для позиционирования стрелок Swiper */
}

/* Переопределяем стили OpenCart/Swiper для контейнера Swiper */
.delivery-block__products-container .relative.tab-control {
    overflow: hidden; /* Скрываем части карточек, выходящие за пределы Swiper */
    position: relative; /* Чтобы стрелки позиционировались относительно этого блока */
}

/* Стилизация карточки товара внутри свайпера */
.delivery-block__products-container .product-row-item {
    width: 387px !important; /* Устанавливаем фиксированную ширину, как в Figma, переопределяем инлайновые стили */
    height: 549px; /* Общая высота карточки */
    background: #FFFFFF;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    flex-shrink: 0;
    display: flex; /* Используем flexbox для вертикального расположения частей карточки */
    flex-direction: column;
}

.delivery-block__products-container .product-row-item:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
}

.delivery-block__products-container .product-row-item .image {
    position: relative;
    width: 100%;
    height: 300px; /* Высота изображения */
    overflow: hidden;
    border-radius: 20px 20px 0 0;
}

.delivery-block__products-container .product-row-item .image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease;
    display: block;
}

.delivery-block__products-container .product-row-item:hover .image img {
    transform: scale(1.05);
}

.delivery-block__products-container .product-row-item .caption {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: 30px;
    flex-grow: 1; /* Позволяет заголовку и кнопкам занимать оставшееся пространство */
    box-sizing: border-box;
}

.delivery-block__products-container .product-row-item .caption .name {
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 500;
    font-size: 18px;
    line-height: 23px;
    letter-spacing: -0.02em;
    text-transform: uppercase;
    color: #6F5438;
    margin: 0 0 10px 0;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    text-decoration: none; /* Убираем подчеркивание у ссылки */
}

.delivery-block__products-container .product-row-item .caption .name:hover {
    color: #CBB89A;
}

.delivery-block__products-container .product-row-item .btn-group {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: auto; /* Прижимает блок кнопок к низу */
}

.delivery-block__products-container .product-row-item .price {
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 600;
    font-size: 24px;
    line-height: 30px;
    color: #6F5438;
}

/* Стили для кнопок +/- и счетчика */
.delivery-block__products-container .product-row-item .qty {
    display: flex;
    align-items: center;
    gap: 10px;
    background: #CBB89A;
    border-radius: 100px; /* Круглый фон */
    padding: 5px; /* Немного padding для кнопок */
}

.delivery-block__products-container .product-row-item .qty button {
    background: #6F5438; /* Цвет фона кнопок +/- */
    border: none;
    border-radius: 50%; /* Круглые кнопки */
    width: 35px;
    height: 35px;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
    transition: background 0.3s ease;
}

.delivery-block__products-container .product-row-item .qty button:hover {
    background: #5a422e; /* Цвет при наведении */
}

.delivery-block__products-container .product-row-item .qty button i {
    color: #FFFFFF; /* Цвет иконок +/- */
    font-size: 14px;
}

.delivery-block__products-container .product-row-item .qty span {
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 600;
    font-size: 18px;
    line-height: 23px;
    color: #FFFFFF; /* Цвет счетчика */
    min-width: 25px; /* Чтобы число не скакало */
    text-align: center;
    padding: 0 5px; /* Небольшой отступ по бокам от числа */
}

/* Стилизация стрелок Swiper */
.delivery-block__products-container .swiper-button-next,
.delivery-block__products-container .swiper-button-prev {
    color: #6F5438; /* Цвет стрелок */
    top: 30%; /* Смещаем стрелки чуть ниже середины карточки */
    transform: translateY(-50%); /* Центрирование по вертикали */
    width: 45px; /* Размер стрелки */
    height: 45px;
    background-color: rgba(255, 255, 255, 0.7); /* Фон стрелки */
    border-radius: 50%;
    transition: background-color 0.3s ease;
}

.delivery-block__products-container .swiper-button-next:hover,
.delivery-block__products-container .swiper-button-prev:hover {
    background-color: rgba(255, 255, 255, 1);
}

.delivery-block__products-container .swiper-button-next::after,
.delivery-block__products-container .swiper-button-prev::after {
    font-size: 20px; /* Размер иконки стрелки */
    --swiper-navigation-size: 20px; /* Для Swiper 6+, чтобы изменить размер иконки */
}

/* Адаптивность для "delivery-block" */
@media (max-width: 1200px) {
    .delivery-block__title {
        font-size: 32px;
        line-height: 40px;
        margin-top: 40px;
        margin-bottom: 40px;
    }
    .delivery-block__products-container .product-row-item {
        /*
          Swiper добавляет свои инлайновые стили width.
          Если OpenCart использует Swiper с breakpoints,
          то width будет установлен автоматически.
          Здесь calc(50% - 10px) будет работать для 2х карточек.
          Если OpenCart/Swiper устанавливает ширину напрямую,
          возможно, потребуется !important или переопределение через JS.
          Но в вашем инспекторе, swiper-slide уже имеет width: 388.75px;
          Это означает, что Swiper контролирует ширину.
          Если вы хотите 2 колонки, попробуйте изменить настройки Swiper.
        */
        height: auto; /* Высота подстраивается */
        margin: 0 auto;
    }
    .delivery-block__products-container .product-row-item .image {
        height: 250px;
    }
    .delivery-block__products-container .product-row-item .caption {
        padding: 20px;
    }
    .delivery-block__products-container .product-row-item .price {
      font-size: 20px;
      line-height: 25px;
    }
    .delivery-block__products-container .swiper-button-next,
    .delivery-block__products-container .swiper-button-prev {
      top: calc(30% + 50px); /* Смещаем стрелки ниже из-за меньшей высоты изображения */
      width: 40px;
      height: 40px;
    }
}

@media (max-width: 768px) {
    .delivery-block__title {
        font-size: 28px;
        line-height: 36px;
        margin-top: 30px;
        margin-bottom: 30px;
    }
    .delivery-block__products-container .product-row-item {
        width: 100% !important; /* На мобильных обычно 1 карточка */
        max-width: 387px;
        height: auto;
        margin: 0 auto;
    }
    .delivery-block__products-container .product-row-item .image {
        height: 200px;
    }
    .delivery-block__products-container .product-row-item .caption {
        padding: 15px;
    }
    .delivery-block__products-container .product-row-item .caption .name {
        font-size: 16px;
        line-height: 20px;
    }
    .delivery-block__products-container .product-row-item .price {
        font-size: 18px;
        line-height: 23px;
    }
    .delivery-block__products-container .product-row-item .qty button {
        width: 30px;
        height: 30px;
    }
    .delivery-block__products-container .product-row-item .qty button i {
        font-size: 12px;
    }
    .delivery-block__products-container .product-row-item .qty span {
        font-size: 16px;
    }
    /* Скрываем стрелки Swiper на мобильных, если они мешают или не нужны */
    .delivery-block__products-container .swiper-button-next,
    .delivery-block__products-container .swiper-button-prev {
        display: none;
    }
}
</style>
<?php echo $content_bottom; ?>
<section class="contacts-block wow fadeInUp">
<div class="wrapper">
<div class="contacts-block__inner">
<div class="contacts-block__info">
<div class="contacts-block__info-content">
<h2 class="contacts-block__title">Контакты</h2>
<p class="contacts-block__description">Для вашего удобства предлагаем воспользоваться следующими контактами. Вы также можете оставить заявку, нажав кнопку «Заказать банкет» внизу страницы.</p>
</div>
<a href="#" class="contacts-block__button">
<span>Заказать банкет</span>
<div class="contacts-block__button-icon">
<svg width="14" height="11" viewBox="0 0 14 11" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M12.75 5.5L1 5.5M12.75 5.5L7.8125 1.5M12.75 5.5L7.8125 9.5" stroke="#FFFFFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
</div>
</a>
</div>
<div class="contacts-block__details">
<div class="contact-card">
<div class="contact-card__icon">
<!-- Иконка Телефон -->

<svg width="15" height="15" viewBox="0 0 15 15" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" clip-rule="evenodd" d="M11.6667 9.5C11.1667 9.5 10.6667 9.41667 10.1667 9.25C9.75 9.16667 9.25 9.25 8.91667 9.58333L7.33333 11.25C5.08333 10.0833 3.66667 8.5 2.5 6.25L4.16667 4.66667C4.41667 4.41667 4.5 3.91667 4.33333 3.5C4.16667 3 4.08333 2.5 4.08333 2C4.08333 1.33333 3.5 0.75 2.83333 0.75H2C1.33333 0.75 0.75 1.33333 0.75 2C0.75 8.16667 5.83333 13.25 12 13.25C12.6667 13.25 13.25 12.6667 13.25 12V11.25C13.25 10.5833 12.6667 10 12 10C11.8333 10 11.6667 9.5 11.6667 9.5Z" fill="#FFFFFF"/>
</svg>
</div>
<div class="contact-card__details">
<div class="contact-card__label">Телефон</div>
<div class="contact-card__row">
<span class="contact-card__category">Ресторан</span>
<span class="contact-card__value">8(964)727-14-14</span>
</div>
<div class="contact-card__row">
<span class="contact-card__category">Банкет</span>
<span class="contact-card__value">8(498)595-90-90</span>
</div>
<div class="contact-card__row">
<span class="contact-card__category">Отель</span>
<span class="contact-card__value">8(495)590-87-78</span>
</div>
</div>
</div>
<div class="contact-card">
<div class="contact-card__icon">
<!-- Иконка Почта -->
<svg width="15" height="15" viewBox="0 0 15 15" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M1.25 3.75L1.25 11.25C1.25 11.9404 1.80964 12.5 2.5 12.5H12.5C13.1904 12.5 13.75 11.9404 13.75 11.25V3.75L7.5 7.5L1.25 3.75ZM13.75 2.5C13.75 1.80964 13.1904 1.25 12.5 1.25H2.5C1.80964 1.25 1.25 1.80964 1.25 2.5V3.125L7.5 6.875L13.75 3.125V2.5Z" fill="#000000"/>
</svg>
</div>
<div class="contact-card__details">
<div class="contact-card__label">Почта</div>
<div class="contact-card__row">
<span class="contact-card__value">z-ochag@mail.ru</span>
</div>
</div>
</div>
<div class="contact-card">
<div class="contact-card__icon">
<!-- Иконка Адрес -->
<svg width="15" height="15" viewBox="0 0 15 15" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M7.5 0C4.05357 0 1.25 2.80357 1.25 6.25C1.25 10.9375 7.5 15 7.5 15C7.5 15 13.75 10.9375 13.75 6.25C13.75 2.80357 10.9464 0 7.5 0ZM7.5 8.75C6.11929 8.75 5 7.63071 5 6.25C5 4.86929 6.11929 3.75 7.5 3.75C8.88071 3.75 10 4.86929 10 6.25C10 7.63071 8.88071 8.75 7.5 8.75Z" fill="#000000"/>
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
<style>
/* === Стили для "shipping-block" === */
.shipping-block {
height: 402px;
flex: none;
order: 6;
flex-grow: 0;
margin-bottom: 50px;
}
.nav-tabs {
column-gap:0px;
}
.nav-tabs>li.active>a{
background-color:inherit!important;
}
.shipping-block .wrapper {
margin: 0 auto;
padding: 0 20px;
box-sizing: border-box;
height: 100%;
display: flex;
flex-direction: column;
justify-content: space-between;
}
.shipping-block__inner-content {
width: 100%;
height: 100%;
display: flex;
flex-direction: column;
justify-content: space-between;
}
.shipping-block__tabs-header {
display: flex;
flex-direction: row;
align-items: center;
padding: 0px;
gap: 30px;
width: auto;
height: 51px;
}
.shipping-block__tabs {
margin-bottom: 0;
border-bottom: none;
display: flex;
align-items: center;
padding: 0;
list-style: none;
justify-content: flex-start;
}
.shipping-block__tabs .nav-item {
margin-right: 0;
}
.shipping-block__tabs .nav-link {
font-family: 'Onest', sans-serif;
font-style: normal;
font-weight: 400;
font-size: 40px;
line-height: 51px;
letter-spacing: -0.02em;
text-transform: uppercase;
color: rgba(111, 84, 56, 0.15);
padding: 0;
border: none;
background: none;
transition: all 0.3s ease;
white-space: nowrap;
overflow: hidden;
text-overflow: ellipsis;
}
.shipping-block__tabs .nav-item.active .nav-link,
.shipping-block__tabs .nav-link.active {
font-weight: 600;
color: #6F5438;
border: none;
}
.shipping-block__tab-divider {
width: 30px;
height: 0px;
border-top: 2px solid rgba(111, 84, 56, 0.15);
margin: 0 15px;
transform: rotate(90deg);
}
.shipping-block__tab-content-wrapper {
display: flex;
flex-direction: row;
align-items: center;
padding: 0px;
gap: 20px;
width: 100%;
height: 321px;
flex-grow: 1;
}
.shipping-block__gallery-container {
width: 100%;
height: 100%;
}
/* Стили для внутреннего содержимого $Position_5 и $Position_6, 
основываясь на инспекторе кода, где есть <section class="banket"> */
.shipping-block__gallery-container .banket {
width: 100%;
height: 100%;
}
.shipping-block__gallery-container .banket > .wrapper {
padding: 0;
}
.shipping-block__gallery-container .banket .head {
display: none;
}
.shipping-block__gallery-container .banket .swiper {
width: 100%;
height: 100%;
overflow: hidden;
}
.shipping-block__gallery-container .banket .swiper-wrapper {
display: flex;
flex-direction: row;
height: 100%;
}
.shipping-block__gallery-container .banket .swiper-slide {
width: 387px !important;
height: 321px;
margin-right: 20px !important;
box-sizing: border-box;
position: relative;
border-radius: 20px;
overflow: hidden;
flex-shrink: 0;
}
.shipping-block__gallery-container .banket .swiper-slide:last-child {
margin-right: 0 !important;
}
.shipping-block__gallery-container .banket-item {
position: absolute;
left: 0;
top: 0;
width: 100%;
height: 100%;
display: block;
border-radius: 20px;
overflow: hidden;
text-decoration: none;
color: #FFFFFF;
}
.shipping-block__gallery-container .banket-item img {
position: absolute;
left: 0;
top: 0;
width: 100%;
height: 100%;
object-fit: cover;
border-radius: 20px;
}
.shipping-block__gallery-container .banket-item::before {
content: '';
position: absolute;
left: 0%;
right: 0%;
top: 0%;
bottom: 0%;
background: linear-gradient(180deg, rgba(16, 16, 16, 0.1275) 50%, rgba(16, 16, 16, 0.7225) 100%);
border-radius: 20px;
z-index: 1;
}
.shipping-block__gallery-container .banket-item .caption {
position: absolute;
left: 30px;
top: 268px;
z-index: 2;
display: flex;
flex-direction: column;
}
.shipping-block__gallery-container .banket-item .caption .name {
font-family: 'Onest', sans-serif;
font-style: normal;
font-weight: 500;
font-size: 18px;
line-height: 23px;
text-transform: uppercase;
color: #FFFFFF;
white-space: nowrap;
overflow: hidden;
text-overflow: ellipsis;
}
.shipping-block__gallery-container .banket-item .caption .text {
display: none;
}
.shipping-block__gallery-container .banket-item .caption .text span {
display: none;
}
.shipping-block__gallery-container .banket-item .caption .text i {
display: none;
}
.shipping-block__see-all {
margin-top: 20px;
text-align: right;
}

/* === Стили для "news-block" === */
/* ... ваш текущий объединенный CSS для news-блока ... */
/* Раздел новостей */
.news {
    margin-bottom: 50px;
    /* Убираем order и flex, так как это не нужно для обычной секции */
}

/* Обертка для контента - центрирование и отступы */
.news .wrapper {
    margin: 0 auto;
    padding: 0 20px;
    box-sizing: border-box;
}

/* Заголовок секции и табы */
.news__tabs-header {
    display: flex;
    flex-direction: row;
    align-items: center;
    padding: 0px;
    gap: 30px;
    width: auto;
    height: 51px;
    margin-left: 0;
    margin-top: 60px;
    margin-bottom: 50px;
}

.news__tabs {
    margin-bottom: 0;
    border-bottom: none;
    display: flex;
    align-items: center;
    padding: 0;
    list-style: none;
    justify-content: flex-start;
}

.news__tabs .nav-item {
    margin-right: 0;
}

.news__tabs .nav-link {
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 400; /* По умолчанию неактивный */
    font-size: 40px;
    line-height: 51px;
    letter-spacing: -0.02em;
    text-transform: uppercase;
    color: rgba(111, 84, 56, 0.15); /* Цвет неактивного таба */
    padding: 0;
    border: none;
    background: none;
    transition: all 0.3s ease;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.news__tabs .nav-item.active .nav-link,
.news__tabs .nav-link.active {
    font-weight: 600; /* Активный таб */
    color: #6F5438; /* Цвет активного таба */
    border: none;
}

.news__tab-divider {
    width: 30px;
    height: 0px;
    border-top: 2px solid rgba(111, 84, 56, 0.15);
    margin: 0 15px;
    transform: rotate(90deg);
}

/* Контент табов */
.news .tab-content {
    margin-bottom: 40px;
}

.news .tab-pane {
    opacity: 0;
    visibility: hidden;
    transition: opacity 0.3s ease, visibility 0.3s ease;
}

.news .tab-pane.active {
    opacity: 1;
    visibility: visible;
}

/* Сетка карточек */
.news-grid {
    display: flex;
    flex-wrap: wrap; 
    gap: 20px; 
    justify-content: flex-start;
}

/* Карточка новости (Frame 13 / Frame 35 / Frame 36 / Frame 37) */
.news-card {
    width: 387px;      
    height: 549px;     
    background: #FFFFFF;
    border-radius: 20px;
    overflow: hidden; 
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); 
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    flex-shrink: 0; 
}

/* Эффект при наведении на карточку */
.news-card:hover {
    transform: translateY(-5px); 
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15); 
}

/* Ссылочная область, покрывающая всю карточку */
.news-card__area-link {
    display: flex; /* Используем flexbox для вертикального расположения частей карточки */
    flex-direction: column;
    width: 100%;
    height: 100%;
    text-decoration: none;
    color: inherit; 
}

/* Верхняя часть с изображением (Frame 42) */
.news-card__figure {
    position: relative;
    width: 100%; /* Занимает всю ширину карточки */
    height: 300px; /* Фиксированная высота как в Figma */
    overflow: hidden;
    border-radius: 20px 20px 0 0; /* Закругляем только верхние углы */
}

/* Изображение внутри контейнера (image 5 / image 4 / image 3) */
.news-card__image {
    position: absolute;
    width: 590px;
    height: 394px;
    left: -101.5px;
    top: -94px;
    object-fit: cover;
    transition: transform 0.3s ease;
    display: block; /* Убираем лишние отступы под изображением */
}

/* Эффект при наведении на изображение */
.news-card:hover .news-card__image {
    transform: scale(1.05);
}

/* Нижняя часть с контентом (имитация Group 13) */
.news-card__body {
    display: flex;
    flex-direction: column;
    justify-content: space-between; /* Распределяет пространство между заголовком, описанием и кнопкой */
    padding: 30px; /* Внутренние отступы как в Figma */
    height: calc(100% - 300px); /* Оставшаяся высота после изображения */
    box-sizing: border-box; /* Учитываем padding в высоте */
}

/* Заголовок (Банкетный зал в Одинцово) */
.news-card__title {
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 500;
    font-size: 18px;
    line-height: 23px;
    text-transform: uppercase;
    color: #6F5438;
    margin: 0 0 10px 0; /* Отступ снизу для описания */
    white-space: nowrap; 
    overflow: hidden;
    text-overflow: ellipsis; 
}

/* Описание (Великолепные интерьеры...) */
.news-card__description {
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 18px;
    color: rgba(111, 84, 56, 0.5);
    margin: 0;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 5; /* Примерное количество строк, чтобы поместилось */
    -webkit-box-orient: vertical;
    flex-grow: 1; /* Позволяет описанию занимать все доступное пространство */
}

/* Блок "Подробнее" (Group 28) - теперь это внутренний div */
.news-card__details-button {
    display: flex;
    justify-content: space-between; /* РАСПРЕДЕЛИТЬ ТЕКСТ И СТРЕЛКУ ПО КРАЯМ */
    align-items: center; 
    margin-top: 20px;
    color: inherit;
}

/* Текст "Подробнее" */
.news-card__details-text {
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 18px;
    color: #6F5438;
    transition: color 0.3s ease;
}

/* Обертка для SVG иконки */
.news-card__details-icon-wrapper {
    display: flex; /* Для центрирования SVG, если потребуется */
    align-items: center;
    justify-content: center;
    transition: all 0.3s ease;
}

.news-card__details-icon-wrapper svg {
    display: block; /* Избежать лишних отступов */
}

/* Настраиваем цвет обводки SVG */
.news-card__details-icon-wrapper svg path {
    stroke: #6F5438; /* Базовый цвет стрелки */
    transition: stroke 0.3s ease;
}

/* Hover эффекты для кнопки */
.news-card:hover .news-card__details-text {
    color: #CBB89A; 
}

.news-card:hover .news-card__details-icon-wrapper svg path {
    stroke: #CBB89A; /* Изменение цвета стрелки при наведении */
}

/* ========================================= */
/* Адаптивность (Media Queries)              */
/* ========================================= */

@media (max-width: 1200px) {
    .news-card {
        width: calc(50% - 10px); /* 2 карточки в ряд с отступом */
        max-width: 387px; 
        margin: 0 auto; 
    }
}

@media (max-width: 768px) {
    .news-grid {
        flex-direction: column; 
        gap: 20px;
    }

    .news-card {
        width: 100%;   
        max-width: 387px; 
        height: auto; 
    }

    .news-card__figure {
        height: 200px; /* Меньшая высота изображения на мобильных */
    }

    .news-card__image {
        width: 100%; 
        height: 100%; 
        left: 0; 
        top: 0; 
    }

    .news-card__body {
        padding: 20px; 
        height: auto; 
    }

    .news-card__title {
        margin-bottom: 5px; 
    }

    .news-card__details-button {
        margin-top: 15px; 
    }
    
    .news-card__description {
        -webkit-line-clamp: 4; 
    }
}

/* === Стили для "contacts-block" === */

/* Group 32 */
.contacts-block {
  /* Flex, order можно убрать, так как секция уже в верном порядке в HTML */
  margin-bottom: 50px; /* Отступ снизу, чтобы блок был выше футера */
}

/* Обёртка контента (старый "Group 32" в Figma) */
.contacts-block .wrapper {
  margin: 0 auto; /* Центрирование */
  padding: 0 20px; /* Отступы по бокам */
  box-sizing: border-box;
  /* width: 1200px; - Убрал фиксированную ширину здесь, т.к. уже есть max-width в header.
     Если в Figma 1200px это для контента, то wrapper должен быть шире на padding. */
  /* height: 418px; - Высота контента, задается ниже */
}

.contacts-block__inner {
  display: flex; /* Используем flexbox для расположения левого и правого блока */
  flex-direction: row; /* Располагаем левый и правый блок рядом */
  justify-content: space-between; /* Распределяем пространство */
  gap: 20px; /* Расстояние между блоками */
  width: 100%;
  height: 418px; /* Фиксированная высота как в Figma */
}

/* Frame 18 (большой левый блок с заголовком и кнопкой) */
.contacts-block__info {
  display: flex;
  flex-direction: column;
  justify-content: space-between; /* Выравнивание контента и кнопки */
  align-items: flex-start;
  padding: 60px; /* Внутренние отступы, исходя из Figma */
  width: 523px; /* Ширина из Figma */
  height: 100%; /* Заполняем всю высоту родителя */
  background: #FFFFFF;
  border-radius: 20px;
  box-sizing: border-box; /* Учитываем padding в ширине/высоте */
  flex-shrink: 0; /* Не сжимать */
}

/* Frame 46 */
.contacts-block__info-content {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding: 0px;
  gap: 30px; /* Отступ между заголовком и описанием */
  width: 100%; /* Занимает всю доступную ширину в info-блоке */
  /* height: 173px; - Убрал фиксированную высоту, пусть контент ее определяет */
}

.contacts-block__title {
  /* Контакты */
  font-family: 'Onest', sans-serif;
  font-style: normal;
  font-weight: 600;
  font-size: 40px;
  line-height: 51px;
  letter-spacing: -0.02em;
  text-transform: uppercase;
  color: #6F5438;
  margin: 0;
  width: 100%; /* Занимает всю доступную ширину */
  /* height: 51px; - Задается line-height */
}

.contacts-block__description {
  /* Для вашего удобства предлагаем воспользоваться... */
  font-family: 'Onest', sans-serif;
  font-style: normal;
  font-weight: 400;
  font-size: 18px;
  line-height: 23px;
  color: rgba(111, 84, 56, 0.5);
  margin: 0;
  width: 100%; /* Занимает всю доступную ширину */
  height: 92px; /* Фиксированная высота */
  overflow: hidden; /* Скрыть переполняющий текст */
  display: -webkit-box;
  -webkit-line-clamp: 4; /* Ограничение количества строк */
  -webkit-box-orient: vertical;
}

/* Frame 3 для кнопки "Заказать банкет" */
.contacts-block__button {
  box-sizing: border-box;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  padding: 21px 10px 21px 30px;
  gap: 30px;
  width: 247px; /* Ширина кнопки из Figma */
  height: 65px;
  background: #CBB89A;
  border-radius: 100px;
  text-decoration: none;
  color: #FFFFFF; /* Цвет текста кнопки */
  font-family: 'Onest', sans-serif;
  font-style: normal;
  font-weight: 600;
  font-size: 14px;
  line-height: 18px;
  text-transform: uppercase;
  transition: all 0.3s ease;
  flex-shrink: 0; /* Не сжимать кнопку */
  /* position: absolute; left: 60px; top: 293px; - Удалено, т.к. flexbox управляет */
}

.contacts-block__button:hover {
  background: #6F5438; /* Изменение фона при наведении */
}
.contacts-block__button:hover .contacts-block__button-icon {
  background: #CBB89A; /* Изменение фона иконки при наведении */
}
.contacts-block__button span {
  flex: none;
  order: 0;
  flex-grow: 0;
}
.contacts-block__button-icon {
  width: 45px;
  height: 45px;
  background: #6F5438;
  border-radius: 100px;
  flex: none;
  order: 1;
  flex-grow: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  transition: background 0.3s ease;
}
.contacts-block__button-icon svg path {
  stroke: #FFFFFF; /* Цвет стрелки внутри круга */
}

/* Frame 5 (правый блок с контактными карточками) */
.contacts-block__details {
  display: flex;
  flex-direction: column;
  justify-content: center; /* Центрируем по вертикали, если контент не заполняет всю высоту */
  align-items: flex-start;
  padding: 0px;
  gap: 20px; /* Отступ между карточками */
  width: 657px; /* Ширина из Figma */
  height: 100%; /* Высота из Figma, должна растягиваться на всю высоту */
  flex-grow: 1; /* Позволяет занимать оставшееся пространство */
  /* position: absolute; left: 663px; top: 5031px; - Удалено, т.к. flexbox управляет */
}

/* Frame 13, 16, 17 */
.contact-card {
  display: flex;
  flex-direction: row;
  align-items: center;
  padding: 30px; /* Внутренние отступы */
  gap: 30px; /* Отступ между иконкой и текстом */
  width: 100%; /* Занимает всю ширину родителя */
  height: 126px; /* Высота из Figma */
  background: #FFFFFF;
  border-radius: 20px;
  flex: none;
  order: 0;
  align-self: stretch;
  flex-grow: 1; /* Чтобы карточки равномерно заполняли доступное пространство */
  box-sizing: border-box; /* Учитываем padding в ширине/высоте */
}

/* Frame 4 (иконка в contact-card) */
.contact-card__icon {
  width: 45px;
  height: 45px;
  background: #CBB89A;
  border-radius: 100px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-shrink: 0; /* Чтобы иконка не сжималась */
  /* position: absolute; left: 30px; top: 46px; - Удалено, т.к. flexbox управляет */
}
.contact-card__icon svg {
  width: 15px;
  height: 15px;
  /* background: #FFFFFF; - Не нужно, если fill="currentColor" */
}
/* Стили для SVG path внутри иконки (для правильной работы currentColor) */
.contact-card__icon svg path {
  fill: #ffffff /* Цвет иконки */
}


.contact-card__details {
  display: flex;  
  justify-content: center;
  gap: 5px; /* Отступ между строками в карточке */
  
}

.contact-card__label {
  font-family: 'Onest', sans-serif;
  font-style: normal;
  font-weight: 500;
  font-size: 18px;
  line-height: 23px;
  text-transform: uppercase;
  color: #6F5438;
  width:30%;
  border-right: 2px solid #CBB89A26;
}

.contact-card__row {
  display: flex;
  flex-wrap: wrap; /* Разрешаем перенос строк, если не помещается */
  justify-content: flex-start;
  align-items: baseline;
  gap: 10px; /* Отступ между категорией и значением */
}
.contact-card__category {
  /* Ресторан, Банкет, Отель (was "Ресторан" position: absolute; left: 238px; top: 49px;) */
  font-family: 'Onest', sans-serif;
  font-style: normal;
  font-weight: 400;
  font-size: 14px;
  line-height: 18px;
  color: rgba(111, 84, 56, 0.25);
  text-transform: uppercase;
}
.contact-card__category:empty { /* если категории нет */
  display: none;
}
.contact-card__value {  
  font-family: 'Onest', sans-serif;
  font-style: normal;
  font-weight: 400;
  font-size: 14px;
  line-height: 18px;
  text-transform: uppercase;
  color: rgba(111, 84, 56, 0.65);
}

.contact-card__label + .contact-card__row:first-of-type {
    margin-top: 5px; /* Небольшой отступ между заголовком и первой строкой */
}

/* === Адаптивность для "contacts-block" === */
@media (max-width: 1200px) {
  .contacts-block .wrapper {
    width: auto;
    padding: 0 20px;
  }
  .contacts-block__inner {
    flex-direction: column; /* На маленьких экранах блоки идут друг за другом */
    height: auto; /* Высота подстраивается под контент */
    gap: 30px; /* Отступ между левым и правым блоком */
  }
  .contacts-block__info,
  .contacts-block__details {
    width: 100%; /* Занимают всю ширину */
    height: auto; /* Высота подстраивается под контент */
  }
  .contacts-block__info {
    padding: 30px; /* Меньше внутренние отступы */
  }
  .contacts-block__title {
    font-size: 32px;
    line-height: 40px;
  }
  .contacts-block__description {
    font-size: 16px;
    line-height: 20px;
    height: auto; /* Убираем фиксированную высоту */
    -webkit-line-clamp: unset;
  }
  .contacts-block__button {
    width: 100%; /* Кнопка на всю ширину */
    max-width: 247px; /* Ограничиваем максимальную ширину */
  }
  .contact-card {
    height: auto; /* Высота карточки адаптивна */
    padding: 20px; /* Меньше внутренние отступы */
    flex-direction: column; /* Карточки могут быть в столбец */
    align-items: flex-start; /* Выравнивание по левому краю */
    gap: 15px; /* Меньше отступ между иконкой и текстом */
  }
  .contact-card__label {
    margin-top: 10px; /* Отступ сверху для заголовка */
  }
  .contact-card__row {
    flex-direction: column; /* Строки значений могут быть в столбец */
    align-items: flex-start;
    gap: 5px;
  }
}

@media (max-width: 768px) {
  .contacts-block__inner {
    gap: 20px;
  }
  .contacts-block__info {
    padding: 20px;
  }
  .contacts-block__title {
    font-size: 28px;
    line-height: 36px;
  }
  .contacts-block__description {
    font-size: 14px;
    line-height: 18px;
  }
  .contacts-block__button {
    height: 55px;
    padding: 15px 10px 15px 20px;
    font-size: 12px;
  }
  .contacts-block__button-icon {
    width: 35px;
    height: 35px;
  }
}
a:focus, a:hover{
    color:inherit!important;
}
</style>
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
// Инициализация Swiper для галереи залов
var swiper = new Swiper('.rooms-gallery-swiper', {
slidesPerView: 3,
spaceBetween: 20,
centeredSlides: false, // Отключаем центрирование слайдов
loop: false,           // Отключаем бесконечную прокрутку
pagination: {
el: '.rooms-gallery-pagination',
clickable: true,
},
breakpoints: {
// when window width is >= 320px
320: {
slidesPerView: 1,
spaceBetween: 10
},
// when window width is >= 768px
768: {
slidesPerView: 2,
spaceBetween: 20
},
// when window width is >= 1200px
1200: {
slidesPerView: 3,
spaceBetween: 20
}
}
});
// Инициализация Swiper для галереи мероприятий
var eventsSwiper = new Swiper('.events-gallery-swiper', {
slidesPerView: 4, // 4 изображения
spaceBetween: 20,
centeredSlides: false,
loop: false,
pagination: {
el: '.events-gallery-pagination',
clickable: true,
},
breakpoints: {
// when window width is >= 320px
320: {
slidesPerView: 1,
spaceBetween: 10
},
// when window width is >= 768px
768: {
slidesPerView: 2,
spaceBetween: 20
},
// when window width is >= 1200px
1200: {
slidesPerView: 4, // 4 изображения
spaceBetween: 20
}
}
});
});
</script>