<?php
    include "./include/common/common.inc.php";
    //define all function

    function getParamFromUrl($url){
        $url_components = parse_url($url);
        parse_str($url_components['query'], $params);
        // echo "dandkdk ".$url_components;
        //var_dump($params);
        return $params;
    }

    

?>