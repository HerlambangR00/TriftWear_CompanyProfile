<?= $this->extend('user/template/template') ?>
<?= $this->Section('content'); ?>

<!-- Header Start -->
<div class="page-heading-center text-center" style="display: flex; align-items: center; justify-content: center; background-image: url('<?= base_url('asset-user/images/hero_1.jpg'); ?>');">
    <div class="container zoomIn animated">
        <?php foreach ($profil as $perusahaan) : ?>
            <h1 class="page-title">
                <?php echo lang('Blog.titleOurproducts');
                if (!empty($perusahaan)) {
                    echo ' ' . $perusahaan->nama_perusahaan;
                } ?>
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
                <div class="row align-items-center mb-5 flex-column flex-lg-row">
                    <!-- Gambar produk -->
                    <div class="col-12 col-lg-6 mb-4 mb-lg-0">
                        <div class="d-flex justify-content-center align h-100">
                            <img class="img-responsive lazyload" data-src="/asset-user/images/<?= $tbproduk->foto_produk ?>" alt="<?php if (lang('Blog.Languange') == 'en') {
                                                                                                                                                    echo $tbproduk->nama_produk_en;
                                                                                                                                                } elseif (lang('Blog.Languange') == 'in') {
                                                                                                                                                    echo $tbproduk->nama_produk_in;
                                                                                                                                                } ?>" style="max-height: 100%; max-width: 100%; object-fit: cover;">
                        </div>
                    </div>
                    <!-- Teks produk -->
                    <div class="col-12 col-lg-6">
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

<style>
    .container .row {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    @media (min-width: 992px) {
        .container .row {
            flex-direction: row;
        }
    }

    .container img {
        max-width: 80%;
        max-height: 90%;
        object-fit: cover;
        margin-bottom: 20px;
    }

    @media (min-width: 992px) {
        .container img {
            margin-bottom: 0;
        }
    }
</style>

<?= $this->endSection('content'); ?>
