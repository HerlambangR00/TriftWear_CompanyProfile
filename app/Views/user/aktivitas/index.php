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
                <span class="title-under"></span>
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

<div class="our-team animate-onscroll fadeIn">
    <div class="container">
        <div class="row">
            <?php foreach ($tbaktivitas as $aktivitas) : ?>
                <div class="col-md-4 col-sm-6">
                    <div class="team-member">
                        <div class="thumnail">
                            <a href="<?= base_url('activities/detail/' . $aktivitas->id_aktivitas . '/' . url_title($aktivitas->nama_aktivitas_en) . '_' . url_title($aktivitas->nama_aktivitas_in)) ?>">
                                <img data-src="asset-user/images/<?= $aktivitas->foto_aktivitas ?>" alt="Gambar Produk" class="cause-img lazyload">
                            </a>
                        </div>
                        <h4 class="member-name">
                            <b>
                                <a href="<?= base_url('activities/detail/' . $aktivitas->id_aktivitas . '/' . url_title($aktivitas->nama_aktivitas_en) . '_' . url_title($aktivitas->nama_aktivitas_in)) ?>">
                                    <?php if (lang('Blog.Languange') == 'en') {
                                        echo $aktivitas->nama_aktivitas_en;
                                    } ?>
                                    <?php if (lang('Blog.Languange') == 'in') {
                                        echo $aktivitas->nama_aktivitas_in;
                                    } ?>
                                </a>
                            </b>
                        </h4>
                    </div> <!-- /.team-member -->
                </div>
            <?php endforeach ?>
        </div> <!-- /.row -->
    </div>
</div> <!-- /.product-causes -->
<br>
<br>

<?= $this->endSection('content'); ?>