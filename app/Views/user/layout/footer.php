<footer class="main-footer">
    <div class="footer-main">
        <div class="container">
            <div class="row">
                <div class="text-center text-md-start mb-3 mb-md-0">
                    <p>Copyright &copy;<script>
                            document.write(new Date().getFullYear());
                        </script>. <?php foreach ($profil as $footer) : ?><?= $footer->teks_footer; ?><?php endforeach; ?>
                    </p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</footer> <!-- main-footer -->