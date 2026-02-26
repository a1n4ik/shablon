</main>
<footer>
  <div class="wrapper">
    <div class="footer-row d-grid lg-col-4 md-col-4 sm-col-2 xs-col-1 row-gap-20 column-gap-20">
      <div class="col d-flex direction-column align-center justify-start row-gap-20">
        <img src="image/logofooter.png" alt="Банкетный зал" title="Банкетный зал" class="img-responsive d-inline">
       <span class="d-block p12 mar-top regular" style="margin-bottom: 20px;"><?php echo $powered; ?></span><span class="p12" style="display: block;text-align: center;">Сайт разработан <a href="https://patodesign.ru/" target="_blank"><img src="dist/logo_patodesign_white.png" alt="PatoDesign" title="PatoDesign" style="vertical-align: middle;"></a></span>
        <div class="soc-icons d-flex justify-center color-gray">
          <a rel="nofollow" href="#" target="_blank"><i class="icon-vk p24"></i></a>
          
        </div>
      </div>
      <div class="col p16">
       <h3 class="p18 bold">Разделы</h3>
        <ul class="list-unstyled">
          <li><a href="restoran/">О ресторане</a></li>
          <li><a href="zaly/">Залы</a></li>
          <li><a href="meropriyatiya/">Мероприятия</a></li>
          <li><a href="sobytiya/">События</a></li>
          <li><a href="contact-us/">Контакты</a></li>
        </ul>
      </div>
      <div class="col p16">
      <h3 class="p18 bold">Дополнительно</h3>
        <ul class="list-unstyled">
          <li><a href="karaoke/">Караоке Major</a></li>
          <li><a href="hotel/">Отель</a></li>
          <li><a href="dostavka/">Доставка</a></li>          
        </ul>
      </div>
      <div class="col p16">
      <h3 class="p18 bold">Контакты</h3>
        <ul class="list-unstyled">
          <li><a href="tel:<?php echo $telephone_link; ?>">+7 (964) 727-14-14</a></li>
          <li><a href="mailto:<?php echo $email2; ?>">z-ochag@mail.ru</a></li>
          <li><a href="contact-us/">город Одинцово
Подушкинское шоссе д.9</a></li>          
        </ul>
      </div>
      
      <!--<div class="menu-popup-contact d-flex direction-column row-gap-20 w100">
        <a href="tel:<?php echo $telephone_link; ?>" class="phone">
          <i class="icon-phone"></i><span class="p18 bold letter"><?php echo $telephone; ?></span>
        </a>
        <a href="tel:<?php echo $telephone2_link; ?>" class="phone">
          <i class="icon-phone"></i><span class="p18 bold letter"><small class="d-block light p12 color-gray">Банкетные залы</small><?php echo $telephone_2; ?></span>
        </a>
        <a href="tel:<?php echo $telephone3_link; ?>" class="phone">
          <i class="icon-phone"></i><span class="p18 bold letter"><small class="d-block light p12 color-gray">Ресторан</small><?php echo $telephone_3; ?></span>
        </a>
        <a href="mailto:<?php echo $email2; ?>">
          <i class="icon-mail"></i><span><?php echo $email2; ?></span>
        </a>
        <a href="<?php echo $contact; ?>">
          <i class="icon-location"></i><span><?php echo $address; ?></span>
        </a>
        <?php if ($messenger) { ?>
        <div class="messenger d-grid lg-col-2 md-col-2 sm-col-2 xs-col-2">
          <a rel="nofollow" href="https://wa.me/<?php echo $messenger; ?>" class="btn-animated" target="_blank">
          <i class="icon-whatsapp"></i>
          <span class="ui-button-circle-icon__label-wr" data-text="WhatsApp">
          <span class="ui-button-circle-icon__label">WhatsApp</span>
        </span>
        </a>
          <a rel="nofollow" href="https://t.me/+<?php echo $messenger; ?>" class="btn-animated" target="_blank">
          <i class="icon-telegram"></i>
          <span class="ui-button-circle-icon__label-wr" data-text="Telegram">
          <span class="ui-button-circle-icon__label">Telegram</span>
        </span>
          </a>
        </div>
        <?php } ?>
      </div>-->
    </div>
  </div>
  
  <!--flyingwa-->
  <a href="https://wa.me/" target="_blank" title="Написать в Whatsapp" rel="noopener noreferrer"><div class="whatsapp-button"><i class="icon-whatsapp"></i></div></a>
  
