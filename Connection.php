<?php
    //$conn = mysqli_connect('localhost', 'root', '', 'ananas_shop')
      //  or die("Cannot connect database".mysqli_connect_error());
    $conn = pg_connect("postgres://bdzkbmcxkclqal:c259a5bbf2b12cecb8f26cb4e254c90bcecc913df87f4bdde5867e900751770c@ec2-44-193-182-0.compute-1.amazonaws.com:5432/d7473d30qr8ms")
      or die ("can not connect database".pg_connect_error());
?>

