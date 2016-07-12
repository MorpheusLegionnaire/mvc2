<?php

class SecurityController extends Controller
{
    public function loginAction(Request $request)
    {
        $form = new LoginForm($request);
        $msg = null;

        if ($request->isPost()) {
            if ($form->isValid()) {
                // todo: auth
            } else {
                $msg = 'Invalid';
            }
        }
        // todo: написать такую же функцию :)
        $args = compact('form', 'msg');

//        $args = array(
//            'form' => $form,
//            'msg' => $msg
//        );

        return $this->render('login', $args);
    }

//    public function logoutAction(Request $request)
//    {
//
//    }
//
//    public function registerAction(Request $request)
//    {
//
//    }
}