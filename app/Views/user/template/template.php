<!DOCTYPE html>
<html class="no-js">

<head>
  <meta charset="utf-8">
  <title>
    <?php echo $Title; ?> | <?php foreach ($profil as $descper) : ?><?= $descper->nama_perusahaan; ?><?php endforeach; ?>
  </title>
  <?php foreach ($profil as $perusahaan) : ?>
    <link rel="shortcut icon" href="<?= base_url('asset-user/images/') ?><?= $perusahaan->favicon_website ?>">
  <?php endforeach; ?>
  <meta name="description" content="<?php echo $Meta; ?>" />
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Fonts -->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Dosis:400,700' rel='stylesheet' type='text/css'>

  <!-- Bootsrap -->
  <link rel="stylesheet" href="<?= base_url('asset-user') ?>/css/bootstrap.min.css">

  <!-- Font awesome -->
  <link rel="stylesheet" href="<?= base_url('asset-user') ?>/css/font-awesome.min.css">

  <!-- Owl carousel -->
  <link rel="stylesheet" href="<?= base_url('asset-user') ?>/css/owl.carousel.css">

  <!-- Template main Css -->
  <link rel="stylesheet" href="<?= base_url('asset-user') ?>/css/style.css">

  <!-- Modernizr -->
  <script src="<?= base_url('asset-user') ?>/js/modernizr-2.6.2.min.js"></script>

</head>

<body>

  <?= $this->include('user/layout/header'); ?>

  <!-- render halaman konten -->
  <?= $this->renderSection('content'); ?>

  <!-- footer -->
  <?= $this->include('user/layout/footer');  ?>

  <!-- Icon Whatsapp -->
  <div class="floating-container">
    <div class="element-container">
      <?php foreach ($profil as $iconwa) : ?>
        <a class="whats-app" href="<?= $iconwa->link_whatsapp; ?>" target="">
          <img src="<?= base_url('asset-user/images/whatsapp.png'); ?>" alt="Whatsapp" class="my-float" style="width: 60px; height:60px; padding: 10px; transition: background-color 0.3s ease-in-out;">
        </a>
      <?php endforeach ?>
    </div>
  </div>

  <!--  Scripts
    ================================================== -->
  <!-- jQuery -->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script>
    window.jQuery || document.write('<script src="assets/js/jquery-1.11.1.min.js"><\/script>')
  </script>

  <!-- Bootsrap javascript file -->
  <script src="<?= base_url('asset-user') ?>/js/bootstrap.min.js"></script>

  <!-- owl carouseljavascript file -->
  <script src="<?= base_url('asset-user') ?>/js/owl.carousel.min.js"></script>

  <!-- Template main javascript -->
  <script src="<?= base_url('asset-user') ?>/js/main.js"></script>
  <script src="<?= base_url('asset-user') ?>/js/lazysizes.min.js"></script>

  <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
  <script>
    (function(b, o, i, l, e, r) {
      b.GoogleAnalyticsObject = l;
      b[l] || (b[l] =
        function() {
          (b[l].q = b[l].q || []).push(arguments)
        });
      b[l].l = +new Date;
      e = o.createElement(i);
      r = o.getElementsByTagName(i)[0];
      e.src = '//www.google-analytics.com/analytics.js';
      r.parentNode.insertBefore(e, r)
    }(window, document, 'script', 'ga'));
    ga('create', 'UA-XXXXX-X');
    ga('send', 'pageview');
  </script>

</body>

</html>