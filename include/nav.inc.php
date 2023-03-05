<?php
include "./include/common/common.inc.php";

//

$own = '';
if (array_key_exists('own', $_GET) == false || $own = null) {
    $husband_name = 'Hushband Name';
    $wife_name = 'Wife Name';
} else {
    $own = $_GET['own'];
    $couple = getInfoByOwn($own);
    $husband_name = $couple['husband_name'];
    $wife_name = $couple['wife_name'];
}
// 
?>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <a href="index.php?own=<?php echo $couple['own']; ?>" class="navbar-brand mx-auto mx-lg-0">
            <span><?php echo $husband_name; ?></span>
            <i class="bi-heart brand-icon"></i>
            <span><?php echo $wife_name; ?></span>
        </a>

        <div class="collapse navbar-collapse" id="navbarNav">
            <!-- list menu item -->
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link click-scroll" href="#section_home">Homepage</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link click-scroll" href="#section_infor_couple">Our Story</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link click-scroll" href="#section_info_event">The Wedding</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link click-scroll" href="#section_people_support">People</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link click-scroll" href="#section_gallery">Gallery</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link click-scroll" href="#section_form">Rsvp (Reply to invite)</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link click-scroll" href="#section_contact">Contact Us</a>
                </li>
            </ul>
        </div>

    </div>
</nav>