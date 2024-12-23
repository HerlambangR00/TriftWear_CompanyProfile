<?php
// Set default language to 'id'
$lang = session()->get('lang') ?? 'id';

// Get current URL
$current_url = uri_string();

// Extract the first segment to detect language
$lang_segment = explode('/', $current_url)[0]; // Detect 'id' or 'en'

// Define page links based on language
$homeLink = '';  // No trailing slash
$aboutLink = $lang_segment === 'en' ? 'about' : 'tentang';
$articleLink = $lang_segment === 'en' ? 'articles' : 'artikel';
$productLink = $lang_segment === 'en' ? 'product' : 'produk';
$activitiesLink = $lang_segment === 'en' ? 'activities' : 'aktivitas';
$contactLink = $lang_segment === 'en' ? 'contact' : 'kontak';

// Replace map for slugs (to be applied in dynamic content if needed)
$replace_map = [
    'tentang' => 'about',
    'artikel' => 'articles',
    'produk' => 'product',
    'aktivitas' => 'activities',
    'kontak' => 'contact'
];

// Define new language segment ('id' <-> 'en')
$new_lang_segment = ($lang_segment === 'en') ? 'id' : 'en';

// Remove language segment from current URL
$url_without_lang = substr($current_url, strlen($lang_segment) + 1);

// Only apply the translation logic if switching between different languages
if ($new_lang_segment !== $lang_segment) {
    // Switch segments based on the current language
    foreach ($replace_map as $indonesian_segment => $english_segment) {
        if ($lang_segment === 'en') {
            $url_without_lang = str_replace($english_segment, $indonesian_segment, $url_without_lang);
        } else {
            $url_without_lang = str_replace($indonesian_segment, $english_segment, $url_without_lang);
        } 
    }
}

// Rebuild the clean URL without trailing slashes
$clean_url = rtrim($new_lang_segment . '/' . ltrim($url_without_lang, '/'), '/');

// Define base URLs for the language switch
// If the language switch is the same as the current one, just return the same URL
$english_url = ($lang_segment === 'en') ? current_url() : base_url('en' . ($url_without_lang ? '/' . ltrim($url_without_lang, '/') : ''));
$indonesia_url = ($lang_segment === 'id') ? current_url() : base_url('id' . ($url_without_lang ? '/' . ltrim($url_without_lang, '/') : ''));
?>

<div class="navbar-main">
    <div class="container">
        <div class="navbar-header">
            <?php foreach ($profil as $header) :  ?>
                <a class="navbar-brand js-scroll-trigger" href="<?= base_url($lang . $homeLink) ?>"><img data-src="<?= base_url('asset-user/images/'); ?><?= $header->logo_perusahaan ?>" alt="<?= $header->nama_perusahaan ?>" style="max-height: 80px;" class="img-fluid lazyload"></a>
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
                <li class="<?= (current_url(true)->getSegment(1) == '') ? 'active' : '' ?>"><a href="<?= base_url($lang . $homeLink) ?>"><?php echo lang('Blog.headerHome'); ?></a></li>
                <li class="<?= (current_url(true)->getSegment(1) == 'about') ? 'active' : '' ?>"><a href="<?= base_url($lang . '/' . $aboutLink) ?>"><?php echo lang('Blog.headerAbout'); ?></a></li>
                <li class="<?= (current_url(true)->getSegment(1) == 'artikel') ? 'active' : '' ?>"><a href="<?= base_url($lang . '/' . $articleLink) ?>"><?php echo lang('Blog.headerArticle'); ?></a></li>
                
                <li class="<?= (current_url(true)->getSegment(1) == 'product') ? 'active' : '' ?>"><a href="<?= base_url($lang . '/' . $productLink) ?>"><?php echo lang('Blog.headerProducts'); ?></a></li>
                <li class="<?= (current_url(true)->getSegment(1) == 'activities') ? 'active' : '' ?>"><a href="<?= base_url($lang . '/' . $activitiesLink) ?>"><?php echo lang('Blog.headerActivities'); ?></a></li>
                <li class="<?= (current_url(true)->getSegment(1) == 'contact') ? 'active' : '' ?>"><a href="<?= base_url($lang . '/' . $contactLink) ?>"><?php echo lang('Blog.headerContact'); ?></a></li>
                <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><?php echo lang('Blog.headerLanguage'); ?></a>
                        <div class="dropdown-menu m-0">
                            <a href="<?= $indonesia_url ?>" class="dropdown-item">Indonesia</a>
                            <a href="<?= $english_url ?>" class="dropdown-item">English</a>
                        </div>
                    </li>
            </ul>
        </div> <!-- /#navbar -->
    </div> <!-- /.container -->
</div> <!-- /.navbar-main -->
</nav>
</header> <!-- /. main-header -->