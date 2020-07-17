<?php 
class connection
{
    protected $pdo;
    var $last_statement = false;
    
    public function __construct()
    {
        $this->pdo = new PDO('mysql:host=localhost;dbname=versicherung', 'root', '');
    }
    
    function query($sql)
    {
        $rs = $this->pdo->query($sql,PDO::FETCH_ASSOC);
        return $rs->fetchAll();
    }
    
    function execute($sql,$arguments)
    {
        $sth = $this->pdo->prepare($sql);
        
        $this->last_statement = $sql;
        foreach( $arguments as $name=>$value )
        {
            if(strpos($sql,":$name") === false )
                continue;
            $this->last_statement = str_replace(":$name","'$value'",$this->last_statement);
            $sth->bindValue(":{$name}",$value);
        }
        // DEBUG: view last sql query
//        var_dump($this->last_statement);
//        die();
        
        $sth->execute();
    }
}
