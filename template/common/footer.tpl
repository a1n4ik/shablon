</main>
<footer class="footer">
  <!-- Линия над футером -->
  <div class="footer-line"></div>
  
  <div class="wrapper">
    <div class="footer-row">
      <!-- Логотип -->
      <div class="footer-logo" style="flex-flow: column;height:auto;">
        <img src="/dist/Zag-Och-dom.svg" alt="Банкетный зал" title="Банкетный зал">
        <!-- Разработчики -->
        <div class="footer-dev">
            <span class="d-block p12 mar-top regular"><?php echo $powered; ?></span>
            <span class="p12" style="display: block; text-align: center;">
                Сайт разработан <a href="https://patodesign.ru/" target="_blank">
                <img src="dist/logo_patodesign_white.png" alt="PatoDesign" title="PatoDesign" style="vertical-align: middle;">
                </a>
            </span>
        </div>
      </div>
      
      <!-- Разделы -->
      <div class="footer-col">
        <h3 class="footer-col__title">Разделы</h3>
        <ul class="footer-menu list-unstyled">
          <li><a href="restoran/">О ресторане</a></li>
          <li><a href="zaly/">Залы</a></li>
          <li><a href="meropriyatiya/">Мероприятия</a></li>
          <li><a href="sobytiya/">События</a></li>
          <li><a href="contact-us/">Контакты</a></li>
        </ul>
      </div>
      
      <!-- Дополнительно -->
      <div class="footer-col">
        <h3 class="footer-col__title">Дополнительно</h3>
        <ul class="footer-menu list-unstyled">
          <li><a href="karaoke/">Караоке Major</a></li>
          <li><a href="hotel/">Отель</a></li>
          <li><a href="dostavka/">Доставка</a></li>          
        </ul>
      </div>
      
      <!-- Контакты -->
      <div class="footer-col">
        <h3 class="footer-col__title">Контакты</h3>
        <ul class="footer-menu list-unstyled">
          <li><a href="tel:<?php echo $telephone_link; ?>">+7 (964) 727-14-14</a></li>
          <li><a href="mailto:<?php echo $email2; ?>">z-ochag@mail.ru</a></li>
          <li><a href="contact-us/">город Одинцово<br>Подушкинское шоссе д.9</a></li>          
        </ul>
      </div>
      
      <!-- Копирайт и ссылки -->
      <!--<div class="footer-copyright">
        <span class="footer-copyright__text">Все права защищены © Copyright 2026</span>
        <a href="privacy-policy" class="footer-copyright__link">Политика конфиденциальности</a>
        <a href="#" class="footer-copyright__link">Техническая документация</a>
      </div>-->
    </div>
    
    
  </div>
  
  <!-- WhatsApp кнопка -->
  <!--<a href="https://wa.me/" target="_blank" title="Написать в Whatsapp" rel="noopener noreferrer">
    <div class="whatsapp-button"><i class="icon-whatsapp"></i></div>
  </a>-->
  
  <!-- Калькулятор -->
  <div class="razmer" onclick="Marquiz.showModal('5c92596ee518b00055d720ec')">Рассчитать стоимость</div>

  <?php /* ?>
  <!-- Envybox -->
  <!--<link rel="stylesheet" href="https://cdn.envybox.io/widget/cbk.css">-->
  <script type="text/javascript" src="https://cdn.envybox.io/widget/cbk.js?wcb_code=5b7f732ca1809cc0fcc5901beb2327d1" charset="UTF-8" async></script>
  <?php */ ?>
</footer>

<?php require 'banket_form.tpl' ?>
<script src="dist/js/bootstrap.min.js"></script>
<script src="dist/js/common.min.js?<?php echo time();?>"></script>
<script src="dist/js/swiper.min.js"></script>
<link rel="stylesheet" href="dist/css/old.min.css">
<link rel="stylesheet" href="dist/css/wowanimate.css">
<script src="dist/js/wow.min.js"></script>
<script>new WOW().init();</script>

