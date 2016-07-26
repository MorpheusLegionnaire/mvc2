<?php

class SecurityController extends Controller
{
    public function loginAction(Request $request)
    {
        $form = new LoginForm($request);

        if ($request->isPost()) {
            if ($form->isValid()) {
                $userModel = new UserModel();
                $password = new Password($form->password);

                if ($user = $userModel->find($form->email, $password)) {
                    Session::set('user', $user['email']);
                    Router::redirect('/');
                }

                Session::setFlash('User not found');
                Router::redirect('/index.php?route=security/login');
            }

            Session::setFlash('Invalid');
        }
        // todo: написать такую же функцию :)
        $args = compact('form');

//        $args = array(
//            'form' => $form,
//            'msg' => $msg
//        );

        return $this->render('login', $args);
    }

    public function logoutAction(Request $request)
    {
        Session::remove('user');
        Router::redirect('/');
    }

    public function registerAction(Request $request)
    {
        $form = new RegisterForm($request);


        return $this->render('register', array('form' => $form));
    }
}