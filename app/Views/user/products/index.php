<?= $this->extend('user/template/template') ?>
<?= $this->Section('content'); ?>

<!-- Header Start -->
<div class="page-heading-center text-center" style="display: flex; align-items: center; justify-content: center; background-image: url('<?= base_url('asset-user/images/hero_1.jpg'); ?>">
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
            <span style="color: #337ab7;"><?php echo lang('Blog.headerProducts');  ?></span>
        </p>
    </div>
</div>
<!-- Header End -->


<div class="section-home our-causes animate-onscroll fadeIn">
    <div class="container">
    <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2 class="title-style-2"><?php echo lang('Blog.btnOurproducts') ?><span class="title-under"></span></h2>
                </div>
            </div>
        <div class="row">
            <?php foreach ($tbproduk as $produk) : ?>
                <div class="col-md-4 col-sm-6">
                    <div class="cause card">
                        <a href="<?= base_url('product/detail/' . $produk->id_produk . '/' . url_title($produk->nama_produk_en) . '_' . url_title($produk->nama_produk_in)) ?>">
                            <img class="cause-img card-img-top lazyload" data-src="asset-user/images/<?= $produk->foto_produk; ?>" alt="<?php if (lang('Blog.Languange') == 'en') {
                                                                                                                                            echo $produk->nama_produk_en;
                                                                                                                                        } ?>
                                    <?php if (lang('Blog.Languange') == 'in') {
                                        echo $produk->nama_produk_in;
                                    } ?>">
                        </a>
                        <div class="card-body text-center">
                            <a href="<?= base_url('product/detail/' . $produk->id_produk . '/' . url_title($produk->nama_produk_en) . '_' . url_title($produk->nama_produk_in)) ?>" class="btn btn-primary">
                                <?php if (lang('Blog.Languange') == 'en') {
                                    echo $produk->nama_produk_en;
                                } ?>
                                <?php if (lang('Blog.Languange') == 'in') {
                                    echo $produk->nama_produk_in;
                                } ?>
                            </a>
                        </div>
                    </div> <!-- /.cause -->
                </div>
            <?php endforeach ?>
        </div>
    </div>
</div> <!-- /.product-causes -->
<style>
    .cause {
        border-radius: 8px;
        box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        background-color: #fff;
    }

    .cause img {
        width: 100%;
        height: auto;
        object-fit: cover;
    }

    .card-body {
        padding: 15px;
        padding-top: 10px;
    }

    .card-text {
        font-size: 14px;
        color: #333;
        margin-bottom: 15px;
    }

    .btn-primary {
        background: #115c9b;
        border: none;
        padding: 8px 20px;
        /* Mengurangi padding */
        border: 1px solid transparent;
        border-radius: 4px;
        /* Mengurangi border-radius */
        transition: all 0.3s;
        min-width: 120px;
        /* Mengurangi lebar minimum */
        display: inline-block;
        margin-top: auto;
        width: 100%;
        height: 40px;
        /* Mengurangi tinggi tombol */
    }

    .btn-primary:hover {
        background: #fff;
        color: #1f76bd;
        border: 1px solid #1f76bd;
        text-decoration: none;
    }

    @media (max-width: 576px) {
        .col-sm-6 {
            flex: 0 0 100%;
            max-width: 100%;
        }
    }
</style>

<?= $this->endSection('content'); ?>