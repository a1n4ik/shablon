<?php echo $header; ?>
<section class="information-page">
  <div class="wrapper">
    <ul class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
    <h1 class="box-heading"><?php echo $heading_title; ?></h1>
    <?php echo $description; ?>
  </div>
</section>
<?php echo $footer; ?>