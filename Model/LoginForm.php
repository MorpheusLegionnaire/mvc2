<?php

class LoginForm
{
    public $email;
    public $password;

    public function __construct(Request $request)
    {
        $this->email = $request->post('email');
        $this->username = $request->post('password');
    }

    public function isValid()
    {
        return $this->password != '' && $this->email != '';
    }
}