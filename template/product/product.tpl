<?php echo $header; ?>
<section class="product-page">
  <div class="wrapper">
    <ul class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
    <div class="product-page-row d-grid lg-col-2 md-col-2 sm-col-1 xs-col-1">
      <div class="first overflow radius-large">
        <?php if ($thumb || $images) { ?>
        <div class="swiper">
          <div class="swiper-wrapper">
            <?php if ($thumb) { ?>
            <div class="swiper-slide">
              <img src="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="img-responsive"/>
            </div>
            <?php } ?>
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <div class="swiper-slide">
              <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" class="img-responsive" alt="<?php echo $heading_title; ?>" />
            </div>
            <?php } ?>
            <?php } ?>
          </div>
          <div class="swiper-button-prev btn-prev"><i class="icon-arrow-left"></i></div>
          <div class="swiper-button-next btn-next"><i class="icon-arrow-right"></i></div>
        </div>
        <?php } ?>
      </div>
      <div class="last">
        <h1 class="box-heading"><?php echo $heading_title; ?></h1>
        <div id="product">
          <?php if ($options) { ?>
          <?php foreach ($options as $option) { ?>
          <?php if ($option['type'] == 'select') { ?>
          <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
            <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($option['product_option_value'] as $option_value) { ?>
              <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
              </option>
              <?php } ?>
            </select>
          </div>
          <?php } ?>
          <?php if ($option['type'] == 'radio') { ?>
          <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
            <label class="control-label"><?php echo $option['name']; ?></label>
            <div id="input-option<?php echo $option['product_option_id']; ?>">
              <?php foreach ($option['product_option_value'] as $option_value) { ?>
              <div class="radio">
                <label>
                  <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                  <?php if ($option_value['image']) { ?>
                  <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" />
                  <?php } ?>
                  <?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                </label>
              </div>
              <?php } ?>
            </div>
          </div>
          <?php } ?>
          <?php if ($option['type'] == 'checkbox') { ?>
          <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
            <label class="control-label"><?php echo $option['name']; ?></label>
            <div id="input-option<?php echo $option['product_option_id']; ?>">
              <?php foreach ($option['product_option_value'] as $option_value) { ?>
              <div class="checkbox">
                <label>
                  <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                  <?php if ($option_value['image']) { ?>
                  <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" />
                  <?php } ?>
                  <?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                </label>
              </div>
              <?php } ?>
            </div>
          </div>
          <?php } ?>
          <?php } ?>
          <?php } ?>
          <div class="cart d-flex align-center column-gap-20">

            <div class="price_block">
              <?php if ($price) { ?>
              <span itemprop = "offers" itemscope itemtype = "http://schema.org/Offer">
                <meta itemprop="price" class="js-prices-current" content="<?php echo rtrim(preg_replace("/[^0-9\.]/", "", ($special ? $special : $price)), '.'); ?>" />
                <meta itemprop="priceCurrency" content="<?php echo $md_currency; ?>" />
                <link itemprop = "availability" href = "http://schema.org/<?php echo ($md_availability ? "InStock" : "OutOfStock") ?>" />
              </span>
              <ul class="list-inline price">
                <?php if (!$special) { ?>
                <li class="product-price"><?php echo $price; ?></li>
                <?php } else { ?>
                <li class="price-new"><?php echo $special; ?></li>
                <li class="price-old"><?php echo $price; ?></li>
                <?php } ?>
              </ul>
              <?php } ?>

              <?php foreach ($attribute_groups as $attribute_group) { ?>
              <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
              <?php if(!in_array($attribute['attribute_id'], array(21, 22, 23))) { ?>
              <span class="p16 medium color-gray"><?php echo $attribute['text']; ?></span>
              <?php } ?>
              <?php } ?>
              <?php } ?>
            </div>

            <div class="qty">
              <button id="button-cart-minus" onclick="cart.del('<?php echo $product_id ?>',1)" <?php if ($princart == 0) echo 'disabled'; ?>><i class="icon-minus"></i></button>
              <span dataminus="<?php echo $product_id ?>" class="p18"><?php echo $princart ?></span>
              <button id="button-cart" onclick="cart.add('<?php echo $product_id ?>')"><i class="icon-plus"></i></button>
            </div>
          </div>

        </div>
        <div class="attr p16"><?php echo $description; ?></div>
      </div>
    </div>
  </div>
</section>
<?php echo $content_bottom; ?>
<script>
  $(document).ready(function() {
  var swiper = new Swiper('.swiper', {
    slidesPerView: 1,
    loop:true,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    navigation: {
      nextEl: ".btn-next",
      prevEl: ".btn-prev",
    },
  });
  });
</script>
<script>
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			//$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				//$('.breadcrumb').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i>' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
              $('[onclick*="cart.del(\''+product_id+'\',"]').prop('disabled', false);
              $('[dataminus="'+product_id+'"]').text(json['quantity']);

				$('#cart > button #cart-total').html(json['total']);


				$('#cart ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
</script>
<script>
  $('#button-cart-minus').on('click', function() {
    $.ajax({
      url: 'index.php?route=checkout/cart/minusincart',
      type: 'post',
      data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
      dataType: 'json',
      beforeSend: function() {
        //$('#button-cart-minus').button('loading');
      },
      complete: function() {
        $('#button-cart-minus').button('reset');
      },
      success: function(json) {
        $('.alert, .text-danger').remove();
        $('.form-group').removeClass('has-error');

        if (json['error']) {
          if (json['error']['option']) {
            for (i in json['error']['option']) {
              var element = $('#input-option' + i.replace('_', '-'));

              if (element.parent().hasClass('input-group')) {
                element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
              } else {
                element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
              }
            }
          }

          if (json['error']['recurring']) {
            $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
          }

          // Highlight any found errors
          $('.text-danger').parent().addClass('has-error');
        }

        if (json['success']) {
          if (json['remove'])
          $('[onclick*="cart.del(\''+product_id+'\',"]').prop('disabled', true);
          $('[dataminus="'+product_id+'"]').text(json['quantity']);
          //$('.breadcrumb').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i>' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

          $('#cart > button #cart-total').html(json['total']);


          //$('html, body').animate({ scrollTop: 0 }, 'slow');

          $('#cart ul').load('index.php?route=common/cart/info ul li');
        }
      },
      error: function(xhr, ajaxOptions, thrownError) {
        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
      }
    });
  });
</script>
<?php echo $footer; ?>
