<?php

class View
{
    public static function loadView($name)
    {
        if( !file_exists(__DIR__.'/template/'.$name.'.php') )
                throw new Exception("Template not found: $name ".getcwd());
        include(__DIR__.'/template/'.$name.'.php');
    }
    
    public static function createNav($name)
    {
        ?>
        <ul class="nav">
            <li><a href="?r=dashboard" <?=($name=='dashboard'?' class="akt"':'')?>>Dashboard</a></li>
            <li><a href="?r=review" <?=($name=='rezension'?' class="akt"':'')?>>Rezension</a></li>
            <li><a href="../index.php">Logout</a></li>
        </ul>
        <?php
    }
}