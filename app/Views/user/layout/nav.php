<div class="navbar-main">
    <div class="container">
        <div class="navbar-header">
            <?php foreach ($profil as $header) :  ?>
                <a class="navbar-brand js-scroll-trigger" href="<?= base_url('/') ?>"><img data-src="<?= base_url('asset-user/images/'); ?><?= $header->logo_perusahaan ?>" alt="<?= $header->nama_perusahaan ?>" style="max-height: 80px;" class="img-fluid lazyload"></a>
            <?php endforeach ?>

            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div id="navbar" class="navbar-collapse collapse pull-right">
            <ul class="nav navbar-nav">
                <li class="<?= (current_url(true)->getSegment(1) == '') ? 'active' : '' ?>"><a href="<?= base_url('/') ?>"><?php echo lang('Blog.headerHome'); ?></a></li>
                <li class="<?= (current_url(true)->getSegment(1) == 'about') ? 'active' : '' ?>"><a href="<?= base_url('/about') ?>"><?php echo lang('Blog.headerAbout'); ?></a></li>
                <li class="<?= (current_url(true)->getSegment(1) == 'artikel') ? 'active' : '' ?>"><a href="<?= base_url('/artikel') ?>"><?php echo lang('Blog.headerArticle'); ?></a></li>
                
                <li class="<?= (current_url(true)->getSegment(1) == 'product') ? 'active' : '' ?>"><a href="<?= base_url('/product') ?>"><?php echo lang('Blog.headerProducts'); ?></a></li>
                <li class="<?= (current_url(true)->getSegment(1) == 'activities') ? 'active' : '' ?>"><a href="<?= base_url('/activities') ?>"><?php echo lang('Blog.headerActivities'); ?></a></li>
                <li class="<?= (current_url(true)->getSegment(1) == 'contact') ? 'active' : '' ?>"><a href="<?= base_url('/contact') ?>"><?php echo lang('Blog.headerContact'); ?></a></li>
                <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><?php echo lang('Blog.headerLanguage'); ?></a>
                        <div class="dropdown-menu m-0">
                            <a href="<?= site_url('lang/in') ?>" class="dropdown-item">Indonesia</a>
                            <a href="<?= site_url('lang/en') ?>" class="dropdown-item">English</a>
                        </div>
                    </li>
            </ul>
        </div> <!-- /#navbar -->
    </div> <!-- /.container -->
</div> <!-- /.navbar-main -->
</nav>
</header> <!-- /. main-header -->