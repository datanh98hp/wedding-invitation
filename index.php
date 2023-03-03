<?php include './include/head.inc.php'; ?>
<!-- <?php include './include/common/common.inc.php'; ?> -->
<?php include './lib/func.lib.php'; ?>
<?php
$own = $_GET['own'];
// $init_name1 = "Nguyễn Bích Ngọc";
// $init_name2 = "Nguyễn Văn Bình";
$params = [];
$params =  getParamsFromUrl($GLOBALS['actual_link'] . "?own=" . $own);
// echo $params['own'];
// var_dump(checkOwnExist('0869029018'));
// exit();
?>
<script>
    function getCurrentURL() {
        return window.location.href
    }

    function getParamFromUrl(url, variable) {
        let urlInit = url;
        const urlParams = new URL(urlInit).searchParams;
        //get param
        const value = urlParams.get(variable); // 1
        return value;
    }

    function checkParamExistUrl(url, paramCheck) {
        const urlParams = new URLSearchParams(url);
        if (urlParams.has(paramCheck)) return true;
    }

</script>

<body>
    <section class="preloader">
        <div class="spinner">
            <span class="spinner-rotate">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" />
                </svg>
            </span>
        </div>
    </section>
    <!--  -->
    <?php include './include/nav.inc.php'; ?>
    <main>
        <?php include './include/header-content.inc.php' ?>

        <!--  -->
        <?php include './include/main/main-1.inc.php'; ?>
        <!--  -->
        <?php include './include/main/main-2.inc.php'; ?>
        <!--  -->
        <?php include './include/main/main-3.inc.php'; ?>
        <!--  -->
        <?php include './include/main/main-4.inc.php'; ?>
        <!--  -->
        <?php include './include/main/main-5.inc.php'; ?>
        <!--  -->
        <?php include './include/main/main-6.inc.php'; ?>
        <!--  -->
    </main>
    <?php include './include/footer.inc.php'; ?>

    <?php include './include/js.inc.php'; ?>

</body>

</html>