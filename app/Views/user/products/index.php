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


<div class="section-home our-causes animate-onscroll fadeIn">
    <div class="container">
        <div class="row">
            <?php foreach ($tbproduk as $produk) : ?>
                <div class="col-md-4 col-sm-6">
                    <div class="cause">
                        <a href="<?= base_url('product/detail/' . $produk->id_produk . '/' . url_title($produk->nama_produk_en) . '_' . url_title($produk->nama_produk_in)) ?>">
                            <img class="cause-img lazyload" data-src="asset-user/images/<?= $produk->foto_produk; ?>" alt="<?php if (lang('Blog.Languange') == 'en') {
                                                                                                                                echo $produk->nama_produk_en;
                                                                                                                            } ?>
                                    <?php if (lang('Blog.Languange') == 'in') {
                                        echo $produk->nama_produk_in;
                                    } ?>">
                        </a>
                        <div class="btn-holder text-center">
                            <h4 class="cause-title">
                                <a href="<?= base_url('product/detail/' . $produk->id_produk . '/' . url_title($produk->nama_produk_en) . '_' . url_title($produk->nama_produk_in)) ?>" class="btn btn-primary"> <?php if (lang('Blog.Languange') == 'en') {
                                                                                                                                                                                                                        echo $produk->nama_produk_en;
                                                                                                                                                                                                                    } ?>
                                    <?php if (lang('Blog.Languange') == 'in') {
                                        echo $produk->nama_produk_in;
                                    } ?>
                                </a>
                            </h4>
                        </div>
                    </div> <!-- /.cause -->
                </div>
            <?php endforeach ?>
        </div>
    </div>

</div> <!-- /.product-causes -->

<?= $this->endSection('content'); ?>