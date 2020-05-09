<?php

$DATABASE_HOST = 'sql212.freecluster.eu';
$DATABASE_USER = 'epiz_25041824';
$DATABASE_PASS = 'XEXxRwaCxjJDO';
$DATABASE_NAME = 'epiz_25041824_test';
/*
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = 'accounts';
*/
// Create connection
$connection = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);


$query1 = "SELECT phone_no FROM phone_info";
    $query_run1 = mysqli_query($connection, $query1);
    
    
    while ($rows1 = mysqli_fetch_array($query_run1))
    {   
        $phone[] = $rows1[0];  
    }
  
$phone =  implode (", ", $phone);

