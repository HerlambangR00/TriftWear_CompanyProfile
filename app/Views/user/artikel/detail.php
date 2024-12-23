<?= $this->extend('user/template/template') ?>
<?= $this->Section('content'); ?>

<style>
    .article-title {
        white-space: normal;
        word-wrap: break-word;
        overflow-wrap: break-word;
        width: 100%;
    }

    .card {
        background-color: white;
        margin-bottom: 15px;
        border-radius: 0.25rem;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .outer-card {

        padding: 15px;
        /* Adds some padding inside the outer card */
        border-radius: 0.25rem;
        background-color: #f9f9f9;
        /* Optional: Different background color for contrast */
    }

    .article-item {
        display: flex;
        height: 110px;
        overflow: hidden;
    }

    .article-image {
        width: 110px;
        height: 110px;
        object-fit: cover;
    }

    .article-content {
        display: flex;
        flex-direction: column;
        justify-content: center;
        flex: 1;
        padding: 0 1rem;
        white-space: normal;
        overflow: hidden;
        text-overflow: ellipsis;
    }

    a.h6.m-0.display-7 {
        font-size: 15px;
        font-weight: bold;
        color: #333;
        text-decoration: none;
    }

    a.h6.m-0.display-7:hover {
        color: #115c9b;
    }


    .news-detail {
        position: relative;
        width: 100%;
    }

    .news-image {
        width: 100%;
        height: auto;
        display: block;
        margin-bottom: 15px;
    }

    .content-overlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        padding: 1rem;
        background-color: white;

        z-index: 1;
    }

    .news-container {
        position: relative;
        background-color: white;
        padding: 1.5rem;
        border-radius: 0.25rem;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        z-index: 1;
        margin-top: -20px;
        transition: box-shadow 0.3s ease-in-out;
        margin-bottom: 50px;
    }

    .news-detail h1 {
        font-size: 2.5rem;
        font-weight: 700;
    }

    /* Additional styling for the Popular News cards */
    .popular-news-card {
        border-radius: 0.25rem;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    }

    .popular-news-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    .article-title {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        display: inline-block;
        max-width: 100%;
    }

    /* Show full title on mobile */
    @media (max-width: 767px) {
        .article-title {
            white-space: normal;
            text-overflow: initial;
        }
    }
</style>

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
            <span><?php echo lang('Blog.headerArticle');  ?></span>
        </p>
    </div>
</div>
<!-- Header End -->

<!-- News With Sidebar Start -->
<div class="container-fluid pt-5 mb-3">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <!-- News Detail Start -->
                <div class="position-relative mb-3 news-container">
                    <img class="news-image img-fluid w-100" src="<?= base_url('asset-user/images/' . $artikel->foto_artikel); ?>" alt="News Image">
                    <div class="news-detail bg-white p-4">
                        <div class="mb-3">
                            <p class="text-uppercase mb-3 text-body"><?= date('d F Y', strtotime($artikel->created_at)); ?></p>
                        </div>
                        <h1 class="display-5 mb-2 article-title"><?= session('lang') === 'id' ? strip_tags($artikel->judul_artikel) : strip_tags($artikel->judul_artikel_en); ?></h1>
                        <p class="fs-5"><?php if (lang('Blog.Languange') == 'en') {
                                echo $artikel->deskripsi_artikel_en;
                            } else {
                                echo $artikel->deskripsi_artikel;
                            } ?></p>
                    </div>
                </div>
                <!-- News Detail End -->
            </div>

            <div class="col-lg-4">
                <!-- Popular News Start -->

                <div class="section-title text-center">
                    <h2 class="title-style-2">Baca Juga<span class="title-under"></span></h2>
                </div>

                <div class="card mb-3">

                    <br>
                    <div class="bg-white border border-top-0 p-3">
                        <div class="outer-card">
                            <?php foreach ($artikel_lain as $artikel_item) : ?>
                                <div class="card popular-news-card mb-3">
                                    <div class="d-flex align-items-center article-item">
                                        <img class="img-fluid article-image" src="<?= base_url('asset-user/images/' . $artikel_item->foto_artikel); ?>" alt="">
                                        <div class="w-100 h-100 d-flex flex-column justify-content-center article-content">
                                            <div class="mb-2">
                                                <a class="text-body" href="<?= base_url(($locale !== '' ? $locale . '/' : '') . ($locale === 'en' ? 'articles' : 'artikel') . '/' . (($locale === 'en') ? $artikel_item->slug_en : $artikel_item->slug_in)) ?>" title="<?= $artikel_item->judul_artikel ?>">
                                                    <large><?= date('d F Y', strtotime($artikel_item->created_at)); ?></large>
                                                </a>
                                            </div>
                                            <a class="h6 m-0 display-7 article-title" href="<?= base_url(($locale !== '' ? $locale . '/' : '') . ($locale === 'en' ? 'articles' : 'artikel') . '/' . (($locale === 'en') ? $artikel_item->slug_en : $artikel_item->slug_in)) ?>" title="<?= $artikel_item->judul_artikel ?>">
                                                <?= $artikel_item->judul_artikel ?>
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
                <!-- Popular News End -->
            </div>

            <!-- Popular News End -->
        </div>
    </div>
</div>
<!-- News With Sidebar End -->

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const titles = document.querySelectorAll('.article-title');

        titles.forEach(title => {
            if (title.offsetWidth < title.scrollWidth) {
                // If the title is truncated, enable tooltip
                title.setAttribute('title', title.textContent);
            } else {
                // If the title is not truncated, remove the title attribute
                title.removeAttribute('title');
            }
        });
    });
</script>

<?= $this->endSection('content'); ?>