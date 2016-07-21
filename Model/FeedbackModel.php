<?php

/**
 * Created by PhpStorm.
 * User: PHP-Academy
 * Date: 21.07.2016
 * Time: 21:06
 */
class FeedbackModel
{
    public function save(array $feedback)
    {
        // проверка чтобы ключи массива = столбцы в таблице

        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare("INSERT INTO feedback (null, :username, :email, :message, :created)");
        $sth->execute($feedback);
    }

}