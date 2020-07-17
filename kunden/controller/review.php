<?php
class Review
{
    function Init()
    {
        View::createNav('rezension');
        View::loadView("review_header_entry");
        View::loadView("review_entry");
    }
    
    function Save()
    {
        global $db;
        if( isset($_POST) && $_POST != '' )
        {
            //$_POST = htmlspecialchars($_POST);
            //$_POST = trim($_POST);
            //$_POST = stripslashes($_POST);
            
            $sql = "INSERT INTO rezension "
                    . "(name, kommentar, webseite, email, status)"
                    . "VALUES (:user, :commet, :web, :mail, 0)";
                    $db->execute($sql, $_POST);

            View::createNav('rezension');
            View::loadView("review_save_entry");

        }else{
            header("Location: review.php");
        }

    }
}