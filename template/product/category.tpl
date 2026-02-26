<?php echo $header; ?>

<style type="text/css">
.d-grid:not(.product-row) {
    display: block !important;
}
.wrapper {
    max-width: 1200px; 
    margin-left: auto;
    margin-right: auto;
    padding-left: 15px;
    padding-right: 15px;
}
.qty.d-flex {
    display: flex !important;
    justify-content: center !important;
    align-items: center !important;
}
.caption .btn-group {
    display: flex !important;
    justify-content: space-between !important;
    align-items: center !important;
    width: 100%;
    margin-top: 10px;
}
.caption .btn-group .price {
    display: block !important; 
}
.category-desktop {
    display: none; 
}
@media (min-width: 992px) { 
    .category-desktop {
        display: block !important;
    }
    /* Сдвиг хлебных крошек и заголовка вправо */
    .dostavka .breadcrumb,
    .dostavka .box-head {
        margin-left: 30px;
    }
}
.category-mobile-btn,
.category-mobile {
    display: none; 
}
@media (max-width: 991px) { 
    .category-mobile-btn {
        display: block !important;
        width: 100%;
        margin-bottom: 20px;
    }
    .category-mobile.collapse.in {
        display: block !important;
        margin-bottom: 20px;
    }
    .product-layout.col-xs-12 {
        margin-bottom: 15px;
    }
    .product-layout.col-xs-12:last-child {
        margin-bottom: 0;
    }
    .row {
        row-gap: 15px !important;
    }
}
.category-sidebar .list-group {
    padding: 0;
    margin-bottom: 0;
}
.category-sidebar .list-group-item {
    border: none;
    padding: 8px 15px;
    border-bottom: 1px solid #eee;
    background-color: transparent;
}
.category-sidebar .list-group-item:last-child {
    border-bottom: none;
}
.category-sidebar .list-group-item a {
    color: #333;
    text-decoration: none;
    display: block;
}
.category-sidebar .list-group-item a:hover {
    color: #000;
    background-color: #f5f5f5;
}
.category-sidebar .list-group-item.active {
    font-weight: bold;
    background-color: #eee;
}
.category-sidebar ul.list-unstyled {
    padding-left: 0;
    list-style: none;
    margin-bottom: 0;
}
.category-sidebar ul.list-unstyled li {
    margin-top: 0;
}
.category-sidebar ul.list-unstyled li a {
    display: block;
    padding: 8px 15px;
    color: #333;
    text-decoration: none;
    border-bottom: 1px solid #eee;
}
.category-sidebar ul.list-unstyled li:last-child a {
    border-bottom: none;
}
.category-sidebar ul.list-unstyled li a:hover {
    background-color: #f5f5f5;
}
.menu_vert ul li a{
    border-radius:0;
}
.menu_vert ul li a:hover {
    padding:5px;
}
.menu_vert ul.list-unstyled {
    display: block !important;
    flex-wrap: none !important;
    grid-template-columns: none !important;
    column-gap: 0 !important;
    row-gap: 0 !important;
    padding: 0;
    margin: 0;
    width: 100%;
}
.menu_vert ul.list-unstyled li {
    display: block !important;
    flex: none !important;
    grid-column: auto !important;
    grid-row: auto !important;
    margin: 0;
    padding: 0;
    width: 100%;
}
.menu_vert ul.list-unstyled li a {
    display: block;
    width: 100%;
    padding: 12px 15px;
    color: #6F5438;
    font-family: Onest, sans-serif;
    font-size: 16px;
    text-decoration: none;
    border: 1px solid #6F5438;  
    border-top: none;
    border-left: none;
    border-right: none;
    margin-bottom: 8px;
    word-wrap: break-word;
    overflow-wrap: break-word;
    white-space: normal;
    box-sizing: border-box;
    background: transparent;
}
.menu_vert ul.list-unstyled li a:hover,
.menu_vert ul.list-unstyled li a.active {    
    border-color: #CBB89A;
}
.menu_vert ul.list-unstyled li a .ui-button-circle-icon__label-wr,
.menu_vert ul.list-unstyled li a .ui-button-circle-icon__label {
    display: inline !important;
    width: auto !important;
    height: auto !important;
    overflow: visible !important;
    white-space: normal !important;
    max-width: none !important;
    transform: none !important;
}
.panel{
    background-color:inherit;
}
.panel-default {
    border:0;
}
.product-row-item .caption .name,
.product-row-item .caption a.name,
.caption .name,
.caption a.name {
    color: #6F5438 !important;
}
.product-row-item .caption .name:hover,
.product-row-item .caption a.name:hover,
.caption .name:hover,
.caption a.name:hover {
    color: #8B6B4A !important;
}
.panel-body {
    padding:0px!important;
}
</style>

