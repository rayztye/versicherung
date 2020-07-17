<?php

class View
{
    public static function loadView($name)
    {
        include('template/'.$name.'.php');
    }
    
    public static function createNav($name)
    {
        ?>
        <ul class="nav">
            <li><a href='index.php'<?=($name=='index'?' class="akt"':'')?>>Startseite </a></li>
            <li><a href='?r=employees/view'<?=($name=='employees'?' class="akt"':'')?>>Mitarbeiter </a></li>
            <li><a href='?r=review'<?=($name=='review'?' class="akt"':'')?>>Rezensionen </a></li>
            <li><a href="../index.php">Logout</a></li>
            <li>
                <?php if( $name=='employees' ): ?>
                <div class="search-container">
                    <form action="">
                      <input type="hidden" name="r" value="employees/view"/>
                      <input type="text" class="search" placeholder="Suche.." name="search" value="<?=isset($_REQUEST["search"])?$_REQUEST["search"]:''?>"/>
                      <button type="submit" class="search-button"><i class="fa fa-search"></i></button>
                    </form>
                </div>
                <?php endif ?>
            </li>
        </ul>
        <?php
    }
}