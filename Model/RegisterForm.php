<?php

/**
 * Created by PhpStorm.
 * User: PHP-Academy
 * Date: 26.07.2016
 * Time: 20:32
 */
class RegisterForm
{
    public $email;
    public $password;
    public $passwordRepeat;

    public function __construct(Request $request)
    {
        $this->email = $request->post('email');
        $this->password = $request->post('password');
        $this->passwordRepeat = $request->post('password_repeat');
    }

    public function isValid()
    {
        return $this->password != '' && $this->email != ''&& $this->password == $this->passwordRepeat;
    }
}