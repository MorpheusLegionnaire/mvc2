<?php

/**
 * Created by PhpStorm.
 * User: PHP acedemy
 * Date: 07.07.2016
 * Time: 20:46
 */
class BookModel
{
    public function findAll()
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query('SELECT * FROM book');
        $sth->execute();
        $books = $sth->fetchAll(PDO::FETCH_ASSOC);

        if (!$books) {
            throw new NotFoundException('No books found :(');
        }

        return $books;
    }

    public function find($id)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare("SELECT * FROM book WHERE id = :book_id");
        $sth->execute(array(
            'book_id' => $id
        ));

        $book = $sth->fetch(PDO::FETCH_ASSOC);
        
        if (!$book) {
            throw new NotFoundException("Book #{$id} not found", 404);
        }
        
        return $book;
        
        
    }

}