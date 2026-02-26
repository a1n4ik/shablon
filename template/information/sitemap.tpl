<?php echo $header; ?>
<section class="sitemap-page">
  <div class="wrapper">
    <ul class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
    <h1 class="box-heading"><?php echo $heading_title; ?></h1>
    <div class="sitmap-row d-grid lg-col-2 md-col-2 sm-col-1 xs-col-1 row-gap-20 column-gap-20">
      <div class="col">
        <ul>
          <?php foreach ($categories as $category_1) { ?>
          <li><a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
            <?php if ($category_1['children']) { ?>
            <ul>
              <?php foreach ($category_1['children'] as $category_2) { ?>
              <li><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
                <?php if ($category_2['children']) { ?>
                <ul>
                  <?php foreach ($category_2['children'] as $category_3) { ?>
                  <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
                  <?php } ?>
                </ul>
                <?php } ?>
              </li>
              <?php } ?>
            </ul>
            <?php } ?>
          </li>
          <?php } ?>
        </ul>
      </div>
      <div class="col">
        <ul>
          <li><?php echo $text_information; ?>
            <ul>
              <?php foreach ($informations as $information) { ?>
              <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
              <?php } ?>
              <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</section>
<?php echo $footer; ?>