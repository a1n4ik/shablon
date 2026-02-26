<?php echo $header; ?>
<section class="contact-page">
    <div class="wrapper">
        <ul class="breadcrumb text-center">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <h1 class="box-heading text-center"><?php echo $heading_title; ?></h1>
        <div class="contact-page-content max-width-800_ d-grid lg-col-2 md-col-2 sm-col-1 xs-col-1 row-gap-20 column-gap-20 align-start">
            <div class="menu-popup-contact d-flex align-start direction-column row-gap-20 w100">
                <a href="tel:<?php echo $telephone_link; ?>" class="phone">
                    <i class="icon-phone"></i><span class="p22 bold letter"><?php echo $telephone; ?></span>
                </a>
                <a href="tel:<?php echo $telephone2_link; ?>" class="phone">
                    <i class="icon-phone"></i><span class="p22 bold letter"><small class="d-block normal p16 color-gray">Банкетные залы</small><?php echo $telephone_2; ?></span>
                </a>
                <a href="tel:<?php echo $telephone3_link; ?>" class="phone">
                    <i class="icon-phone"></i><span class="p22 bold letter"><small class="d-block normal p16 color-gray">Ресторан</small><?php echo $telephone_3; ?></span>
                </a>
                <a href="mailto:<?php echo $email2; ?>">
                    <i class="icon-mail"></i><span class="p16 medium"><?php echo $email2; ?></span>
                </a>
                
                <?php if($fax) { ?>
                <a href="mailto:<?php echo $fax; ?>">
                    <i class="icon-mail"></i><span class="p16 medium"><?php echo $fax; ?></span>
                </a>
                <?php } ?>
                
                <a>
                    <i class="icon-location"></i><span class="p16 medium"><?php echo $address; ?></span>
                </a>
                <?php if ($messenger) { ?>
                    <div class="messenger d-grid lg-col-2 md-col-2 sm-col-2 xs-col-2">
                        <a href="https://wa.me/<?php echo $messenger; ?>" class="btn-animated" target="_blank">
                            <i class="icon-whatsapp"></i>
                            <span class="ui-button-circle-icon__label-wr" data-text="WhatsApp">
                                <span class="ui-button-circle-icon__label">WhatsApp</span>
                            </span>
                        </a>
                        <a href="https://t.me/+<?php echo $messenger; ?>" class="btn-animated" target="_blank">
                            <i class="icon-telegram"></i>
                            <span class="ui-button-circle-icon__label-wr" data-text="Telegram">
                                <span class="ui-button-circle-icon__label">Telegram</span>
                            </span>
                        </a>
                    </div>
                <?php } ?>
            </div>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="bg-white">
                <div class="subtitle mar-bot-medium uppercase"><?php echo $text_contact; ?></div>
                <div class="d-grid lg-col-2 md-col-2 sm-col-2 xs-col-1 column-gap-20">
                    <div class="col">
                        <div class="form-group required">
                            <input type="text" name="name" value="<?php echo $name; ?>"
                                   placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control"/>
                            <?php if ($error_name) { ?>
                            <div class="text-danger"><?php echo $error_name; ?></div>
                            <?php } ?>
                        </div>
                        <div class="form-group required w100">
                            <input type="text" name="email" value="<?php echo $email; ?>"
                                   placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control"/>
                            <?php if ($error_email) { ?>
                            <div class="text-danger"><?php echo $error_email; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col">
                        <div class="required form-group">
                        <textarea name="enquiry" rows="3" id="input-enquiry"
                                  placeholder="<?php echo $entry_enquiry; ?>"
                                  class="form-control" ><?php echo $enquiry; ?></textarea>
                            <?php if ($error_enquiry) { ?>
                            <div class="text-danger"><?php echo $error_enquiry; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="d-grid lg-col-2 md-col-2 sm-col-2 xs-col-1 column-gap-20">
                    <div class="col"><?php echo $captcha; ?></div>
                    <div class="col">
                        <div class="buttons">
                            <input class="btn btn-primary pointer w100" type="submit" value="<?php echo $button_submit; ?>"/>
                        </div>
                    </div>
                </div>
            </form>
            <?php /* ?>
            <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Ae0d67a509dd5abea79e2c5ec3fcf5a8cb0e9803a22b628b0864c799b26400778&amp;width=689&amp;height=458&amp;lang=ru_RU&amp;scroll=true"></script>
            <?php */ ?>
        </div>
    </div>
</section>
<div style="position:relative;overflow:hidden;"><a href="https://yandex.by/maps/org/zagorodny_ochag/132865706832/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:0px;">Загородный очаг</a><a href="https://yandex.by/maps/10743/odincovo/category/restaurant/184106394/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:14px;">Ресторан в Одинцово</a><a href="https://yandex.by/maps/10743/odincovo/category/banquet_hall/184108315/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:28px;">Банкетный зал в Одинцово</a><iframe src="https://yandex.by/map-widget/v1/?ll=37.277139%2C55.687462&mode=search&oid=132865706832&ol=biz&z=15.33" width="100%" height="600" frameborder="1" allowfullscreen="true" style="position:relative;"></iframe></div>
<?php echo $footer; ?>
<style>
    footer{
        margin-top:0;
    }
</style>