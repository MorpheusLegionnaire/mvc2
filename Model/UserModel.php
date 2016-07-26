<?php

/**
 * Created by PhpStorm.
 * User: PHP-Academy
 * Date: 26.07.2016
 * Time: 19:57
 */
class UserModel
{
    public function find($email, $password)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare("SELECT * FROM user WHERE email = :email AND password = :password");
        $sth->execute(array(
            'email' => $email,
            'password' => $password
        ));

        return $sth->fetch(PDO::FETCH_ASSOC);
    }

    public function save(array $user)
    {        
        // проверка чтобы ключи массива = столбцы в таблице: if (!isset($feedback['email']) || !isset($feedback['username']) || ....)  { throw new Exception ... }

        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare("INSERT INTO feedback VALUES (null, :email, :password)");
        $sth->execute($user);
    }

}