<div style="position:fixed;left:30px;bottom:50px;z-index:101;display:none;">

</div>

<div class="razmer" onclick="Marquiz.showModal('5c92596ee518b00055d720ec')">Рассчитать стоимость</div>

<link rel="stylesheet" href="https://cdn.envybox.io/widget/cbk.css">
<script type="text/javascript" src="https://cdn.envybox.io/widget/cbk.js?wcb_code=5b7f732ca1809cc0fcc5901beb2327d1" charset="UTF-8" async></script>

</footer>
<?php require 'banket_form.tpl' ?>
<script src="dist/js/bootstrap.min.js"></script>
<script src="dist/js/common.min.js?<?php echo time();?>"></script>
<script src="dist/js/swiper.min.js"></script>
<link rel="stylesheet" href="dist/css/old.min.css">
<link rel="stylesheet" href="dist/css/wowanimate.css">
<script src="dist/js/wow.min.js"></script>
<script>new WOW().init();</script>

<script>
// (function(){  // анонимная функция (function(){ })(), чтобы переменные "a" и "b" не стали глобальными
// var a = document.querySelector('#aside1'), b = null;  // селектор блока, который нужно закрепить
// window.addEventListener('scroll', Ascroll, false);
// document.body.addEventListener('scroll', Ascroll, false);  // если у html и body высота равна 100%
// function Ascroll() {
//   if (b == null) {  // добавить потомка-обёртку, чтобы убрать зависимость с соседями
//     var Sa = getComputedStyle(a, ''), s = '';
//     for (var i = 0; i < Sa.length; i++) {  // перечислить стили CSS, которые нужно скопировать с родителя
//       if (Sa[i].indexOf('overflow') == 0 || Sa[i].indexOf('padding') == 0 || Sa[i].indexOf('border') == 0 || Sa[i].indexOf('outline') == 0 || Sa[i].indexOf('box-shadow') == 0 || Sa[i].indexOf('background') == 0) {
//         s += Sa[i] + ': ' +Sa.getPropertyValue(Sa[i]) + '; '
//       }
//     }
//     b = document.createElement('div');  // создать потомка
//     b.style.cssText = s + ' box-sizing: border-box; width: ' + a.offsetWidth + 'px;';
//     a.insertBefore(b, a.firstChild);  // поместить потомка в цепляющийся блок первым
//     var l = a.childNodes.length;
//     for (var i = 1; i < l; i++) {  // переместить во вновь созданного потомка всех остальных потомков (итого: создан потомок-обёртка, внутри которого по прежнему работают скрипты)
//       b.appendChild(a.childNodes[1]);
//     }
//     a.style.height = b.getBoundingClientRect().height + 'px';  // если под скользящим элементом есть другие блоки, можно своё значение
//     a.style.padding = '0';
//     a.style.border = '0';  // если элементу присвоен padding или border
//   }
//   if (a.getBoundingClientRect().top <= 0) { // elem.getBoundingClientRect() возвращает в px координаты элемента относительно верхнего левого угла области просмотра окна браузера
//     b.className = 'sticky';
//   } else {
//     b.className = '';
//   }
//   window.addEventListener('resize', function() {
//     a.children[0].style.width = getComputedStyle(a, '').width
//   }, false);  // если изменить размер окна браузера, измениться ширина элемента
// }
// })()
</script>

 <style>
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

/* Позиционирование: ПК внизу слева, мобилка — центр */
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
</style>

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
  setCookie('cookiesAccepted', '1', 7); // 7 дней
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
</body></html>