<!-- Cookie popup -->
<div id="cookie-popup">
  <h3>Используем cookie и технологии рекомендаций.</h3>
  <p>
    <a href="privacy-policy" target="_blank">Файлы cookie</a>
    помогают нам сохранять ваши поисковые запросы, подбирать персональные рекомендации и повышать комфорт использования сайта.
  </p>
  <button onclick="acceptCookies()">OK</button>
</div>

<script>
window.addEventListener('load', function() {
  setTimeout(function() {
    if (!getCookie('cookiesAccepted')) {
      document.getElementById('cookie-popup').style.display = 'block';
    }
  }, 3000);
});

function acceptCookies() {
  setCookie('cookiesAccepted', '1', 7);
  document.getElementById('cookie-popup').style.display = 'none';
}

function setCookie(name, value, days) {
  const d = new Date();
  d.setTime(d.getTime() + (days*24*60*60*1000));
  document.cookie = name + "=" + value + ";expires=" + d.toUTCString() + ";path=/";
}

function getCookie(name) {
  const decodedCookie = decodeURIComponent(document.cookie);
  const ca = decodedCookie.split(';');
  for(let i = 0; i < ca.length; i++) {
    let c = ca[i].trim();
    if (c.indexOf(name + "=") === 0) return c.substring(name.length + 1);
  }
  return "";
}
</script>

<style>
/* === Стили для футера === */
.footer {
    flex: none;
    order: 14;
    flex-grow: 0;
    margin-top: auto;
    background: inherit; /* Фон совпадает с основным фоном */
}

.footer .wrapper {
    width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    box-sizing: border-box;
}

/* Линия над футером */
.footer-line {
    width: 1440px;
    height: 0px;
    border: 2px solid rgba(0, 0, 0, 0.1);
    margin: 0 auto;
}

.footer-row {
    /* Frame 11 */
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: space-between;
    align-items: flex-start;
    align-content: flex-start;
    padding: 0px;
    gap: 20px 30px;
    width: 100%;
    min-height: 243px;
    padding-top: 40px;
    padding-bottom: 40px;
}

/* Логотип */
.footer-logo {
    /* Frame 41 */
    min-width: 350px;   
    border-radius: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
    flex-shrink: 0;
}

.footer-logo img {
    object-fit: contain;
}

/* Колонки */
.footer-col {
    /* Frame 2, Frame 12 */
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
    padding: 0px;
    gap: 15px;
    flex-shrink: 0;
}

.footer-col:nth-child(2) {
    /* Разделы */
    width: 92px;
    height: 183px;
}

.footer-col:nth-child(3) {
    /* Дополнительно */
    width: 128px;
    height: 117px;
}

.footer-col:nth-child(4) {
    /* Контакты */
    width: 172px;
    height: 135px;
}

.footer-col__title {
    /* Заголовки колонок */
    width: auto;
    height: 18px;
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 18px;
    text-transform: uppercase;
    color: rgba(111, 84, 56, 0.65);
    margin: 0;
    flex-shrink: 0;
}

/* Меню */
.footer-menu {
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
    padding: 0px;
    gap: 15px;
    margin: 0;
    list-style: none;
    width: 100%;
}

.footer-menu li {
    width: auto;
    height: 18px;
}

.footer-menu li a {
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 18px;
    color: #6F5438;
    text-decoration: none;
    transition: color 0.3s ease;
    white-space: nowrap;
}

.footer-menu li a:hover {
    color: #CBB89A;
}

/* Копирайт */
.footer-copyright {
    /* Frame 13 */
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
    padding: 0px;
    gap: 15px;
    width: 268px;
    height: 84px;
    flex-shrink: 0;
}

.footer-copyright__text {
    /* Все права защищены © Copyright 2026 */
    width: 268px;
    height: 18px;
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 18px;
    color: rgba(111, 84, 56, 0.65);
    margin: 0;
}

.footer-copyright__link {
    /* Политика конфиденциальности, Техническая документация */
    width: auto;
    height: 18px;
    font-family: 'Onest', sans-serif;
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 18px;
    color: rgba(111, 84, 56, 0.65);
    text-decoration: none;
    transition: color 0.3s ease;
}

.footer-copyright__link:hover {
    color: #6F5438;
}

