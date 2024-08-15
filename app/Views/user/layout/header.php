<!-- <header class="main-header">
    <nav class="navbar navbar-static-top">
        <div class="navbar-top">
            <div class="container">
                <?php foreach ($profil as $header) :  ?>
                    <div class="row">
                        <div class="col-sm-6 col-xs-12">
                            <ul class="list-unstyled list-inline header-contact">
                                <li><i class="fa fa-phone"></i><a href="tel:"> <?= $header->no_hp; ?></a> </li>
                                <li><i class="fa fa-envelope"></i><a href="mailto:"> <?= $header->email; ?></a> </li>
                            </ul> <!-- /.header-contact  -->
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
        <?= $this->include('user/layout/nav'); ?> 