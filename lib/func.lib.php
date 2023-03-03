<?php

   include "./include/common/common.inc.php";

    //define all function
    function getParamsFromUrl($url){
        $url_components = parse_url($url);
        parse_str($url_components['query'], $params);
        // echo "dandkdk ".$url_components;
        //var_dump($params);
        return $params;
    }

    function checkOwnExist($own){

    $sql_own = "SELECT own FROM couple_infor where own = '".$own."' ";
    $result  =  mysqli_query($GLOBALS['connect'],$sql_own);
    $num     = mysqli_num_rows($result);
        if($num!=1){ 
            // not exist. That can new with own
            return false;
        }else{
            // exist. That can't new own
            return true;
        }
    }

    function getInfoByOwn($own){ //only own for couple item

        $sql_own = "SELECT * FROM couple_infor where own = '".$own."' ";
        $result  =  mysqli_query($GLOBALS['connect'],$sql_own);
        $num     = mysqli_num_rows($result);



        if($num!=0){ // own exist
            $row = mysqli_fetch_array($result);
            return $row;
        }
        return [];
    }

    function  getInfoServiceContact(){
        $sql_contact = "SELECT * FROM infor_provider_services where status = 'active' order by rank limit 1 ";
        $result  =  mysqli_query($GLOBALS['connect'], $sql_contact);
        $num     = mysqli_num_rows($result);
        if($num !=0){
            $row = mysqli_fetch_array($result);
            return $row;
        }
        return [];
    }


    

?>