<!-- Slider
    ================================================== -->
    <div id="homeCarousel" class="carousel slide carousel-home" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <?php foreach ($tbslider as $key => $slider) : ?>
            <li data-target="#homeCarousel" data-slide-to="<?= $key ?>" <?= $key === 0 ? 'class="active"' : '' ?>></li>
        <?php endforeach; ?>
    </ol>

    <div class="carousel-inner" role="listbox">
        <?php foreach ($tbslider as $key => $slider) : ?>
            <div class="item <?= $key === 0 ? 'active' : '' ?>">
                <img class="lazyload" data-src="asset-user/images/<?= $slider->file_foto_slider; ?>" <?php foreach ($profil as $perusahaan) : ?> alt="<?= $perusahaan->nama_perusahaan; ?>" <?php endforeach; ?>>
            </div> <!-- /.item -->
        <?php endforeach; ?>
    </div>

    <a class="left carousel-control" href="#homeCarousel" role="button" data-slide="prev">
        <span class="fa fa-angle-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#homeCarousel" role="button" data-slide="next">
        <span class="fa fa-angle-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->

<style>
.carousel-home {
    position: relative;
    width: 100%;
    height: 1144px; /* Set the height of the carousel */
}

.carousel-inner {
    position: relative;
    width: 100%;
    height: 100%;
}

.carousel-inner .item {
    height: 100%; /* Ensure items fill the container */
}

.carousel-home img {
    width: 100%;
    height: 100%;
    object-fit: cover; /* Ensure images cover the container without distortion */
}

.carousel-home .carousel-control {
    background: #1f76bd;
    height: 80px;
    width: 40px;
    top: 50%;
    margin-top: -40px;
    -moz-transition: width 0.3s;
    -o-transition: width 0.3s;
    -webkit-transition: width 0.3s;
    transition: width 0.3s;
}

.carousel-home .carousel-control .fa {
    font-size: 2.5em;
    padding-top: 12px;
}

.carousel-home .carousel-control:hover {
    width: 50px;
}

.carousel-home .carousel-caption {
    top: 50%;
    bottom: auto;
    transform: translateY(-50%);
}

.carousel-home .carousel-title {
    color: #fff;
    font-family: "Dosis", sans-serif;
    font-size: 50px;
    font-weight: bold;
    text-transform: uppercase;
}

.carousel-home .carousel-subtitle {
    font-size: 25px;
    text-transform: uppercase;
}

.carousel-home .btn {
    margin-top: 30px;
}

.section-home {
    margin: 10px 0;
}
</style>
