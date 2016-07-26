<?php

/**
 * Created by PhpStorm.
 * User: PHP acedemy
 * Date: 07.07.2016
 * Time: 19:10
 */
class IndexController extends Controller
{
    public function indexAction(Request $request)
    {

        return $this->render('index');
    }

    public function contactAction(Request $request)
    {
        $form = new Form($request);
        //$msg = $request->get('flash_msg'); // $_GET['username']

        if ($request->isPost()) {
            if ($form->isValid()) {
                $model = new FeedbackModel();
                $datetime = new DateTime();

                $model->save(array(
                    'username' => $form->username,
                    'email' => $form->email,
                    'message' => $form->message,
                    'created' => $datetime->format('Y-m-d H:i:s')
                ));

                Session::setFlash('Message sent');
                Router::redirect('/index.php?route=index/contact');
            }

            Session::setFlash('Fill the fields');
        }

        $args = array(
            'form' => $form,
        );

        return $this->render('contact', $args);
    }

    public function userAction(Request $request)
    {
        if (!Session::has('user')) {
            Router::redirect('/');
        }

        //
        //
    }

}