<?= $this->extend('user/template/template') ?>
<?= $this->Section('content'); ?>

<!-- Header Start -->
<div class="page-heading text-center" style="display: flex; align-items: center; justify-content: center; background-image: url('<?= base_url('asset-user/images/hero_1.jpg'); ?>">
    <div class="container zoomIn animated">
        <h1 class="page-title"><?php echo lang('Blog.titleAboutUs'); ?><span class="title-under"></span></h1>
        <p class="text-white text-center">
            <a href="<?= base_url('/') ?>"><?php echo lang('Blog.headerHome'); ?></a>
            <span class="mx-2">/</span>
            <span><?php echo lang('Blog.headerAbout'); ?></span>
        </p>
    </div>
</div>
<!-- Header End -->
<br>
<div class="section-home home-reasons">
    <div class="main-container">
        <div class="container">
            <?php foreach ($profil as $descper) : ?>
                <div class="row g-5 align-items-center">
                    <div class="col-lg-5 wow fadeInUp">
                        <div class="position-relative h-100 d-flex justify-content-center">
                            <img data-src="asset-user/images/<?= $descper->foto_utama; ?>" <?php foreach ($profil as $perusahaan) :  ?>alt="<?= $perusahaan->nama_perusahaan; ?>" <?php endforeach; ?> class="img-responsive lazyload">
                        </div>
                    </div>
                    <div class="col-lg-7 wow fadeInUp">
                        <h2 class="title-style-2"><?php echo lang('Blog.titleAboutUs') ?><span class="title-under"></span></h2>
                        <h1 class="mb-4"><?= $descper->nama_perusahaan; ?></h1>
                        <p class="mb-4">
                            <?php if (lang('Blog.Languange') == 'en') {
                                echo $descper->deskripsi_perusahaan_en;
                            } ?>
                            <?php if (lang('Blog.Languange') == 'in') {
                                echo $descper->deskripsi_perusahaan_in;
                            } ?>
                        </p>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
    </div>
</div>
<!-- /.about-reasons -->

<?= $this->endSection('content'); ?>