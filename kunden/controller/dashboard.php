<?php
class Dashboard
{
    function Init()
    {
        View::createNav('dashboard');
        View::loadView("dashboard_header_entry");
        
        global $db;
        
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
        include("template/dashboard_entry.php");
    }
    
    function View()
    {
        View::createNav('dashboard');
        global $db;
        include("template/view_review_header_entry.php");
        $id = $_GET['id'];
        
        $sql = "select * from rezension where id = {$id}";
        $sql = $db->query($sql);
        
        
        foreach( $sql as $res )
            $view_customer[] = $res;   
        
        include("template/view_review_entry.php");
    }
}