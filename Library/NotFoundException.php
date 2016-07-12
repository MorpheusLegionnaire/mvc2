<?php

/**
 * Created by PhpStorm.
 * User: PHP-Academy
 * Date: 12.07.2016
 * Time: 20:22
 */
class NotFoundException extends Exception
{
    public function __construct($message)
    {
        parent::__construct($message, 404);
    }
}