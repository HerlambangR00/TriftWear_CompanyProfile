<?= $this->extend('user/template/template') ?>
<?= $this->Section('content'); ?>

<!-- Header Start -->
<div class="page-heading-center text-center" style="display: flex; align-items: center; justify-content: center; background-image: url('<?= base_url('asset-user/images/hero_1.jpg'); ?>">
    <div class="container zoomIn animated">
        <?php foreach ($profil as $perusahaan) : ?>
            <h1 class="page-title">
                <?php echo lang('Blog.titleActivities');
                if (!empty($perusahaan)) {
                    echo ' ' . $perusahaan->nama_perusahaan;
                } ?>
            </h1>
        <?php endforeach ?>
        <p class="text-white text-center">
            <a href="<?= base_url('/') ?>"><?php echo lang('Blog.headerHome'); ?></a>
            <span class="mx-2">/</span>
            <span><?php echo lang('Blog.headerActivities');  ?></span>
        </p>
    </div>
</div>
<!-- Header End -->

<div class="section-home home-reasons">
    <div class="main-container">
        <div class="container">
            <?php foreach ($profil as $descper) : ?>
                <div class="row align-items-center mb-5 flex-column-reverse flex-lg-row">
                    <!-- Teks aktivitas -->
                    <div class="col-lg-6 col-12 mb-4 mb-lg-0" style="margin-right: 0;">
                        <h2 class="title-style-2">
                            <b>
                                <?php if (lang('Blog.Languange') == 'en') {
                                    echo $tbaktivitas->nama_aktivitas_en;
                                } elseif (lang('Blog.Languange') == 'in') {
                                    echo $tbaktivitas->nama_aktivitas_in;
                                } ?>
                            </b>
                            <span class="title-under"></span>
                        </h2>
                        <p class="mb-4" style="font-size: 18px;">
                            <?php if (lang('Blog.Languange') == 'en') {
                                echo $tbaktivitas->deskripsi_aktivitas_en;
                            } elseif (lang('Blog.Languange') == 'in') {
                                echo $tbaktivitas->deskripsi_aktivitas_in;
                            } ?>
                        </p>
                    </div>
                    <!-- Gambar aktivitas -->
                    <div class="col-lg-6 col-12">
                        <div class="d-flex justify-content-center h-100">
                            <img class="img-responsive lazyload" data-src="/asset-user/images/<?= $tbaktivitas->foto_aktivitas ?>" alt="Image placeholder">
                        </div>
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
        align-items: center;
    }

    .container img {
        max-width: 100%;
        max-height: 100%;
        object-fit: cover;
    }

    @media (max-width: 991px) {
        .row.align-items-center {
            flex-direction: column-reverse;
        }

        .container img {
            margin-bottom: 20px;
        }
    }
</style>

<?= $this->endSection('content'); ?>
