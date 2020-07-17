<?php 
View::createNav('employees');
class Employees
{
    function init(){}
    
    function View()
    {
        global $db;

        $search = isset($_REQUEST["search"])?$_REQUEST["search"]:false;

        $sql = "SELECT m.*,a.Bezeichnung as Abteilung FROM mitarbeiter m LEFT JOIN abteilung a ON a.ID=m.Abteilung_ID";    
        $sql = $db->query($sql);

        include 'template/employee_header_entry.php';

        foreach( $sql as $res )
        {
            if( $search && stripos(json_encode(array_values($res)),$search) === false )
                continue;
            $employee = $res;
            include("template/employee_entry.php");
        }
    }
    
    function Add()
    {
        global $db;

        if( isset($_POST['action']) && $_POST['action'] == 'insert' )
        {
            $sql = "SELECT MAX(ID) AS max_id FROM mitarbeiter ";
            $max_id = $db->query($sql, []);
            $max_id = $max_id[0]['max_id'] +1;    

            $_POST['E_Mail'] = $_POST['E-Mail'];
            unset($_POST['E-Mail']);
            $sql = "INSERT INTO mitarbeiter 
                    (ID, Personalnummer, Name, Vorname, `E-Mail`, Geburtsdatum, Telefon, Mobil, Raum, Ist_Leiter, Abteilung_ID)
                    VALUES({$max_id}, :Personalnummer, :Name, :Vorname, :E_Mail, :Geburtsdatum, :Telefon, :Mobil, :Raum, :Ist_Leiter, :Abteilung_ID)";
            $db->execute($sql,$_POST);
             header("Location: employees.php");
        }else{

            //ging nicht
            $employee = $_POST;
        }
        $sql = "SELECT * FROM abteilung ORDER BY Bezeichnung";
        $sql = $db->query($sql);

        $abteilungen = [];
        foreach( $sql as $res )
        {
            $abteilungen[$res['ID']] = $res['Bezeichnung'];
        }
        include("template/add_employee_entry.php");
    }
    
    function Edit()
    {
        global $db;
        $id = $_REQUEST["ID"];

        if( isset($id)&& $id !=='' )
        {
            $sql = "select * from mitarbeiter where ID = {$id}";
            $sql = $db->query($sql);

            foreach( $sql as $res )
            {
                $employee = $res;
            }
        }else{
            echo "Dieser Mitarbeiter Existiert nicht: ";
            var_dump($id);
        }

        $sql = "SELECT * FROM abteilung ORDER BY Bezeichnung";
        $sql = $db->query($sql);

        $abteilungen = [];
        foreach( $sql as $res )
        {
            $abteilungen[$res['ID']] = $res['Bezeichnung'];
        }
        include("template/edit_employee_entry.php");
    }
    
    function Save()
    {
        global $db;
        if( isset($_POST["save"]) )
        {
            $_POST['E_Mail'] = $_POST['E-Mail'];
            unset($_POST['E-Mail']);
            $sql = "UPDATE mitarbeiter SET 
                    Personalnummer=:Personalnummer, 
                    Name=:Name,
                    Vorname=:Vorname,
                    `E-Mail`=:E_Mail,
                    Geburtsdatum=:Geburtsdatum,
                    Telefon=:Telefon,
                    Mobil=:Mobil,
                    Raum=:Raum,
                    Ist_Leiter=:Ist_Leiter,
                    Abteilung_ID=:Abteilung_ID
                    WHERE ID=:ID";

            $db->execute($sql,$_POST);
            header("Location: ?r=employees/view");
        }else{
            header("Location: ?r=employees/view");
        }
        if( isset($_POST["delete"]) )
        {
            if( isset($_POST["realy_delete"]) ) 
            {
                $sql = "DELETE FROM mitarbeiter WHERE ID =:ID";
                $db->execute($sql, $_POST);
                header("Location: ?r=Employees/View");
            }
            else
            {
                header("Location: ?r=employees/edit&ID=".$_POST['ID']);
            }
        }else{
            header("Location: ?r=employees/view");
        }

    }
}