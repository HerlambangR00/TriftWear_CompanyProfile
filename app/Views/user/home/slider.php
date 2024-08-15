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
                 <img class="lazyload" data-src="asset-user/images/<?= $slider->file_foto_slider;  ?>" <?php foreach ($profil as $perusahaan) :  ?> alt="<?= $perusahaan->nama_perusahaan; ?>" <?php endforeach; ?>>
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