<section class="dostavka">
    <div class="wrapper">
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        
        <!--<div class="box-head d-flex justify-between flex-wrap column-gap-20 row-gap-20 align-start justify-between">
            <h1 class="box-heading text-center"><?php echo $heading_title; ?></h1>
            <a href="delivery" class="ui-link">Условия доставки</a>
        </div>-->
        <div class="d-flex justify-between flex-wrap" style="border: solid 1px #CBB89A; border-radius: 12px; padding:20px;margin-bottom:30px;margin-left:20px;">
            <a href="tel:74955908778" class="phone d-flex align-center" style="color:#494949;gap:10px;"><i class="icon-phone" style="width:40px;height:40px;border:1px solid #edb47d;border-radius:12px;display: flex;justify-content: center;align-items: center;"></i><span class="p18 bold letter">+7 495 590 87 78</span></a>
            <a href="#" class="phone d-flex align-center" style="color:#494949;gap:10px;cursor:default;"><i class="icon-time" style="width:40px;height:40px;border:1px solid #edb47d;border-radius:12px;display: flex;justify-content: center;align-items: center;"><svg width="15px" height="15px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 21C16.9706 21 21 16.9706 21 12C21 7.02944 16.9706 3 12 3C7.02944 3 3 7.02944 3 12C3 16.9706 7.02944 21 12 21Z" stroke="#494949" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
            <path d="M12 6V12" stroke="#494949" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
            <path d="M16.24 16.24L12 12" stroke="#494949" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
            </svg></i><span class="p18 bold letter">с 11:00 до 00:00</span></a>
                        <a href="#" class="phone d-flex align-center" style="color:#494949;gap:10px;cursor:default;"><i class="icon-time" style="width:40px;height:40px;border:1px solid #edb47d;border-radius:12px;display: flex;justify-content: center;align-items: center;"><svg fill="#494949" height="13px" width="13px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 511.936 511.936" xml:space="preserve">
            <g>
                <g>
                    <polygon points="500.288,61.904 155.888,427.344 11.024,289.376 0,300.96 156.512,450.032 511.936,72.88 		"></polygon>
                </g>
            </g>
            </svg></i><span class="p18 bold letter">Заказ от 1500 руб.</span></a>
                        <a href="delivery" class="phone d-flex align-center" style="color:#494949;gap:10px;"><i class="icon-time" style="width:40px;height:40px;border:1px solid #edb47d;border-radius:12px;display: flex;justify-content: center;align-items: center;"><svg width="15px" height="15Spx" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M21.9844 10C21.9473 8.68893 21.8226 7.85305 21.4026 7.13974C20.8052 6.12523 19.7294 5.56066 17.5777 4.43152L15.5777 3.38197C13.8221 2.46066 12.9443 2 12 2C11.0557 2 10.1779 2.46066 8.42229 3.38197L6.42229 4.43152C4.27063 5.56066 3.19479 6.12523 2.5974 7.13974C2 8.15425 2 9.41667 2 11.9415V12.0585C2 14.5833 2 15.8458 2.5974 16.8603C3.19479 17.8748 4.27063 18.4393 6.42229 19.5685L8.42229 20.618C10.1779 21.5393 11.0557 22 12 22C12.9443 22 13.8221 21.5393 15.5777 20.618L17.5777 19.5685C19.7294 18.4393 20.8052 17.8748 21.4026 16.8603C21.8226 16.1469 21.9473 15.3111 21.9844 14" stroke="#494949" stroke-width="1.5" stroke-linecap="round"></path>
            <path d="M21 7.5L12 12M12 12L3 7.5M12 12V21.5" stroke="#494949" stroke-width="1.5" stroke-linecap="round"></path>
            </svg></i><span class="p18 bold letter">Условия доставки</span></a>
        </div>
        
        <button class="btn btn-gold category-mobile-btn" type="button" data-toggle="collapse" data-target="#categoryCollapse">
            Категории <span class="caret"></span>
        </button>
        
        <div class="collapse category-mobile mb-3" id="categoryCollapse">
            <div class="well">
                <div class="menu_vert">
                    <?php echo $content_top; ?>
                </div>
            </div>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col-sm-3 category-desktop">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="menu_vert">
                                <?php echo $content_top; ?>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-9">
                    <?php if ($products) { ?>
                    <div class="row">
                        <?php foreach ($products as $product) { ?>
                        <div class="product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-row-item overflow">
                                <div class="image">
                                    <a href="<?php echo $product['href']; ?>" class="d-block image_hover">
                                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive"/>
                                    </a>
                                </div>
                                <div class="caption">
                                    <a href="<?php echo $product['href']; ?>" class="name p16 medium"><?php echo $product['name']; ?></a>
                                    <div class="btn-group d-flex align-center justify-between">
                                        <?php if ($product['price']) { ?>
                                        <div class="price">
                                            <?php if (!$product['special']) { ?>
                                            <?php echo $product['price']; ?>
                                            <?php } else { ?>
                                            <span class="price-new"><?php echo $product['special']; ?></span>
                                            <span class="price-old"><?php echo $product['price']; ?></span>
                                            <?php } ?>
                                        </div>
                                        <?php } ?>
                                        <div class="qty d-flex justify-center align-center">
                                            <button type="button" onclick="cart.del('<?php echo $product['product_id']; ?>', 1);" <?php if ($product['princart'] == 0) echo 'disabled'; ?>><i class="icon-minus"></i></button>
                                            <span dataminus="<?php echo $product['product_id']; ?>"><?php echo $product['princart']; ?></span>
                                            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="icon-plus"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="mar-top-medium"><?php echo $pagination; ?></div>
                    <?php } ?>
                    <?php if (!$categories && !$products) { ?>
                    <p><?php echo $text_empty; ?></p>
                    <?php } ?>
                    <?php echo $content_bottom; ?>
                </div>
            </div>
        </div>
    </div>
</section>

<?php if ($description) { ?>
<div class="wrapper">
    <div class="description"><?php echo $description; ?></div>
</div>
<?php } ?>

<?php echo $footer; ?>