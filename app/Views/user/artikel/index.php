<?= $this->extend('user/template/template') ?>
<?= $this->Section('content'); ?>

<!-- Header Start -->
<div class="page-heading-center text-center" style="display: flex; align-items: center; justify-content: center; background-image: url('<?= base_url('asset-user/images/hero_1.jpg'); ?>">
    <div class="container zoomIn animated">
        <?php foreach ($profil as $perusahaan) : ?>
            <h1 class="page-title">
                <?php echo lang('Blog.titleOurarticle');
                if (!empty($perusahaan)) {
                    echo ' ' . $perusahaan->nama_perusahaan;
                } ?>

            </h1>
        <?php endforeach ?>
        <p class="text-white text-center">
            <a href="<?= base_url('/') ?>"><?php echo lang('Blog.headerHome'); ?></a>
            <span class="mx-2">/</span>
            <span style="color: #337ab7;"><?php echo lang('Blog.headerArticle');  ?></span>
        </p>
    </div>
</div>
<!-- Header End -->
<!-- News With Sidebar Start -->
<div class="container-fluid mt-5 pt-3">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2 class="title-style-2"><?php echo lang('Blog.titleOurarticle') ?><span class="title-under"></span></h2>
                </div>
            </div>
        </div>

        <div class="row">
            <?php foreach ($artikelterbaru as $row) : ?>
                <div class="col-lg-4 mb-4">
                    <a href="<?= base_url('/artikel/detail/' . $row->id_artikel) ?>" class="text-decoration-none">
                        <div class="card h-100 shadow-sm border-0">
                            <img class="card-img-top img-fluid" src="<?= base_url('asset-user/images/' . $row->foto_artikel); ?>" alt="Artikel Image" loading="lazy">
                            <div class="card-body">
                                <div class="mb-2 text-muted small">
                                    <i class="far fa-calendar-alt"></i> <?= date('d F Y', strtotime($row->created_at)); ?>
                                </div>
                                <h5 class="card-title text-dark">
                                    <?= strip_tags($row->judul_artikel) ?>
                                </h5>
                                <p class="card-text text-muted"><?= substr(strip_tags($row->deskripsi_artikel), 0, 60) ?>...</p>
                            </div>
                        </div>
                    </a>
                </div>
            <?php endforeach; ?>
        </div>
    </div>

    <style>
        .card {
            border-radius: 8px;
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }

        .card-img-top {
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
            width: 100%;
            /* Agar gambar mengikuti lebar card */
            height: auto;
            /* Mempertahankan rasio aspek asli gambar */
        }

        .card-body {
            padding: 20px;
        }

        .card-title {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .card-text {
            font-size: 14px;
            color: #6c757d;
        }

        .small {
            font-size: 12px;
        }

        .section-title h5 {
            font-weight: 700;
        }
    </style>
</div>
<?= $this->endSection('content'); ?>