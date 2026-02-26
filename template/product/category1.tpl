<?php echo $header; ?>
<style type="text/css">
.d-grid {
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
    padding: 5px 5px;
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
.product-layout{
    margin-top:30px;
}
</style>

<section class="dostavka">
    <div class="wrapper">
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        
        <div class="box-head d-flex justify-between flex-wrap column-gap-20 row-gap-20 align-start justify-between">
            <h1 class="box-heading text-center"><?php echo $heading_title; ?></h1>
            <a href="delivery" class="ui-link">Условия доставки</a>
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