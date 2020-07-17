<?php
View::createNav('index');
class Dashboard
{
    function init()
    {
        global $db;
        include("template/index_header_entry.php");

        $sql = "SHOW TABLES";    
        $sql = $db->query($sql);

        foreach( $sql as $res )
        {
            $res = $res["Tables_in_versicherung"];
            $link = $res;

            //für jede Tabelle den Link zur der dazugehörigen Seite ausgeben
            switch($link){
                case'mitarbeiter': $link = '?r=employees/view'; break;
                case'rezension': $link = '?r=review'; break;
            }

            // zählt die Einträge der Tabelle
            $sql = "SELECT COUNT(*) FROM {$res}";
            $count = $db->query($sql);
            $count = $count[0]["COUNT(*)"];
            include("template/index_entry.php");
        }
    }
}