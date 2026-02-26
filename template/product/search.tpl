<?php echo $header; ?>
<section class="dostavka">
    <div class="wrapper">
        <ul class="breadcrumb text-center">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <h1 class="box-heading text-center"><?php echo $heading_title; ?></h1>
        <?php echo $content_top; ?>
        <?php if ($products) { ?>
        <div class="product-row d-grid lg-col-4 md-col-3 sm-col-3 xs-col-2">
            <?php foreach ($products as $product) { ?>
            <div class="product-row-item overflow">
                <div class="image">
                    <a href="<?php echo $product['href']; ?>" class="d-block image_hover">
                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive"/>
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
            <?php } ?>
        </div>
        <div class="mar-top-medium"><?php echo $pagination; ?></div>
        <?php } ?>

        <?php if (!$categories && !$products) { ?>
        <p><?php echo $text_empty; ?></p>
        <?php } ?>
        <?php echo $content_bottom; ?>
    </div>
</section>
<?php echo $footer; ?>