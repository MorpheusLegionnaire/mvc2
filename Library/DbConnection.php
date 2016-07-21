<?php

// Singleton

/**
 * Class DbConnection
 */
class DbConnection
{
    private static $instance = null;

    /**
     * @var PDO
     */
    private $pdo;

    private function __construct()
    {
        $dsn = 'mysql: host=localhost; dbname=mvc';
        $this->pdo = new PDO($dsn, 'root');
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }


    private function __clone(){}
    private function __wakeup(){}


    public static function getInstance()
    {
        if (is_null(self::$instance)) {
            self::$instance = new DbConnection();
        }

        return self::$instance;
    }

    /**
     * @return PDO
     */
    public function getPdo()
    {
        return $this->pdo;
    }



}