<?php
include "./include/common/common.inc.php";

//
$own = $_GET['own'];

$couple = getInfoByOwn($own);

?>

<footer class="site-footer">
    <div class="container">
        <div class="row">

            <div class="col-lg-3 col-12 mx-auto">
                <a href="index.php" class="navbar-brand mx-auto mx-lg-0">
                    <span> <?php echo $couple['husband_name']; ?></span>
                    <i class="bi-heart brand-icon"></i>
                    <span> <?php echo $couple['wife_name']; ?></span>
                </a>
            </div>
        </div>
    </div>
</footer>