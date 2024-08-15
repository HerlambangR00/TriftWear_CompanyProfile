<?= $this->extend('user/template/template') ?>
<?= $this->Section('content'); ?>

<!-- Header Start -->
<div class="page-heading-center text-center" style="display: flex; align-items: center; justify-content: center; background-image: url('<?= base_url('asset-user/images/hero_1.jpg'); ?>"">
    <div class="container zoomIn animated">
        <?php foreach ($profil as $perusahaan) : ?>
            <h1 class="page-title">
                <?php echo lang('Blog.titleOurproducts');
                if (!empty($perusahaan)) {
                    echo ' ' . $perusahaan->nama_perusahaan;
                } ?>
                <span class="title-under"></span>
            </h1>
        <?php endforeach ?>
        <p class="text-white text-center">
            <a href="<?= base_url('/') ?>"><?php echo lang('Blog.headerHome'); ?></a>
            <span class="mx-2">/</span>
            <span><?php echo lang('Blog.headerProducts');  ?></span>
        </p>
    </div>
</div>
<!-- Header End -->

<div class="section-home home-reasons">
    <div class="main-container">
        <div class="container">
            <?php foreach ($profil as $descper) : ?>
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow fadeInUp">
                        <div class="position-relative h-100 d-flex justify-content-center">
                            <img class="img-responsive lazyload" data-src="/asset-user/images/<?= $tbproduk->foto_produk ?>" alt="<?php if (lang('Blog.Languange') == 'en') {
                                                                                                                                        echo $tbproduk->nama_produk_en;
                                                                                                                                    } ?>
                                    <?php if (lang('Blog.Languange') == 'in') {
                                        echo $tbproduk->nama_produk_in;
                                    } ?>">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp">
                        <h2 class="title-style-2">
                            <b>
                                <?php if (lang('Blog.Languange') == 'en') {
                                    echo $tbproduk->nama_produk_en;
                                } elseif (lang('Blog.Languange') == 'in') {
                                    echo $tbproduk->nama_produk_in;
                                } ?>
                            </b>
                            <span class="title-under"></span>
                        </h2>
                        <p class="mb-4" style="font-size: 18px;">
                            <?php if (lang('Blog.Languange') == 'en') {
                                echo $tbproduk->deskripsi_produk_en;
                            } elseif (lang('Blog.Languange') == 'in') {
                                echo $tbproduk->deskripsi_produk_in;
                            } ?>
                        </p>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
    </div>
</div>
<!-- /.detail-product-reasons -->

<?= $this->endSection('content'); ?>