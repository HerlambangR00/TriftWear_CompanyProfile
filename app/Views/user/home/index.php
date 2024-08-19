<?= $this->extend('user/template/template') ?>
<?= $this->Section('content'); ?>

<?= $this->include('user/home/slider'); ?>
<!-- END services -->

<div class="section-home home-reasons">
    <div class="about-title">
        <?php foreach ($profil as $title) :  ?>
            <p class="title-text"><?= $title->title_website; ?></p>
        <?php endforeach ?>
    </div>
    <div class="main-container">
        <div class="container">
            <?php foreach ($profil as $descper) : ?>

                <div class="row g-5 align-items-center">
                    <div class="col-lg-7 wow fadeInUp d-flex flex-column justify-content-center text-left">
                        <h1 class="mb-5"><?= $descper->nama_perusahaan; ?></h1> <!-- Mengurangi margin bawah -->
                        <p class="mb-2">
                            <?php if (lang('Blog.Languange') == 'en') {
                                echo character_limiter($descper->deskripsi_perusahaan_en, 700);
                            } ?>
                            <?php if (lang('Blog.Languange') == 'in') {
                                echo character_limiter($descper->deskripsi_perusahaan_in, 700);
                            } ?>
                        </p> <!-- Mengurangi margin bawah -->
                        <a href="<?= base_url('/about') ?>" class="btn btn-primary"> <?php echo lang('Blog.btnReadmore'); ?> </a>
                    </div>
                    <div class="col-lg-5 wow fadeInUp d-flex justify-content-center align-items-center">
                        <img data-src="asset-user/images/<?= $descper->foto_utama; ?>" alt="<?= $descper->nama_perusahaan; ?>" class="img-responsive lazyload">
                    </div>
                </div>
            <?php endforeach ?>
        </div>
    </div>

    <style>
        /* Additional styles for alignment */
        .main-container .container {
            padding: 20px;
        }

        .row {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .col-lg-5 {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .col-lg-5 img {
            max-width: 100%;
            height: auto;
        }

        .col-lg-7 {
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: left;
        }

        .btn.btn-primary {
            align-self: flex-start;
            margin-top: 20px;
            border-radius: 5px;
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .row {
                flex-direction: column;
            }

            .col-lg-5,
            .col-lg-7 {
                width: 100%;
            }

            .col-lg-5 img {
                width: 100%;
                height: auto;
            }

            .col-lg-7 {
                text-align: left;
                margin-bottom: 20px;
            }

            .btn.btn-primary {
                margin-top: 20px;
                margin-left: 50px;
            }
        }

        /* CSS untuk card produk yang lebih kecil */
        .card {
            border: none;
            border-radius: 8px;
            /* Mengurangi border-radius */
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
            /* Mengurangi shadow */
            overflow: hidden;
            margin-bottom: 15px;
            /* Mengurangi margin bawah */
            display: flex;
            flex-direction: column;
            height: 100%;
            max-width: 300px;
            /* Menambahkan batasan lebar card */
        }

        .card-img-top {
            width: 100%;
            height: 100%;
            /* Mengatur tinggi gambar */
            object-fit: cover;
        }

        .card-body {
            padding: 12px;
            /* Mengurangi padding */
            text-align: center;
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .card-title {
            margin-bottom: 10px;
            /* Mengurangi margin bawah judul */
            font-size: 20px;
            /* Mengurangi ukuran font judul */
        }

        .card p {
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            line-height: 1.4;
            max-height: calc(1.4em * 3);
            /* Height for 3 lines of text */
            margin-bottom: 15px;
            /* Mengurangi margin bawah deskripsi */
            font-size: 14px;
            /* Mengurangi ukuran font deskripsi */
        }

        .card-body .btn2 {
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

        .card-body .btn2:hover {
            background: #fff;
            color: #1f76bd;
            border: 1px solid #1f76bd;
            text-decoration: none;
        }
    </style>


</div>
<!-- /.about-reasons -->

<?php
// Fungsi untuk membandingkan dua objek berdasarkan ID
function compareById($a, $b)
{
    return $b->id_produk - $a->id_produk;
}

// Mengurutkan array berdasarkan ID
usort($tbproduk, 'compareById');

// Mengambil 3 elemen pertama (data terbaru)
$latestProducts = array_slice($tbproduk, 0, 3);
?>

<div class="section-home our-causes animate-onscroll fadeIn">
    <div class="container">
        <h2 class="title-style-1"><?php echo lang('Blog.btnOurproducts'); ?><span class="title-under"></span></h2>
        <div class="row">
            <?php foreach ($latestProducts as $produk) : ?>
                <div class="col-md-4" style="align-items: center; display: flex; justify-content: center;">
                    <div class="card">
                        <a href="<?= base_url('product/detail/' . $produk->id_produk . '/' . url_title($produk->nama_produk_en) . '_' . url_title($produk->nama_produk_in)) ?>">
                            <img class="card-img-top lazyload" data-src="asset-user/images/<?= $produk->foto_produk; ?>" alt="<?php if (lang('Blog.Languange') == 'en') {
                                                                                                                                    echo $produk->nama_produk_en;
                                                                                                                                } else {
                                                                                                                                    echo $produk->nama_produk_in;
                                                                                                                                } ?>">
                        </a>
                        <div class="card-body text-center">
                            <p class="mb-4" style="font-size: 18px;">
                                <?php if (lang('Blog.Languange') == 'en') {
                                    echo $produk->deskripsi_produk_en;
                                } else {
                                    echo $produk->deskripsi_produk_in;
                                } ?>
                            </p>
                            <h4 class="card-title">
                                <a href="<?= base_url('product/detail/' . $produk->id_produk . '/' . url_title($produk->nama_produk_en) . '_' . url_title($produk->nama_produk_in)) ?>" class="btn2 btn-primary">
                                    <?php if (lang('Blog.Languange') == 'en') {
                                        echo $produk->nama_produk_en;
                                    } else {
                                        echo $produk->nama_produk_in;
                                    } ?>
                                </a>
                            </h4>

                        </div>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
    </div>
</div>


<?php
// Shuffle the array to randomize the articles
shuffle($artikelterbaru);

// Slice the array to get only the first 3 articles
$artikelterbaru = array_slice($artikelterbaru, 0, 3);
?>

<div class="container-fluid mt-5 pt-3">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2 class="title-style-1"><?php echo lang('Blog.titleOurarticle') ?><span class="title-under"></span></h2>
                </div>
            </div>
        </div>

        <div class="row justify-content-center">
            <?php foreach ($artikelterbaru as $row) : ?>
                <div class="col-lg-4 mb-4 d-flex align-items-stretch">
                    <a href="<?= base_url('/artikel/detail/' . $row->id_artikel) ?>" class="text-decoration-none">
                        <div class="card1 h-100 shadow-sm border-0">
                            <img class="card1-img-top img-fluid" src="<?= base_url('asset-user/images/' . $row->foto_artikel); ?>" alt="Artikel Image" loading="lazy">
                            <div class="card1-body">
                                <div class="mb-2 text-muted small">
                                    <i class="far fa-calendar-alt"></i> <?= date('d F Y', strtotime($row->created_at)); ?>
                                </div>
                                <h5 class="card1-title text-dark">
                                    <?= strip_tags($row->judul_artikel) ?>
                                </h5>
                                <p class="card1-text text-muted"><?= substr(strip_tags($row->deskripsi_artikel), 0, 60) ?>...</p>
                            </div>
                        </div>
                    </a>
                </div>
            <?php endforeach; ?>
        </div>
    </div>

    <style>
        .card1 {
            border-radius: 8px;
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .card1:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }

        .card1-img-top {
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
            width: 100%;
            /* Agar gambar mengikuti lebar card */
            height: auto;
            /* Mempertahankan rasio aspek asli gambar */
        }

        .card1-body {
            padding: 20px;
        }

        .card1-title {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .card1-text {
            font-size: 14px;
            color: #6c757d;
        }

        .small {
            font-size: 12px;
        }

        .section-title h5 {
            font-weight: 700;
        }
        
        .row {
            margin-left: 0;
            margin-right: 0;
        }
        
        .container {
            
            justify-content: center;
            flex-wrap: wrap;
        }
    </style>
</div>

<?= $this->endSection('content') ?>