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
        $msg = $request->get('flash_msg'); // $_GET['username']

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

                Router::redirect('/index.php?route=index/contact&flash_msg=Message sent');
            }

            $msg = 'Invalid';
        }

        $args = array(
            'form' => $form,
            'msg' => $msg
        );

        return $this->render('contact', $args);
    }

}