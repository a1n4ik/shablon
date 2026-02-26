<?php echo $header; ?>
<section class="simple-page">
<div class="wrapper">
  <ul class="breadcrumb text-left">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><?php echo $error_warning; ?></div>
  <?php } ?>
  <h1 class="box-heading text-left"><?php echo $heading_title; ?></h1>