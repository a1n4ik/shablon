<div class="simplecheckout-block"
     id="simplecheckout_cart" <?php echo $hide ? 'data-hide="true"' : '' ?> <?php echo $has_error ? 'data-error="true"' : '' ?>>
<?php if ($display_header) { ?>
<div class="checkout-heading panel-heading"><?php echo $text_cart ?> <span class="checkout-heading-button"><a
                href="javascript:void(0)" data-onclick="clearCart" class="text-danger"
                data-confirm-text="<?php echo $text_clear_cart_question ?>"><?php echo $text_clear_cart ?></a></span>
</div>
<?php } ?>
<?php if ($attention) { ?>
<div class="alert alert-danger simplecheckout-warning-block"><?php echo $attention; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="alert alert-danger simplecheckout-warning-block"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="cart-product">
    <?php foreach ($products as $product) { ?>
    <div class="item d-flex align-center">
        <div class="image">
            <?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>">
                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"
                     class="img-responsive radius-medium"/>
            </a>
            <?php } ?>
        </div>
        <div class="caption d-grid lg-col-2 md-col-2 sm-col-2 xs-col-1 column-gap-20 row-gap-20">
            <div class="name">
                <a href="<?php echo $product['href']; ?>" class="p14 medium"><?php echo $product['name']; ?></a>
                <?php if (!$product['stock'] && ($config_stock_warning || !$config_stock_checkout)) { ?>
                <span class="product-warning">***</span>
                <?php } ?>
                <?php foreach ($product['option'] as $option) { ?>
                <div class="options">
                    &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br/>
                    <?php } ?>
                    <?php if (!empty($product['recurring'])) { ?>
                    - <small><?php echo $text_recurring_item ?>: <?php echo $product['recurring'] ?></small>
                </div>
                <?php } ?>
            </div>
            <div class="col d-flex align-center justify-end">
                <div class="price p16 semiBold"><?php echo $product['price']; ?></div>
                <div class="qty d-flex align-center">
                    <div class="quantity d-flex align-center">
                        <button data-onclick="decreaseProductQuantity" type="submit"><i class="icon-minus"></i></button>
                        <input type="text"
                               data-onchange="changeProductQuantity" <?php echo $quantity_step_as_minimum ? 'data-minimum="' . $product['minimum'] . '"' : '' ?>
                        name="quantity[<?php echo !empty($product['cart_id']) ? $product['cart_id'] : $product['key']; ?>]"
                        value="<?php echo $product['quantity']; ?>" size="1" />
                        <button data-onclick="increaseProductQuantity" type="submit"><i class="icon-plus"></i></button>
                    </div>
                    <button class="btn btn-danger" data-onclick="removeProduct"
                            data-product-key="<?php echo !empty($product['cart_id']) ? $product['cart_id'] : $product['key'] ?>"
                            type="button">
                        <i class="icon-trash"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <?php } ?>
</div>
<?php foreach ($totals as $total) { ?>
<div class="simplecheckout-cart-total" id="total_<?php echo $total['code']; ?>">
    <span><b><?php echo $total['title']; ?>:</b></span>
    <span class="simplecheckout-cart-total-value p20"><?php echo $total['text']; ?></span>
    <span class="simplecheckout-cart-total-remove">
            <?php if ($total['code'] == 'coupon') { ?>
        <i data-onclick="removeCoupon" title="<?php echo $button_remove; ?>" class="fa fa-times-circle"></i>
        <?php } ?>
        <?php if ($total['code'] == 'voucher') { ?>
        <i data-onclick="removeVoucher" title="<?php echo $button_remove; ?>" class="fa fa-times-circle"></i>
        <?php } ?>
        <?php if ($total['code'] == 'reward') { ?>
        <i data-onclick="removeReward" title="<?php echo $button_remove; ?>" class="fa fa-times-circle"></i>
        <?php } ?>
        </span>
</div>
<?php } ?>
<?php if (isset($modules['coupon'])) { ?>
<div class="simplecheckout-cart-total">
    <span class="inputs"><?php echo $entry_coupon; ?>&nbsp;<input class="form-control" type="text"
                                                                  data-onchange="reloadAll" name="coupon"
                                                                  value="<?php echo $coupon; ?>"/></span>
</div>
<?php } ?>
<?php if (isset($modules['reward']) && $points > 0) { ?>
<div class="simplecheckout-cart-total">
    <span class="inputs"><?php echo $entry_reward; ?>&nbsp;<input class="form-control" type="text" name="reward"
                                                                  data-onchange="reloadAll"
                                                                  value="<?php echo $reward; ?>"/></span>
</div>
<?php } ?>
<?php if (isset($modules['voucher'])) { ?>
<div class="simplecheckout-cart-total">
    <span class="inputs"><?php echo $entry_voucher; ?>&nbsp;<input class="form-control" type="text" name="voucher"
                                                                   data-onchange="reloadAll"
                                                                   value="<?php echo $voucher; ?>"/></span>
</div>
<?php } ?>
<?php if (isset($modules['coupon']) || (isset($modules['reward']) && $points > 0) || isset($modules['voucher'])) { ?>
<div class="simplecheckout-cart-total simplecheckout-cart-buttons">
    <span class="inputs buttons"><a id="simplecheckout_button_cart" data-onclick="reloadAll"
                                    class="button btn-primary button_oc btn"><span><?php echo $button_update; ?></span></a></span>
</div>
<?php } ?>
<input type="hidden" name="remove" value="" id="simplecheckout_remove">
<div style="display:none;" id="simplecheckout_cart_total"><?php echo $cart_total ?></div>
<?php if ($display_weight) { ?>
<div style="display:none;" id="simplecheckout_cart_weight"><?php echo $weight ?></div>
<?php } ?>
<?php if (!$display_model) { ?>
<style>
    .simplecheckout-cart col.model,
    .simplecheckout-cart th.model,
    .simplecheckout-cart td.model {
        display: none;
    }
</style>
<?php } ?>
</div>