/* Разработчики */
.footer-dev {
    margin-top: 20px;
    text-align: center;
    width: 100%;
}

.footer-dev .p12 {
    font-family: 'Onest', sans-serif;
    font-size: 12px;
    color: rgba(111, 84, 56, 0.65);
}

.footer-dev a {
    color: inherit;
}

/* WhatsApp кнопка */
.whatsapp-button {
    position: fixed;
    right: 30px;
    bottom: 50px;
    z-index: 101;
    width: 60px;
    height: 60px;
    background: #25D366;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #FFFFFF;
    font-size: 30px;
    box-shadow: 0 4px 15px rgba(37, 211, 102, 0.4);
    transition: all 0.3s ease;
}

.whatsapp-button:hover {
    transform: scale(1.1);
    box-shadow: 0 6px 20px rgba(37, 211, 102, 0.5);
}

/* Калькулятор */
.razmer {
    position: fixed;
    left: 30px;
    bottom: 50px;
    z-index: 101;
    padding: 15px 25px;
    background: #6F5438;
    color: #FFFFFF;
    border-radius: 30px;
    font-family: 'Onest', sans-serif;
    font-size: 14px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.razmer:hover {
    background: #CBB89A;
    transform: translateY(-3px);
}

/* Cookie popup */
#cookie-popup {
    display: none;
    position: fixed;
    background-color: #000;
    color: #fff;
    padding: 24px;
    border-radius: 24px;
    max-width: 380px;
    width: calc(100% - 40px);
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.5);
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    z-index: 9999;
}

#cookie-popup h3 {
    color: #ffffff;
    margin: 0 0 12px;
    font-size: 22px;
    font-weight: 700;
    line-height: 1.3;
}

#cookie-popup p {
    margin: 0;
    font-size: 16px;
    line-height: 1.6;
    color: #ccc;
}

#cookie-popup a {
    color: #fff;
    text-decoration: underline;
}

#cookie-popup button {
    display: block;
    margin: 20px auto 0 auto;
    padding: 12px 24px;
    background-color: #b49e71;
    color: #fff;
    font-size: 18px;
    border: none;
    border-radius: 12px;
    cursor: pointer;
    transition: background 0.3s ease;
    width: 100%;
}

#cookie-popup button:hover {
    background-color: #0055cc;
}

/* Позиционирование cookie popup */
@media (min-width: 768px) {
    #cookie-popup {
        bottom: 20px;
        left: 20px;
    }
}
@media (max-width: 767px) {
    #cookie-popup {
        bottom: 20px;
        left: 0;
        right: 0;
        margin: 0 auto;
    }
}

/* Адаптивность */
@media (max-width: 1200px) {
    .footer {
        width: 100%;
    }
    
    .footer .wrapper {
        width: 100%;
    }
    
    .footer-row {
        justify-content: flex-start;
        gap: 30px;
    }
    
    .footer-logo {
        width: 150px;
        height: 80px;
    }
    
    .footer-col:nth-child(2),
    .footer-col:nth-child(3),
    .footer-col:nth-child(4) {
        width: calc(50% - 15px);
        height: auto;
    }
    
    .footer-copyright {
        width: 100%;
    }
}

@media (max-width: 768px) {
    .footer-line {
        width: 100%;
    }
    
    .footer-row {
        flex-direction: column;
        align-items: center;
        text-align: center;
        padding-top: 30px;
        padding-bottom: 30px;
    }
    
    .footer-col:nth-child(2),
    .footer-col:nth-child(3),
    .footer-col:nth-child(4) {
        width: 100%;
        align-items: center;
    }
    
    .footer-menu {
        align-items: center;
    }
    
    .footer-copyright {
        align-items: center;
        text-align: center;
    }
    
    .footer-copyright__text,
    .footer-copyright__link {
        width: 100%;
        text-align: center;
    }
    
    .razmer {
        left: 15px;
        bottom: 80px;
        padding: 10px 15px;
        font-size: 12px;
    }
    
    .whatsapp-button {
        right: 15px;
        bottom: 80px;
        width: 50px;
        height: 50px;
        font-size: 25px;
    }
}
</style>
</body></html>