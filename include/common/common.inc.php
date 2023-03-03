<?php 
include "./config/db_config.php";

// all variable global
$my_ip = $_SERVER['REMOTE_ADDR'];

//
$actual_link =  $_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF'];
/// set global value
$GLOBALS['my_ip'] = $my_ip;
$GLOBALS['connect'] = $connect;
// 
$GLOBALS['wife_name'] = $wife_name;
$GLOBALS['husband_name'] = $husband_name;
$GLOBALS['actual_link'] = $actual_link;

?>