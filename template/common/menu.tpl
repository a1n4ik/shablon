<div class="menu-popup animation">
    <div class="menu-popup-content d-flex justify-start align-start direction-column">
        <div class="menu-popup-close btn d-flex align-center"><i class="icon-close p20"></i><span>Меню</span></div>
        <ul class="list-unstyled d-flex direction-column">
            <li><a href="/">Главная</a></li>
            <li><a href="restoran/restoran-shahinshah">Ресторанх</a></li>
                <li class="nav-item dropdown">
                  <a class="nav-link" href="bankety/">Банкетный комплекс Парадайз</a>
                  <a class="nav-link dropdown-toggle" href="menu" rel="nofollow" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                  <div class="dropdown-menu1" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="bankety/banketniy-zal-paradayz">Банкетный зал</a><br />
                    <a class="dropdown-item" href="bankety/banketniy-zal-versal">Банкетный зал </a><br />
                    <a class="dropdown-item" href="bankety/italyanskiy-zal">зал</a>
                  </div>
                </li>
            <li><a href="konditerskaya/nasha-konditerskaya">Конд</a></li>
            <li><a href="dostavka/">Доставка</a></li>
        </ul>
        <hr>
        <ul class="list-unstyled d-flex direction-column">
            <li><a href="sobytiya/">События</a></li>
            <li><a href="meropriyatiya/">Мероприятия</a></li>
            <li><a href="sobytiya/akcii/">Акции</a></li>
            <li><a href="sobytiya/novosti/">Новости</a></li>
            <li><a href="sobytiya/blog/">Блог</a></li>
            <li><a href="gallery/">Галерея</a></li>
            <li><a href="/menu.pdf">Меню ресторана</a></li>
	    <li><a href="/barnoe_menu.pdf">Барное меню</a></li>
            <li><a href="reviews/">Отзывы</a></li>
            <li><a href="<?php echo $contact; ?>">Контакты</a></li>
        </ul>
        <hr>
        <div class="menu-popup-contact d-flex direction-column row-gap-20 w100">
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
                <a href="https://wa.me/+<?php echo $messenger; ?>" target="_blank"><i class="icon-whatsapp"></i> WhatsApp</a>
                <a href="https://t.me/+<?php echo $messenger; ?>" target="_blank"><i class="icon-telegram"></i> Telegram</a>
            </div>
            <?php } ?>
        </div>
    </div>
</div>
<div class="menu-bg"></div>