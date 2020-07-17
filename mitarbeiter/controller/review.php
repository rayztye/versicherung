<?php
View::createNav('review');
class Review
{
    function Init()
    {
        global $db;
        include("template/review_header_entry.php");
        
        $sql = "select * from rezension";
        $sql = $db->query($sql);
        
        $ucustomer = [];
        $unread = 0;
        $customer = [];
        $read = 0;
        
        foreach( $sql as $res )
        {
            if( $res['status'] == 0 )
            {
                $unread ++;
                $ucustomer[] = $res;
            }
            
            if( $res['status'] == 1 )
            {
                $read ++;
                $customer[] = $res;
            }
        }
        include("template/review_entry.php");
    }
    
    function View()
    {
        global $db;
        include("template/review_header_entry.php");
        $id = $_GET['id'];
        
        $sql = "select * from rezension where id = {$id}";
        $sql = $db->query($sql);
        
        foreach( $sql as $res )
        {
            $view_customer[] = $res;   

            if( $res["status"] == 0 )
            {
                $sql = "update rezension set status = 1 where id = {$id}";
                $sql = $db->query($sql);
            }
        }
        
        include("template/view_review_entry.php");
    }
}