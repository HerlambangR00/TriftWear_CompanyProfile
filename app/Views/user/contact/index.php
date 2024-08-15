<?= $this->extend('user/template/template') ?>
<?= $this->Section('content'); ?>

<!-- Header Start -->
<div class="page-heading-center text-center" style="display: flex; align-items: center; justify-content: center; background-image: url('<?= base_url('asset-user/images/hero_1.jpg'); ?>"">
    <div class="container zoomIn animated">
        <?php foreach ($profil as $perusahaan) : ?>
            <h1 class="page-title">
                <?php echo lang('Blog.titleOurContact');
                if (!empty($perusahaan)) {
                    echo ' ' . $perusahaan->nama_perusahaan;
                } ?>
                <span class="title-under"></span>
            </h1>
        <?php endforeach ?>
        <p class="text-white text-center">
            <a href="<?= base_url('/') ?>"><?php echo lang('Blog.headerHome'); ?></a>
            <span class="mx-2">/</span>
            <span><?php echo lang('Blog.headerContact');  ?></span>
        </p>
    </div>
</div>
<!-- Header End -->

<div class="container py-3">
    <div class="row py-5">
        <div class="col-lg-7 pb-5 pb-lg-0 px-3 px-lg-5">
            <div class="map-container">
                <?php foreach ($profil as $maps) :  ?>
                    <?php echo $maps->link_maps ?>
                <?php endforeach;  ?>
            </div>
        </div>
        <div class="col-lg-5">
            <div class="row px-3">
                <div class="col-12 p-0">
                    <?php foreach ($profil as $desc) : ?>
                        <blockquote>
                            <p>
                                <?php if (lang('Blog.Languange') == 'en') {
                                    echo $desc->deskripsi_kontak_en;
                                } ?>
                                <?php if (lang('Blog.Languange') == 'in') {
                                    echo $desc->deskripsi_kontak_in;
                                } ?>
                            </p>
                        </blockquote>
                    <?php endforeach;  ?>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
<br>

<?= $this->endSection('content'); ?>