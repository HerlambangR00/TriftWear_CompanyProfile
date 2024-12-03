<?= $this->extend('user/template/template') ?>
<?= $this->Section('content'); ?>

<!-- Header Start -->
<div class="page-heading text-center" style="display: flex; align-items: center; justify-content: center; background-image: url('<?= base_url('asset-user/images/hero_1.jpg'); ?>">
    <div class="container zoomIn animated">
        <h1 class="page-title"><?php echo lang('Blog.titleAboutUs'); ?></span></h1>
        <p class="text-white text-center">
            <a href="<?= base_url('/') ?>"><?php echo lang('Blog.headerHome'); ?></a>
            <span class="mx-2">/</span>
            <span style="color: #337ab7;"><?php echo lang('Blog.headerAbout'); ?></span>
        </p>
    </div>
</div>
<!-- Header End -->
<br>
<div class="section-home home-reasons">
    <div class="main-container">
        <div class="container">
            <?php foreach ($profil as $descper) : ?>
                <div class="row g-5 align-items-center flex-column flex-lg-row">
                    <div class="col-lg-5 col-md-6 wow fadeInUp">
                        <div class="position-relative h-100 d-flex justify-content-center">
                            <img data-src="/asset-user/images/<?= $descper->foto_utama; ?>"
                                alt="<?= $descper->nama_perusahaan; ?>"
                                class="img-responsive lazyload w-100 h-auto">
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6 wow fadeInUp">
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

<style>
    .section-home .row {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    /* Pada tampilan desktop, gambar dan teks kembali sejajar */
    @media (min-width: 992px) {
        .section-home .row {
            flex-direction: row;
        }
    }

    .section-home .img-responsive {
        max-width: 100%;
        height: auto;
        object-fit: cover;
    }
</style>


<?= $this->endSection('content'); ?>