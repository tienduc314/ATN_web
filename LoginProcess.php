<?php
    if(isset($_POST['btnlogin']))
    {
        $us= $_POST['txtusername'];
        $pa= $_POST['txtpass'];

        echo "You are loged in with $us and Password $pa";
    }
?>